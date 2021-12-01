import { MenuRootItem } from 'ontimize-web-ngx';

export const MENU_CONFIG: MenuRootItem[] = [
  { id: 'home', name: 'HOME', icon: 'home', route: '/main/home' },
  { id: 'employees', name: 'Employees', icon: 'people', route: '/main/employees' },
  { id: 'projects', name: 'Projects', icon: 'tab', route: '/main/projects' },
  { id: 'logout', name: 'LOGOUT', route: '/login', icon: 'power_settings_new', confirm: 'yes' }
];
