class People03 extends People { // Third Kind of People: ghost Route

int checked=0;
boolean endingChecked = false;

People03(float x, float y){
        super(x,y);
        
  }
  
  void display(){
      
      if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people3, 0, 0);
      popMatrix();
      }else{
      image(people3,x,y);
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
         
         image(ghost,iconXposition ,iconYposition);
         talkX=480;
         textAlign(CENTER);
      textSize(25);
      fill(255,180);
      noStroke();
      rectMode(CENTER);
     if (ghostLV==0){
     rect(talkX,473,width,67);
      fill(30);
      text("我是專業的，那叫聲必定是厲鬼作祟，而且那屋子纏繞著厚重陰氣！",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==1){
      rect(talkX,473,width,67);
      fill(30);
      text("相信我，屋子上方的雲呈現邪神的形狀，那叫聲與最近的天候異變肯定有關",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==2){
     rect(talkX,473,width,67);
      fill(30);
      text("依我的專業，我算過，那叫聲其實是對政府怠惰的一個警示",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==3){
     rect(talkX,473,width,67);
      fill(30);
      text("問我就對了，看看我這幾天拍的照片，裡頭都有奇怪的黑影",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==4){
      rect(talkX,473,width,67);
      fill(30);
      text("我發現許多紀錄顯示，這房子以前根本就是凶宅…",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==5){
      rect(talkX,473,width,67);
      fill(30);
      text("想要趨吉避凶，大家都應該隨身攜帶「靈氣石」",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==6){
     rect(talkX,473,width,67);
      fill(30);
      text("為了大家平安，我現在都用半價提供大家我加持的「靈氣石」",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==7){
     rect(talkX,473,width,67);
      fill(30);
      text("有神明託夢告訴我，尖叫聲代表國家即將遇到大劫難",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV==8){
     rect(talkX,473,width,67);
      fill(30);
      text("我已經召集相關人士，在我的領導下，驅逐這些惡靈",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
     }
     if (ghostLV>=9){
     rect(talkX,473,width,67);
      fill(30);
       if(ending == monkEnding){
        text("我們今天就會驅逐邪靈，你今後再也不用來採訪大屋了",talkX,480);
        endingChecked = true;
        textSize(18);
      text("Press [Z]",talkX,530);
      }else{
      text("今天我們會拯救這個國家的人民，不惜一切代價",talkX,480);
      textSize(18);
      text("Press [Z]",talkX,530);
      }
      
     }

       }
       
     

       
      if(keyPressed==true && key == 'z'){
        player.materialNum ++;
         if(countforinterview>=210&&countforinterview<211){
             if(player.materialNum==1)good1.trigger();
                if(player.materialNum==2)good2.trigger();
                if(player.materialNum==3)good3.trigger();
        }
        
        if(player.materialNum==1)player.material[0] =3;
        if(player.materialNum==2)player.material[1] =3;
        if(player.materialNum==3)player.material[2] =3;
        countforinterview = 0;
        ghostLV++;
        
         if(endingChecked == true)gameState = GAME_BADEND;
        
               if(greatMonk==true){
                  if(checked==0){
                    checked++;
                    
        keyPressed=false;
                  }else if(checked==1){
                  checked++;
                  
        keyPressed=false;
                  }else{
                  checked=0;
                  }
        }else if(goodMonk==true){
                    if(checked==0){
                    checked++;
                    
        keyPressed=false;
                  }else{
                  checked=0;
                  }
        }
        
        
        
        if(player.materialNum==3 || checked==0){
        isAlive = false;
        }
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


  
  
 
