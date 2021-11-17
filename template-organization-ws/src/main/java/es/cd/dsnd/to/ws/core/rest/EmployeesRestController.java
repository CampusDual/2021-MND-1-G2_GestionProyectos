package es.cd.dsnd.to.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import es.cd.dsnd.to.api.core.service.IEmployeesService;
import com.ontimize.jee.server.rest.ORestController;

@RestController
@RequestMapping("/employees")
public class EmployeesRestController extends ORestController<IEmployeesService> {

	@Autowired
	private IEmployeesService TemplateOrganization;

	@Override

	public IEmployeesService getService() {
		return this.TemplateOrganization;
	}

}
