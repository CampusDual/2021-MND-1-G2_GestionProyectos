import { ChangeDetectorRef, Component, OnInit, ViewEncapsulation } from '@angular/core';
import { OntimizeService } from 'ontimize-web-ngx';

@Component({
  selector: 'app-projects-card',
  templateUrl: './projects-card.component.html',
  styleUrls: ['./projects-card.component.css'],
  encapsulation: ViewEncapsulation.None,
  host: {
    '[class.home-card]': 'true'
  }
})
export class ProjectsCardComponent implements OnInit {
  public projectAmount: number;

  constructor(
    private ontimizeService: OntimizeService,
    private cd: ChangeDetectorRef,
  ) {
    this.ontimizeService.configureService(this.ontimizeService.getDefaultServiceConfiguration('projects'));
    this.ontimizeService.query(undefined, ['project_id'], 'projects').subscribe(
      res => {
        if (res.data && res.data.length) {
          this.projectAmount = res.data.length;
        }else{
          this.projectAmount = undefined;
        }

        },
        err => console.log(err),
        () => this.cd.detectChanges()
      );
  }

  ngOnInit() {
  }

}
