/**
 * 
 */
package org.idempiere.test.model;

import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import java.util.List;
import java.util.Set;

import org.adempiere.base.IModelFactory;
import org.adempiere.base.IServiceReferenceHolder;
import org.adempiere.base.Service;
import org.adempiere.model.GenericPO;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempiere.test.AbstractTestCase;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider;
import org.springframework.core.type.filter.AssignableTypeFilter;

/**
 * @author hengsin
 *
 */
public class ModelClassMappingTest extends AbstractTestCase {

	//copy from DefaultModelFactory
	/**	Packages for Model Classes	*/
	private static final String[]	s_packages = new String[] {
		"org.compiere.model", "org.compiere.wf",
		"org.compiere.print", "org.compiere.impexp",
		"compiere.model",			//	globalqss allow compatibility with other plugins
		"adempiere.model",			//	Extensions
		"org.adempiere.model"
	};

	
	/**
	 * 
	 */
	public ModelClassMappingTest() {
	}

	@Test
	public void testModelClassMappingForCoreTables() {
		Query query = new Query(Env.getCtx(), MTable.Table_Name, "IsView='N' AND EntityType IN ('D','EE01','EE02','EE04','EE05') "
				+ "AND TableName NOT Like 'I\\_%' AND TableName NOT Like 'T\\_%' AND TableName NOT Like 'W\\_%'"
				+ "AND TableName NOT Like '%\\_Trl'", getTrxName());
		List<IServiceReferenceHolder<IModelFactory>> references = Service.locator().list(IModelFactory.class).getServiceReferences();
		List<MTable> tables = query.setOnlyActiveRecords(true).setOrderBy("TableName").list();
		for(MTable table : tables) {
			Class<?> clazz = null;
			for(IServiceReferenceHolder<IModelFactory> reference : references) {
				IModelFactory service = reference.getService();
				if (service != null) {
					clazz = service.getClass(table.getTableName());
					if (clazz != null) {
						break;
					}
				}
			}
			assertNotNull(clazz, "No model class found for TableName="+table.getTableName());
			assertNotEquals(clazz.getSimpleName(), GenericPO.class.getSimpleName(), "GenericPO class is use for TableName="+table.getTableName());
			
			ClassPathScanningCandidateComponentProvider provider = new ClassPathScanningCandidateComponentProvider(false);		
			if (clazz.getSimpleName().startsWith("X_")) {
				provider.addIncludeFilter(new AssignableTypeFilter(clazz));
				for(String p : s_packages) {
					Set<BeanDefinition> beans = provider.findCandidateComponents(p);
					if (beans != null && beans.size() > 0) {
						for (BeanDefinition bean : beans) {
							if (!bean.getBeanClassName().equals(clazz.getName()))
								fail("Using " + clazz.getName() + " for table " + table.getTableName() + " instead of " + bean.getBeanClassName());
						}
					}
				}
			}
			
			//uncomment to see all mappings at console
			//System.out.println(table.getTableName()+"="+clazz.getName());
		}
	}
}
