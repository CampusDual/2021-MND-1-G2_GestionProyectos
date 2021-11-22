package es.cd.dsnd.to.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import es.cd.dsnd.to.api.core.service.IEPService;
import com.ontimize.jee.server.rest.ORestController;

@RestController
@RequestMapping("/employee_project")
public class EPRestController extends ORestController<IEPService> {

	@Autowired
	private IEPService TemplateOrganization;

	@Override

	public IEPService getService() {
		return this.TemplateOrganization;
	}

}
