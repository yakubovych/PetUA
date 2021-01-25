import { Component } from "@angular/core";
import { Defect } from 'src/app/models/defect';
import { Router } from '@angular/router';
import { DefectService } from 'src/app/services/defect.service';

@Component({
    templateUrl: './defect-add.component.html'
})

export class DefectAddComponent {
    public defect: Defect = new Defect();
    public defects: Defect[];

    constructor(private router: Router, private service: DefectService) {
        this.service.getDefects().toPromise().then((result: Defect[]) => {
            this.defects = result;
        });
    }

    save(defect: Defect) {
        console.log(defect);
        this.service.createDefect(defect).subscribe((response: Defect) => {
            this.defect = response;
            this.router.navigate(['/defects']);
        });
    }

    cancel() {
        this.router.navigate(['/defects']);
    }
}