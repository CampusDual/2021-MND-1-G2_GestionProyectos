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

import es.cd.dsnd.to.api.core.service.IEmployeesService;
import es.cd.dsnd.to.model.core.dao.EPDao;
import es.cd.dsnd.to.model.core.dao.EmployeeDao;
import es.cd.dsnd.to.model.core.dao.ProjectDao;

@Service("EmployeesService")
@Lazy
public class EmployeesService implements IEmployeesService {
	

	@Autowired
	private EmployeeDao employeeDao;
	@Autowired
	private ProjectDao projectDao;
	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	@Override
	public EntityResult employeeQuery(Map<String, Object> keyMap, List<String> attrList)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.employeeDao, keyMap, attrList);
	}

	@Override
	public EntityResult employeeInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.employeeDao, attrMap);
	}

	@Override
	public EntityResult employeeUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
			throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.employeeDao, attrMap, keyMap);
	}

	@Override
	public EntityResult employeeDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		
		return this.daoHelper.delete(this.employeeDao, keyMap);
	}

	}


