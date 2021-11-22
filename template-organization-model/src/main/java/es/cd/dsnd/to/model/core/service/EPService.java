package es.cd.dsnd.to.model.core.service;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

import es.cd.dsnd.to.api.core.service.IEPService;

import es.cd.dsnd.to.model.core.dao.EPDao;

	@Service("EPService")
	@Lazy
	public class EPService implements IEPService{

		@Autowired
		private EPDao EPDao;
		@Autowired
		private DefaultOntimizeDaoHelper daoHelper;

		@Override
		public EntityResult employee_projectQuery(Map<String, Object> keyMap, List<String> attrList)
				throws OntimizeJEERuntimeException {
			return this.daoHelper.query(this.EPDao, keyMap, attrList);
		}

		@Override
		public EntityResult employee_projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
			return this.daoHelper.insert(this.EPDao, attrMap);
		}

		@Override
		public EntityResult employee_projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
				throws OntimizeJEERuntimeException {
			return this.daoHelper.update(this.EPDao, attrMap, keyMap);
		}

		@Override
		public EntityResult employee_projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
			return this.daoHelper.delete(this.EPDao, keyMap);
		}

	}


