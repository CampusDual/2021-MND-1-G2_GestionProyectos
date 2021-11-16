package es.cd.dsnd.to.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import es.cd.dsnd.to.api.core.service.ITemplateOrganization;
import com.ontimize.jee.server.rest.ORestController;

@RestController
@RequestMapping("/master")
@ComponentScan(basePackageClasses = { es.cd.dsnd.to.api.core.service.ITemplateOrganization.class })
public class TemplateOrganizationRestController extends ORestController<ITemplateOrganization> {

	@Autowired
	private ITemplateOrganization TemplateOrganization;

	@Override

	public ITemplateOrganization getService() {
		return this.TemplateOrganization;
	}

}
