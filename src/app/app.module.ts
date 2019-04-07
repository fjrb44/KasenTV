import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './shared/header/header.component';
import { FooterComponent } from './shared/footer/footer.component';
import { HomeComponent } from './pages/home/home.component';
import { NotFoundComponent } from './pages/not-found/not-found.component';
import { LoginService } from './services/login.service';

/* FireBase */
import { AngularFireModule } from 'angularfire2';
import { AngularFireDatabaseModule } from 'angularfire2/database';
import { AngularFireAuthModule } from 'angularfire2/auth';

/* Firebase configuration */
export const firebaseConfig = {
  apiKey: "AIzaSyAIXRgIBq_K5i9QMiLlSDgYB5ipCUOrzAk",
  authDomain: "login-d8f84.firebaseapp.com",
  databaseURL: "https://login-d8f84.firebaseio.com",
  storageBucket: "login-d8f84.appspot.com",
  messagingSenderId: "812570641498"
};

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    HomeComponent,
    NotFoundComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    AngularFireModule.initializeApp(firebaseConfig),
    AngularFireDatabaseModule,
    AngularFireAuthModule
  ],
  providers: [LoginService],
  bootstrap: [AppComponent]
})
export class AppModule { }
