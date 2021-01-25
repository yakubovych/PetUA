import { Component } from "@angular/core";
import { Defect } from 'src/app/models/defect';
import { DefectService } from 'src/app/services/defect.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
    templateUrl: './defect-edit.component.html'
})

export class DefectEditComponent {
    public defect: Defect = new Defect();
    private defectId: number;

    constructor(private service: DefectService, private router: Router, private activateRoute: ActivatedRoute) {
        this.defectId = activateRoute.snapshot.params["id"];
        this.service.getDefectById(this.defectId).subscribe((result: Defect) => {
            this.defect = result;
        });
    }

    save(defect: Defect){
        console.log(defect);
        this.service.updateDefect(this.defectId, defect).subscribe(resp => {
            this.router.navigate(['/defects']);
        });
    }

    cancel(){
        this.router.navigate(['/defects']);
    }
}