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
    this.loginService.login().then( (data) => {
      console.log(data);
      alert("Loggeado exitosamente!");
    }).catch((error)=>{
      console.log(error);
      alert("Loggeado mal");
    });
  }
}
