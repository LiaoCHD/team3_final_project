class People01 extends People { // First Kind of People: Killer Route

People01(float x, float y){
        super(x,y);
        
  }
  
  
  void displayback(){
    
     if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people1, 0, 0);
      popMatrix();
      }else{
       image(people1,x,y);
      }
  
  
  }
  
  void display(){
      
      if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people1, 0, 0);
      popMatrix();
      }else{
       image(people1,x,y);
      }
}

  void checkCollision(){
    
     if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
      HIT = true;
    }
    
   if(isAlive == true){    
   if(HIT){
          interviewing = true;
          iconXposition = x-20;
          iconYposition = y-100;
          normalSpeed=0;
          countforinterview++;
          
          mc = loadImage("img/mcIdle.png");

       if(countforinterview>30){
         mc = loadImage("img/mcAsk.png");
         turnAround = true;
       }
       
       if(countforinterview>=60&&countforinterview<61){
       talk.trigger();
       }
         
       if(countforinterview>60){
         
         image(killer,iconXposition ,iconYposition);
         talkX=480;
         textAlign(CENTER);
      textSize(25);
      fill(255,180);
      noStroke();
      rectMode(CENTER);
     if (killerLV==0){
     rect(talkX,473,width,67);
      fill(30);
      text("應該只是附近這一帶的精神病而已吧！他們本來就常常在街上大叫",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==1){
      rect(talkX,473,width,67);
      fill(30);
      text("精神病？我知道附近有一個很愛大叫，大家都稱呼他「叫叫哥」",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==2){
     rect(talkX,473,width,67);
      fill(30);
      text("晚上本來就常聽到「叫叫哥」的尖叫啊！都沒有法律可以管嗎…",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==3){
     rect(talkX,473,width,67);
      fill(30);
      text("「叫叫哥」好像有過攻擊小學生的紀錄喔...這樣大屋附近的民衆要注意一下",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==4){
      rect(talkX,473,width,67);
      fill(30);
      text("有人說看到「叫叫哥」在附近鬼鬼祟祟的，是不是在大屋裡幹什麼壞事啊…",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==5){
      rect(talkX,473,width,67);
      fill(30);
      text("聽說附近有一個小學生失蹤欸！該不會跟大屋的尖叫聲有關吧",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==6){
     rect(talkX,473,width,67);
      fill(30);
      text("其實尖叫聲和「叫叫哥」的不太像，該不會是失蹤的小朋友被「叫叫哥」給…",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==7){
     rect(talkX,473,width,67);
      fill(30);
      text("我們成立巡守隊，保護附近民衆的安全，順便監視「叫叫哥」",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV==8){
     rect(talkX,473,width,67);
      fill(30);
      text("不管怎樣，我覺得「叫叫哥」實在讓附近的民衆感到很不安全",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (killerLV>=9){
     rect(talkX,473,width,67);
      fill(30);
      text("我們其實想藉由這個方式把他趕走啦…有看到他的話可以告訴我們嗎？",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     
     }
       
      if(keyPressed==true && key == 'z'){
        
        player.materialNum ++;
        if(countforinterview>=210&&countforinterview<211){
                if(player.materialNum==1)good1.trigger();
                if(player.materialNum==2)good2.trigger();
                if(player.materialNum==3)good3.trigger();
        }
        if(player.materialNum==1)player.material[0] = 1;
        if(player.materialNum==2)player.material[1] = 1;
        if(player.materialNum==3)player.material[2] = 1;
        countforinterview = 0;
        isAlive = false;
        talkX=-1100;
        killerLV++;
        if(keyPressed==true && key==RIGHT){
            normalSpeed=2*faster;
        }else{
         normalSpeed=2;
        }
        if(player.materialNum==1 || player.materialNum==2){
        interviewing = false;
        }
        HIT = false;
       }
          
          
          
    }
  }
}





  
  
  }
