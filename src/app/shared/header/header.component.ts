import { Component, OnInit } from '@angular/core';
import { LoginService } from '../../services/login.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  constructor(private loginService: LoginService) { }

  ngOnInit() {
  }

  login(){
    this.loginService.login();
  }

  logoff(){
    this.loginService.logoff();
  }

  isLogged(){
    return this.loginService.isLoggedIn();
  }
  console(){
    console.log(this.loginService.isLoggedIn());
  }
}
