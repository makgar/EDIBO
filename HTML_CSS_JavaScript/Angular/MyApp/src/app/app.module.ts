import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

// added manually
import { MatSliderModule } from '@angular/material/slider';
import { MatIconModule } from '@angular/material/icon';
import { MatDividerModule } from '@angular/material/divider';
import { MatButtonModule } from '@angular/material/button';
import { MatTabsModule } from '@angular/material/tabs';
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';

import { SomeService } from './TableRND/some.service';

import { ButtonOverviewExample } from './Buttons/button-overview-example';
import { TableBasicExample } from './Table/table-basic-example';
import { TablePaginationExample } from './TableRND/table-pagination-example';

@NgModule({
  declarations: [
    AppComponent,
    ButtonOverviewExample,
    TableBasicExample,
    TablePaginationExample
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatSliderModule,
    MatIconModule,
    MatDividerModule,
    MatButtonModule,
    MatTabsModule,
    MatTableModule,
    MatPaginatorModule
  ],
  
  providers: [
    SomeService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
