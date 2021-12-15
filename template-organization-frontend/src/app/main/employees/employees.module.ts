import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmployeesRoutingModule } from './employees-routing.module';
import { EmployeesHomeComponent } from './employees-home/employees-home.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { EmployeesDetailComponent } from './employees-detail/employees-detail.component';
import { EmployeesNewComponent } from './employees-new/employees-new.component';


@NgModule({
  declarations: [EmployeesHomeComponent, EmployeesDetailComponent, EmployeesNewComponent],
  imports: [
    CommonModule,
    OntimizeWebModule,
    EmployeesRoutingModule
  ]
})
export class EmployeesModule { }
