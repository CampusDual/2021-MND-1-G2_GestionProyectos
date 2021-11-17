package es.cd.dsnd.to.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ontimize.jee.server.rest.ORestController;
import es.cd.dsnd.to.api.core.service.IProjectService;

@RestController
@RequestMapping("/projects")
public class ProjectsRestController extends ORestController<IProjectService> {

	@Autowired
	private IProjectService TemplateOrganization;

	@Override

	public IProjectService getService() {
		return this.TemplateOrganization;
	}

}
