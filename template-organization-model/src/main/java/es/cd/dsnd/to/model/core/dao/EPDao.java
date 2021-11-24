package es.cd.dsnd.to.model.core.dao;


import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("EPDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/EPDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class EPDao extends OntimizeJdbcDaoSupport{

 public static final String employee_id = "employee_id";
 public static final String project_id = "project_id";
 public static final String ep_id= "ep_id";
 public static final String percentage="percentage";
 public static final String query_info_projects = "info_projects";
}