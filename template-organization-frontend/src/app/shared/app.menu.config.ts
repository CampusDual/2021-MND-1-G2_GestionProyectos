import { MenuRootItem } from 'ontimize-web-ngx';
import { EmployeeCardComponent } from './employees-card/employees-card.component';
import { ProjectsCardComponent } from './projects-card/projects-card.component';

export const MENU_CONFIG: MenuRootItem[] = [
  { id: 'home', name: 'HOME', icon: 'home', route: '/main/home' },
  {
    id: 'modules', name: 'MODULES', icon: 'remove_red_eye', opened: true,
    items: [
  { id: 'employees', name: 'Employees', icon: 'people', route: '/main/employees' },
  { id: 'projects', name: 'Projects', icon: 'tab', route: '/main/projects' }
  ]
},
{ id: 'logout', name: 'LOGOUT', route: '/login', icon: 'power_settings_new', confirm: 'yes' }
]

export const MENU_COMPONENTS = [
  EmployeeCardComponent,
ProjectsCardComponent
];
