package es.cd.dsnd.to.model.core.dao;


	import org.springframework.context.annotation.Lazy;
	import org.springframework.stereotype.Repository;

	import com.ontimize.jee.server.dao.common.ConfigurationFile;
	import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

	@Repository("ProjectDao")
	@Lazy
	@ConfigurationFile(configurationFile = "dao/ProjectDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
	public class ProjectDao  extends OntimizeJdbcDaoSupport {

	 public static final String project_id="project_id";
	 public static final String project_name = "project_name";
	 public static final String description = "description";

}
