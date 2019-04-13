import { Injectable } from '@angular/core';

import { AngularFireAuth } from 'angularfire2/auth';
import { auth } from 'firebase/app';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private user: any;
  loged: boolean;

  constructor(public afAuth: AngularFireAuth) { 
    this.loged = false;
  }

  login(){
    if(this.loged) return;
    
    this.afAuth.auth
    .signInWithPopup(new auth.GoogleAuthProvider())
    .then( (data) => {
      console.log(data);
      this.user = data;
      this.loged = true;
    })
    .catch((error)=>{
      console.log(typeof(error));
      alert("Ha habido un error al intentar logguearse");
      this.loged = false;
    });
  }

  logoff(){
    this.user = null;
    this.loged = false;
  }

  isLoggedIn(): boolean{
    return this.loged;
  }
}
