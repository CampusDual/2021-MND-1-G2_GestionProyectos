package es.cd.dsnd.to.api.core.service;

import java.util.List;
import java.util.Map;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

public interface IProjectService {

	// PROJECTS
	
	public EntityResult projectQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException;

	public EntityResult projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;

	public EntityResult projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException;

	public EntityResult projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

	// INFO_PROJECTS
	
	public EntityResult info_projectsQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException;

	public EntityResult info_projectsInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;

	public EntityResult info_projectsUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException;

	public EntityResult info_projectsDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

	// EMPLOYEE_PROJECTS
	
	public EntityResult employee_projectQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException;

	public EntityResult employee_projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;

	public EntityResult employee_projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException;

	public EntityResult employee_projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}
