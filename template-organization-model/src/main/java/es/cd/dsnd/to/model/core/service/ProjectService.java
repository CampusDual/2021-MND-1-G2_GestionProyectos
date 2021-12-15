package es.cd.dsnd.to.model.core.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

import es.cd.dsnd.to.api.core.service.IProjectService;
import es.cd.dsnd.to.model.core.dao.EPDao;
import es.cd.dsnd.to.model.core.dao.ProjectDao;

@Service("ProjectService")
@Lazy
public class ProjectService implements IProjectService {

	//PROJECTS
	
	@Autowired
	private ProjectDao ProjectDao;
	@Autowired
	private EPDao EPDao;
	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	@Override
	public EntityResult projectQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.ProjectDao, keyMap, attrList);
	}

	@Override
	public EntityResult projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.ProjectDao, attrMap);
	}

	@Override
	public EntityResult projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.ProjectDao, attrMap, keyMap);
	}

	@Override
	public EntityResult projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.delete(this.ProjectDao, keyMap);
	}

	//INFO_PROJECTS (CONSULTA)
	
	@Override
	public EntityResult info_projectsQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.EPDao, keyMap, attrList);
	}

	@Override
	public EntityResult info_projectsInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.EPDao, attrMap);
	}

	@Override
	public EntityResult info_projectsUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.EPDao, attrMap, keyMap);
	}

	@Override
	public EntityResult info_projectsDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.delete(this.EPDao, keyMap);
	}
}