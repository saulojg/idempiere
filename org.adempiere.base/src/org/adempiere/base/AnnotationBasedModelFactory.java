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

import org.compiere.util.CLogger;
import org.osgi.framework.wiring.BundleWiring;
import org.osgi.service.component.ComponentContext;
import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;

import io.github.classgraph.AnnotationInfo;
import io.github.classgraph.ClassGraph;
import io.github.classgraph.ClassInfo;
import io.github.classgraph.ClassInfoList;
import io.github.classgraph.ScanResult;

/**
 * Translates table names into model classes having the {@link Model} annotation. Relies on
 * {@link DefaultModelFactory} for everything else.
 * This factory is designed to have a service rank higher than {@link DefaultModelFactory}, as class
 * discovery using SPI is preferred over reflection-based methods.
 * @author Saulo Gil
 * @author Heng Sin
 */
@Component(immediate = true, service = IModelFactory.class, property = {"service.ranking:Integer=0"})
public class AnnotationBasedModelFactory extends AbstractModelFactory implements IModelFactory
{

	private Map<String,Class<?>> classCache = new HashMap<>();

	private final static CLogger s_log = CLogger.getCLogger(AnnotationBasedModelFactory.class);

	protected String[] getPackages() {
		return new String[] 
		{
			"org.compiere.model", "org.compiere.wf", "org.compiere.print", "org.compiere.impexp",
        	"compiere.model", "adempiere.model", "org.adempiere.model"
        };
	}

	@Activate
	void activate(ComponentContext context) throws ClassNotFoundException
	{
		ClassLoader classLoader = context.getUsingBundle().adapt(BundleWiring.class).getClassLoader();

		long start = System.currentTimeMillis();

		try (ScanResult scanResult =
		        new ClassGraph()
		            .enableAnnotationInfo()
		            .overrideClassLoaders(classLoader)
		            .acceptClasses("*.X_*")
		            .acceptPackagesNonRecursive(getPackages())
		            .disableNestedJarScanning()
		            .disableModuleScanning()
		            .scan())
		{

		    for (ClassInfo classInfo : scanResult.getClassesWithAnnotation(Model.class))
		    {
		        String className = classInfo.getName();
		        AnnotationInfo annotationInfo = classInfo.getAnnotationInfo(Model.class);
		        String tableName = (String) annotationInfo.getParameterValues().getValue("table");
		        ClassInfoList subclasses = classInfo.getSubclasses().directOnly();
		        for(ClassInfo subclassInfo : subclasses)
		        {
		        	className = subclassInfo.getName();
		        	break;
		        }

		        classCache.put(tableName, classLoader.loadClass(className));
		    }
		}
		long end = System.currentTimeMillis();
		s_log.info(this.getClass().getSimpleName() + " loaded "+classCache.size() +" classes in "
				+((end-start)/1000f) + "s");
	}

	@Override
	public Class<?> getClass(String tableName) 
	{
		return classCache.get(tableName);
	}

}
