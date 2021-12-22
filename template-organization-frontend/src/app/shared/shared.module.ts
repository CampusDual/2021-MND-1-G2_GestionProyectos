import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { ProjectDateRendererComponent } from '../main/projects/project-date-renderer/project-date-renderer.component';

@NgModule({
  imports: [
    OntimizeWebModule
  ],
  declarations: [
  ],
  exports: [
    CommonModule,
  ]
})
export class SharedModule { }
