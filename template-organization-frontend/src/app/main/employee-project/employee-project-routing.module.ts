import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { EmployeeProjectHomeComponent } from './employee-project-home/employee-project-home.component';


const routes: Routes = [
  {
    path:'',
    component:EmployeeProjectHomeComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class EmployeeProjectRoutingModule { }
