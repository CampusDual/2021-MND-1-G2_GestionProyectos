package es.cd.dsnd.to.model.core.service;

import java.util.ArrayList;

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
	private ProjectDao projectDao;
	@Autowired
	private EPDao epDao;
	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	@Override
	public EntityResult projectQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.projectDao, keyMap, attrList);
	}

	@Override
	public EntityResult projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.projectDao, attrMap);
	}

	@Override
	public EntityResult projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.projectDao, attrMap, keyMap);
	}

	@Override
	public EntityResult projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
	
		List<String> attrToQuery = new ArrayList<String>();
		attrToQuery.add(EPDao.ep_id);
		EntityResult info_projectsQuery = this.info_projectsQuery(keyMap, attrToQuery);
		
		if (info_projectsQuery.getCode() != EntityResult.OPERATION_WRONG && info_projectsQuery.calculateRecordNumber() > 0) {
			
			for (int i = 0 ; i< info_projectsQuery.calculateRecordNumber() ; i++) {
				@SuppressWarnings("unchecked")
				Map <String, Object> recordValues = info_projectsQuery.getRecordValues(i);
				this.info_projectsDelete(recordValues);
			}
			
		}
		
		return this.daoHelper.delete(this.projectDao, keyMap);
	}

	//INFO_PROJECTS (CONSULTA)
	
	@Override
	public EntityResult info_projectsQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.epDao, keyMap, attrList);
	}

	@Override
	public EntityResult info_projectsInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.epDao, attrMap);
	}

	@Override
	public EntityResult info_projectsUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.epDao, attrMap, keyMap);
	}

	@Override
	public EntityResult info_projectsDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.delete(this.epDao, keyMap);
	}
}