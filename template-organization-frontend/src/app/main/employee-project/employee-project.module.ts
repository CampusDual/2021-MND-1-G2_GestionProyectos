import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmployeeProjectRoutingModule } from './employee-project-routing.module';
import { EmployeeProjectHomeComponent } from './employee-project-home/employee-project-home.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';


@NgModule({
  declarations: [EmployeeProjectHomeComponent],
  imports: [
    CommonModule,
    OntimizeWebModule,
    EmployeeProjectRoutingModule
  ]
})
export class EmployeeProjectModule { }
