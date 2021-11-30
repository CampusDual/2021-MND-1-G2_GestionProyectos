import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmployeesRoutingModule } from './employees-routing.module';
import { EmployeesHomeComponent } from './employees-home/employees-home.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';


@NgModule({
  declarations: [EmployeesHomeComponent],
  imports: [
    CommonModule,
    OntimizeWebModule,
    EmployeesRoutingModule
  ]
})
export class EmployeesModule { }
