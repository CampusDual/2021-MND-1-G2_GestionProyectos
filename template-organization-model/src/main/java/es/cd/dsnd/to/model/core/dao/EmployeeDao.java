package es.cd.dsnd.to.model.core.dao;


import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("EmployeeDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/EmployeeDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class EmployeeDao extends OntimizeJdbcDaoSupport{

 public static final String employee_id = "employee_id";
 public static final String name_surname = "name_surname";
 public static final String email = "email";
 public static final String speciality = "speciality";
 public static final String function = "function";
 public static final String department = "department";
 
}