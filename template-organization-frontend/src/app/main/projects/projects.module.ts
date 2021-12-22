import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ProjectsRoutingModule } from './projects-routing.module';
import { ProjectsHomeComponent } from './projects-home/projects-home.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { ProjectsDetailComponent } from './projects-detail/projects-detail.component';
import { ProjectsNewComponent } from './projects-new/projects-new.component';
import { ProjectDateRendererComponent } from './project-date-renderer/project-date-renderer.component';


@NgModule({
  declarations: [ProjectsHomeComponent, ProjectsDetailComponent, ProjectsNewComponent, ProjectDateRendererComponent],
  imports: [
    CommonModule,
    OntimizeWebModule,
    ProjectsRoutingModule
  ]
})
export class ProjectsModule { }
