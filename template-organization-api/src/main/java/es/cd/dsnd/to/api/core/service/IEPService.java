package es.cd.dsnd.to.api.core.service;

import java.util.List;
import java.util.Map;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

public interface IEPService {
	
	
	public EntityResult employee_projectQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
	 public EntityResult employee_projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
	 public EntityResult employee_projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
	 public EntityResult employee_projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

		
		

	}



