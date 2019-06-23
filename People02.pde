class People02 extends People { // Second Kind of People: Drug Route

boolean endingChecked = false;

People02(float x, float y){
        super(x,y);
        
  }
  
  void display(){
     
      if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people2, 0, 0);
      popMatrix();
      }else{
      image(people2,x,y);
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
         
         if(ending != fansEnding)image(drug,iconXposition ,iconYposition);
         talkX=480;
         textAlign(CENTER);
      textSize(25);
      fill(255,180);
      noStroke();
      rectMode(CENTER);
     if (drugLV==0){
     rect(talkX,473,width,67);
      fill(30);
      text("尖叫聲？陳里長很認真工作，這裡的治安應該很好才對",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV==1){
      rect(talkX,473,width,67);
      fill(30);
      text("陳里長要大家不要擔心，那應該就是沒事才對",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV==2){
     rect(talkX,473,width,67);
      fill(30);
      text("應該是誤會啦，這不是什麼治安漏洞，我是覺得有人想抹黑里長喔！",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV==3){
     rect(talkX,473,width,67);
      fill(30);
      text("陳里長很盡責，我們要到處宣傳他的政績，不要讓人抹黑、放大檢視",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV==4){
      rect(talkX,473,width,67);
      fill(30);
      text("陳里長就是人氣太高了，才會有人想製造一些事件來抹黑他",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV==5){
      rect(talkX,473,width,67);
      fill(30);
      text("陳里長之前水溝清得很乾淨啊，尖叫聲又怎樣，又沒有人受傷",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV==6){
     rect(talkX,473,width,67);
      fill(30);
      text("陳里長這幾天都穿同一件衣服，一定是努力到忘記洗澡，表示他有在解決問題！",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV==7){
     rect(talkX,473,width,67);
      fill(30);
      text("我們要在陳里長舉辦的晚會大力支持陳里長，幫他加油打氣",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (drugLV>=8){
     rect(talkX,473,width,67);
      fill(30);
      if(ending == fansEnding){
        text("前方已經擠得水洩不通了，你應該永遠也到不了大屋了",talkX,480);
       endingChecked = true;
        textSize(18);
      text("Press [Z]",talkX,530);
        
      }else{
      text("不要一直用尖叫聲來批評陳里長！我們邀請全國民衆來晚會，替里長加油！",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
      }
     }
         
       }
       
     if(keyPressed==true && key == 'z'){
         
                 if(ending != fansEnding){
        player.materialNum ++;
        if(player.materialNum==1)player.material[0] = 2;
        if(player.materialNum==2)player.material[1] = 2;
        if(player.materialNum==3)player.material[2] = 2;
                 }
                 if(countforinterview>=210&&countforinterview<211){
               if(player.materialNum==1)good1.trigger();
                if(player.materialNum==2)good2.trigger();
                if(player.materialNum==3)good3.trigger();
        }
        countforinterview = 0;
        isAlive = false;
        drugLV++;
        
        if(endingChecked == true)gameState = GAME_BADEND;
        
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
