import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { MENU_COMPONENTS } from './app.menu.config';

@NgModule({
  imports: [
    OntimizeWebModule
  ],
  declarations: [
    ...MENU_COMPONENTS
  ],
  exports: [
    CommonModule,
    ...MENU_COMPONENTS
  ]
})
export class SharedModule { }
