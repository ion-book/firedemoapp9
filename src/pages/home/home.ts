import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { FCM } from '@ionic-native/fcm';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  token: String;

  constructor(public navCtrl: NavController, fcm: FCM) {
    fcm.subscribeToTopic('marketing');
    
    fcm.getToken().then(token=>{
      this.token=token;
      console.log(token);
    });
    
    fcm.onNotification().subscribe(data=>{
      if(data.wasTapped){
        console.log("Received in background");
      } else {
        console.log("Received in foreground");
      };
    });
    
    fcm.onTokenRefresh().subscribe(token=>{
      this.token=token;
      console.log(token);
    });
    
    fcm.unsubscribeFromTopic('marketing');
  }

  

}
