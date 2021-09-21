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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.compiere.util.CCache;
import org.osgi.framework.Bundle;
import org.osgi.framework.wiring.BundleWiring;
import org.osgi.service.component.ComponentContext;
import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;

import io.github.classgraph.AnnotationInfo;
import io.github.classgraph.ClassGraph;
import io.github.classgraph.ClassInfo;
import io.github.classgraph.ScanResult;

/**
 * Translates table names into model classes having the {@link Model} annotation. Relies on
 * {@link DefaultModelFactory} for everything else.
 * This factory is designed to have a service rank higher than {@link DefaultModelFactory}, as class
 * discovery using SPI is preferred over reflection-based methods.
 * @author Saulo Gil
 */
@Component(immediate = true, service = IModelFactory.class, property = {"service.ranking:Integer=0"})
public class AnnotationBasedModelFactory extends AbstractModelFactory implements IModelFactory
{

	private Bundle usingBundle;

	private CCache<String,Class<?>> classCache = new CCache<String,Class<?>>(null, "ABMF", 100, 120, false, 2000);
	
	private HashMap<String, List<String>> map = new HashMap<>();

	@Activate
	void activate(ComponentContext context)
	{
		this.usingBundle = context.getUsingBundle();
	}

	@Override
	public Class<?> getClass(String tableName) 
	{
		synchronized (map) {
			if (map.isEmpty()) {
				// scan model annotations
				loadAnnotationsMapping();
				if (map.isEmpty())
					map.put("", null);
			}
		}
		
		// search first into cache
		Class<?> candidate = classCache.get(tableName);
		if (candidate != null)
		{
			// Object.class indicate no generated PO class for tableName
			if (candidate.equals(Object.class))
				return null;
			else
				return candidate;
		}
		
		BundleWiring wiring = usingBundle.adapt(BundleWiring.class);
		List<String> list = map.get(tableName);
		if (list != null) {
			for (String name : list) {
				Class<?> xClass;
				try {
					xClass = wiring.getClassLoader().loadClass(name);
				} catch (ClassNotFoundException e) {
					continue;
				}
				if (candidate == null)
					candidate = xClass;
				else if (!candidate.equals(xClass) && candidate.isAssignableFrom(xClass))
					candidate = xClass;
				else
					continue;
			}
		}

		//Object.class to indicate no PO class for tableName
		classCache.put(tableName, candidate == null ? Object.class : candidate);

		return candidate;
	}

	private void loadAnnotationsMapping() {
		long start = System.currentTimeMillis();
		BundleWiring wiring = usingBundle.adapt(BundleWiring.class);
		try (ScanResult scanResult =
		        new ClassGraph()
		            .enableAnnotationInfo()
		            .overrideClassLoaders(wiring.getClassLoader())
		            .acceptClasses("*.X_*","*.M*")
		            .rejectPackages("org.apache.ecs", "org.idempiere.test","org.adempiere.webui","org.idempiere.ui.zk",
		            		"org.compiere.apps","org.idempiere.server","org.adempiere.server","org.compiere.web",
		            		"org.adempiere.pipo2", "org.adempiere.install", "org.compiere.install",
		            		"org.adempiere.eclipse.equinox","org.adempiere.base.process", "org.compiere.process","org.idempiere.process",
		            		"org.adempiere.apps", "org.adempiere.base.event","org.compiere.db","org.compiere.dbPort",
		            		"org.eevolution.process","com.akunagroup.uk.postcode", "org.adempiere.base.ds","org.adempiere.base.equinox",
		            		"org.adempiere.base.upload","org.adempiere.exceptions","org.adempiere.pdf","org.adempiere.print.export",
		            		"org.adempiere.process","org.adempiere.util","org.compiere.acct","org.compiere.print.layout",
		            		"org.compiere.print.util","org.compiere.sla","org.compiere.tools","org.compiere.util",
		            		"org.globalqss.process","org.idempiere.broadcast","org.idempiere.cache","org.idempiere.db.util",
		            		"org.idempiere.distributed","org.idempiere.exceptions","org.idempiere.expression.logic",
		            		"org.idempiere.fa.exceptions","org.idempiere.fa.feature","org.idempiere.fa.process",
		            		"org.idempiere.fa.util","org.idempiere.services.api","org.idempiere.mfa","org.idempiere.print",
		            		"org.idempiere.util","org.krysalis","web","metainfo","fi.jawsy")
		            .disableNestedJarScanning()
		            .disableModuleScanning()
		            .rejectJars("activemq-*.jar","antlr4-*.jar","ant-*.jar","ant.jar","aopalliance-*.jar","apache-*.jar",
		            		"asm-*.jar","avalon-*.jar","bc*-jdk*.jar","breeze.jar","bsh.jar","calendar.jar",
		            		"castor-*.jar","cdi-api-*.jar","closure-*.jar", "classgraph.jar","core-*.jar","commons-*.jar","cron4j.jar",
		            		"cryptacular-*.jar","cxf-*.jar","com.diffplug.osgi*.jar","com.jaspersoft.*.jar",
		            		"com.google.*.jar","dom4j-*.jar","failureaccess-*.jar","FastInfoset-*.jar","geronimo-*.jar",
		            		"gimap-*.jar","gmapsz.jar","gmbal-*.jar","gson-*.jar","google-*.jar","groovy-*.jar","grpc-context-*.jar",
		            		"hawtbuf-*.jar","hazelcast.jar","hazelcast-*.jar","hk2-*.jar","iceblue_c.jar","icu4j-*.jar","idempiere-xmlbeans.jar",
		            		"jakarta.*.jar","jasperreports-*.jar", "jackson-*.jar","javase-*.jar","javax.*.jar","jaxb-*.jar","jcommon-*.jar",
		            		"jersey-*.jar","jettison-*.jar", "jetty-*.jar","jfreechart-*.jar","jms_*.jar","joda-time-*.jar","jpayment.jar",
		            		"jsr305-*.jar","json-*.jar", "keikai-*.jar","management-api-*.jar","mimepull-*.jar","neethi-*.jar","olap4j.jar",
		            		"ooxml-*.jar", "openpdf-*.jar","opencensus-*.jar","org-netbeans*.jar","org-openide-*.jar",
		            		"org.atmosphere.*.jar","org.apache.*.jar","org.apiguardian_*.jar","org.eclipse.*.jar","osgi-*.jar",
		            		"org.hamcrest.*.jar","org.junit*.jar","org.krysalis.*.jar","org.opentest4j*.jar","org.sat4j.*.jar",
		            		"org.tukaani.*.jar","org.w3c.*.jar","passay-*.jar","payflow.jar","pfl-*.jar","poi-*.jar","resolver-*.jar",
		            		"slf4j-*.jar","SparseBitSet-*.jar","saaj-impl-*.jar","streambuffer-*.jar","spring-*.jar",
		            		"stax-*.jar","stax2-*.jar","super-csv-*.jar","taglibs-*.jar","timelinez.jar","timeplotz.jar","totp-*.jar","txw2-*.jar",
		            		"validation-api-*.jar","Verisign.jar","websocket-*.jar","woodstox-*.jar","wsdl4j-*.jar",
		            		"xmlbeans.jar","xmlbeans-*.jar","xmlgraphics-*.jar","xmlschema-*.jar","xmpcore.jar","xstream-*.jar","zjavassist_*.jar",
		            		"zpoi.jar","zsoup-*.jar")
//		            .verbose()
		            .scan()) {
		    for (ClassInfo classInfo : scanResult.getClassesWithAnnotation(Model.class)) {
		        AnnotationInfo annotationInfo = classInfo.getAnnotationInfo(Model.class);
		        String className = classInfo.getName();
		        String tableName = (String) annotationInfo.getParameterValues().getValue("table");
		        List<String> list = map.get(tableName);
		        if (list == null) {
		        	list = new ArrayList<>();
		        	map.put(tableName, list);
		        } else if (!list.isEmpty()) {
		        	String simpleName = className.substring(className.lastIndexOf(".")+1);
		        	if (simpleName.startsWith("M")) {
		        		simpleName = list.get(0).substring(list.get(0).lastIndexOf(".")+1);
		        		if (simpleName.startsWith("X")) {
		        			list.set(0, className);
		        			continue;
		        		}
		        	}
		        }
				list.add(className);
		    }
		}
		long end = System.currentTimeMillis();
		System.out.println("#Loaded="+map.size()+" Duration="+((end-start)/1000f));
	}
}
