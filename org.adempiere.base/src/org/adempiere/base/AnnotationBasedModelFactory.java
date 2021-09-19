/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempiere.base;

import java.util.HashMap;
import java.util.Map;

import org.atteo.classindex.ClassIndex;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.osgi.framework.wiring.BundleWiring;
import org.osgi.service.component.ComponentContext;
import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;

/**
 * Translates table names into model classes having the {@link Model} annotation. Relies on
 * {@link DefaultModelFactory} for everything else.
 * This factory is designed to have a service rank higher than {@link DefaultModelFactory}, as class
 * discovery using SPI is preferred over reflection-based methods.
 * @author Saulo Gil
 */
@Component(immediate = true, service = IModelFactory.class, property = {"service.ranking:Integer=1"})
public class AnnotationBasedModelFactory extends AbstractModelFactory implements IModelFactory
{

	private Map<String,Class<?>> classCache = new HashMap<>();

	private final static CLogger s_log = CLogger.getCLogger(AnnotationBasedModelFactory.class);

	@Activate
	void activate(ComponentContext context)
	{
		ClassLoader classLoader = context.getUsingBundle().adapt(BundleWiring.class).getClassLoader();

		// scan model annotations
		for(Class<?> clazz : ClassIndex.getAnnotated(Model.class, classLoader))
		{
			// determine table name
			String tableName = null;
			Model annotation = clazz.getAnnotation(Model.class);

			if(annotation.table().isEmpty())
				tableName = findTableName(clazz);
			else
				tableName = annotation.table();

			if(tableName==null)
				throw new RuntimeException("cannot determine table name for " + clazz);

			// attempt to find the lowest class on the class hierarchy
			Class<?> bottomClass = findBottomSubclass(clazz, classLoader);

			if(!annotation.table().isEmpty() && bottomClass.equals(clazz))
				s_log.finest("no subclasses found for " + clazz);

			Class<?> existing = classCache.get(tableName);

			if(existing==null || (!bottomClass.equals(existing) && bottomClass.isAssignableFrom(existing)))
				classCache.put(tableName, bottomClass);
		}
	}

	@Override
	public Class<?> getClass(String tableName) 
	{
		return classCache.get(tableName);
	}

	private String findTableName(Class<?> clazz) {
		String tableName = null;
		if(!Object.class.equals(clazz) && !PO.class.equals(clazz))
		{
			Model annotation = clazz.getAnnotation(Model.class);
			if(annotation!=null && !annotation.table().isEmpty())
				tableName = annotation.table();
			else
				tableName = findTableName(clazz.getSuperclass());
		}
		return tableName;
	}

	private Class<?> findBottomSubclass(Class<?> startingPoint, ClassLoader classLoader){
		Class<?> result = startingPoint;
		for(Class<?> clazz : ClassIndex.getSubclasses(result, classLoader))
		{
			if(!clazz.equals(result) && result.isAssignableFrom(clazz))
				// favoring candidates lower in the class hierarchy
				result = clazz;
		}
		return result;
	}

}
