import { Component } from '@angular/core';

export interface PeriodicElement {
    name: string;
    position: number;
    weight: number;
    symbol: string;
}

const ELEMENT_DATA: PeriodicElement[] = [
    { position: 1, name: 'Hydrogen', weight: 1.0079, symbol: 'H' },
    { position: 2, name: 'Helium', weight: 4.0026, symbol: 'He' },
    { position: 3, name: 'Lithium', weight: 6.941, symbol: 'Li' },
    { position: 4, name: 'Beryllium', weight: 9.0122, symbol: 'Be' },
    { position: 5, name: 'Boron', weight: 10.811, symbol: 'B' },
    { position: 6, name: 'Carbon', weight: 12.0107, symbol: 'C' },
    { position: 7, name: 'Nitrogen', weight: 14.0067, symbol: 'N' },
    { position: 8, name: 'Oxygen', weight: 15.9994, symbol: 'O' },
    { position: 9, name: 'Fluorine', weight: 18.9984, symbol: 'F' },
    { position: 10, name: 'Neon', weight: 20.1797, symbol: 'Ne' },
];

/**
 * @title Basic use of `<table mat-table>`
 */
@Component({
    selector: 'table-basic-example',
    styleUrls: ['table-basic-example.css'],
    templateUrl: 'table-basic-example.html',
})
export class TableBasicExample {
    displayedColumns: string[] = ['position', 'name', 'weight', 'symbol'];
    // dataSource = ELEMENT_DATA;
    dataSource = [];
    dataSourceHidden = [];
    OnFlag: boolean = false;
    buttonColor = "warn";
    buttonIcon = "home";

    // constructor(
    //     private OnOffFlag: boolean
    // ) {
    //     OnOffFlag = false;
    // }
    
    public handleButton1Click() {
        // console.log('Before: ' + this.dataSource);
        // this.dataSource == ELEMENT_DATA ? this.dataSource = [] : this.dataSource = ELEMENT_DATA;
        // same as
        // if (this.dataSource == ELEMENT_DATA) {
        //     this.dataSource = [];
        // }
        // else {
        //     this.dataSource = ELEMENT_DATA;
        // }

        if (this.OnFlag == false) {
            this.dataSource = ELEMENT_DATA;
            this.OnFlag = true;
            this.buttonColor = "accent";
            this.buttonIcon = "delete";
        }
        else {
            this.dataSource = [];
            this.OnFlag = false;
            this.buttonColor = "warn";
            this.buttonIcon = "home";
        }
        // console.log('After: ' + this.dataSource);
    }
}