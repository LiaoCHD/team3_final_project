class Report {
    
  float reportTimer,reportTimerS=0,reportTimerSE = 0;
  float reportTimer01,reportTimer02,reportTimer03,reportTimer04,reportTimer05;
  float reporterController,reporterMovecount;
  String reportTopic,reportContext1,reportContext2,reportContext3,reportContext4,reportContext5,reportContextScream;
  int reportCX1,reportCX2,reportCX3,reportCX4,reportCXC,reportCXE,reportCXS;
  boolean counted=false;
  int k ;
  
  int KILLER_REPORT_PLUSPOINT=200,DRUG_REPORT_PLUSPOINT=250,GHOST_REPORT_PLUSPOINT=300,BIRD_REPORT_PLUSPOINT=500;
  
  
  int plus1,plus2,plus3;
 
  
  int levelPlus1,levelPlus2,levelPlus3,levelPlus4,levelPlus5;
  int levelPast1=0,levelPast2=0,levelPast3=0,levelPast4=0,levelPast5=0;
  
  int viewPointDisplay=0;
  
  int endingstringY = 495;
  int endingtopicY = 270;
  
  

  
  Report(){
    rightState=false;
    counted=false;
    reportTimer=0;
    reportTimer01=0;
    reportTimer02=0;
    reportTimer03=0;
    reportTimer04=0;
    reportTimer05=0;
    reporterController=1;
    reportCX1=620;
    reportCX2=620;
    reportCX3=620;
    reportCX4=620;
    reportCXC=620;
    reportCXE=620;
    reportCXS=620;
    k=0;
    reportTopic = "郊區廢屋驚傳尖叫聲  人心惶惶";
  }
  
  
  void display(){
    tint(255);
    
    imageMode(CORNER);
    reportTimer++;
   reporterMovecount+=reporterController;
   
   image(report1,0,0,width,height);
   if(reporterMovecount>=25)image(report2,0,0,width,height);
   if(reporterMovecount>=50)reporterMovecount=0;
         //Topic
   textAlign(CENTER);
   textSize(55);
   fill(255);
   text(reportTopic,557,530);
         //Context
   
   if(reportTimer>=100){
      textSize(25);
      fill(15);
      text(reportContextScream,reportCXS,350);
   }
      if(reportTimer>=220){
         reportCXS=-1100;
          text("叫聲大概是這樣",reportCXC,350);
      }
      if(reportTimer>=300){
         reporterController=0;
     
   }
   if(reportTimer>=300&& reportTimer<301){
scream.trigger();
   }
     if(reportTimer>=480){
       reporterController=1;
       reportCXC=-1100;
       reportTimer01++;
       
     }
     //01
     if(reportTimer01>0){
       if(player.material[0]==1 ||player.material[1]==1 || player.material[2]==1 || ending!=0 ){
       
           text(reportContext1,reportCX1,350);
           if(killerLV==5&&ending!=truthEnding&&ending!=monkEnding&&ending!=fansEnding)text("請民衆小心",reportCX1,375);
           if(killerLV==7&&ending!=truthEnding&&ending!=monkEnding&&ending!=fansEnding)text("該叫聲可能是「叫叫哥」在大屋裡囚禁了小學生",reportCX1,375);
            if(killerLV==8&&ending!=truthEnding&&ending!=monkEnding&&ending!=fansEnding)text("希望能對嫌疑人「叫叫哥」達到威嚇作用",reportCX1,375);
         if(killerLV>=10&&ending!=truthEnding&&ending!=monkEnding&&ending!=fansEnding)text("皆不希望附近有這樣的不定時炸彈",reportCX1,375);
             if(reportTimer01>210){
                   reportTimer02++;
             }
           
       }else{
       reportTimer02++;
       }
     }
     //02
          if(reportTimer02>0){
       if(player.material[0]==2 || player.material[1]==2 || player.material[2]==2|| ending!=0){
           reportCX1=-1100;
           text(reportContext2,reportCX2,350);
         if(drugLV==4&&ending!=truthEnding&&ending!=monkEnding&&ending!=screambroEnding)text("對此表示不滿",reportCX2,375);
         if(drugLV==5&&ending!=truthEnding&&ending!=monkEnding&&ending!=screambroEnding)text("相當不可取",reportCX2,375);
         if(drugLV==6&&ending!=truthEnding&&ending!=monkEnding&&ending!=screambroEnding)text("民衆表示對陳里長有信心，不怕抹黑",reportCX2,375);
         if(drugLV==7&&ending!=truthEnding&&ending!=monkEnding&&ending!=screambroEnding)text("表示他相當認真工作，不怕抹黑",reportCX2,375);
         if(drugLV==8&&ending!=truthEnding&&ending!=monkEnding&&ending!=screambroEnding)text("替他聲援，拒絕抹黑",reportCX2,375);
         if(drugLV>=9&&ending!=truthEnding&&ending!=monkEnding&&ending!=screambroEnding)text("並邀請全國粉絲共襄盛舉",reportCX2,375);
             if(reportTimer02>210){
                   reportTimer03++;
             }
           
       }else{
       reportTimer03++;
       }
     }
     //03
     if(reportTimer03>0){
       if(player.material[0]==3|| player.material[1]==3 || player.material[2]==3|| ending!=0){
              reportCX1=-1100;
              reportCX2=-1100;
           text(reportContext3,reportCX3,350);
            if(ending == screambroEnding){
            image(screambroSituation,reportCX3-620,0);
            
            }
             if(reportTimer03>210){
                   reportTimer04++;
             }
           
       }else{
       reportTimer04++;
       }
     }
     //04
     if(reportTimer04>0){
       if(moreInfo == true){
             reportCX1=-1100;
             reportCX2=-1100;  
             reportCX3=-1100;
           text(reportContext4,reportCX4,350);
            if(drugLV>=3 && fansiscoming== true && ending!=monkEnding && ending!=truthEnding && ending!=screambroEnding){
            image(reportVender,reportCX4-620,0);
            }else if(ghostLV>=7 && greatMonkiscoming == true && ending!=fansEnding && ending!=truthEnding && ending!=screambroEnding){
            people3 =   loadImage("img/greatMonk.PNG");
              image(people3,reportCX4,200);
              text(" 期待他為各位觀衆解惑與開示",reportCX4,375);
            }else if(ghostLV>=2 && goodMonkiscoming == true && ending!=fansEnding && ending!=truthEnding && ending!=screambroEnding){
            people3 =   loadImage("img/goodMonk.PNG");
              image(people3,reportCX4,200);
              text(" 將為我們提供更多資訊",reportCX4,375);
            }
             if(reportTimer04>210){
                   reportTimer05++;
             }
           
       }else{
       reportTimer05++;
       }
     }
     
     
     
     
     
     

     
       if(reportTimer05>0){
         
         reportCX1=-1100;
         reportCX2=-1100;  
         reportCX3=-1100;
         reportCX4=-1100;
       text("以上就是本臺獨家整理報導",reportCXE,350);
       if(reportTimer05>210) {
        
         if(ending==0 && firstReport==true){
         score();
         }else if(ending == truthEnding){
           score();
         }else{
           initGame();
     gameState = GAME_RUN;
         
         
         }
         
         
       }
     }

  }
  
   void update(){

     
     
     reportTopic = "郊區廢屋驚傳尖叫聲  人心惶惶";
     if(day>1){
       reportContextScream= "今天在廢棄的屋子又傳出尖叫聲";
     }else{
       reportContextScream= "今天在廢棄的屋子又傳出尖叫聲";
     }
    
     
     //----------------------------
     
     if(player.material[0]==1 ||player.material[1]==1 || player.material[2]==1){
     // There is killer material today
         //Check the LV now and print today's report
         if(killerLV==1)reportContext1 = "疑似有精神病患者在裡頭尖叫";
         if(killerLV==2)reportContext1 = "可能是當地的精神病患者「叫叫哥」在裡面尖叫";
         if(killerLV==3)reportContext1 = "民衆表示晚上常聽見精神病「叫叫哥」的尖叫，不堪其擾";
         if(killerLV==4)reportContext1 = "據傳，可能是曾攻擊過小學生的「叫叫哥」在裡面";
         if(killerLV==5)reportContext1 = "事件嫌疑人「叫叫哥」被目擊在附近鬼鬼祟祟的";
         if(killerLV==6)reportContext1 = "最近又發生了小學生失蹤事件，不排除和「叫叫哥」有關";
         if(killerLV==7)reportContext1 = "最新消息指出";
         if(killerLV==8)reportContext1 = "民衆已經成立巡守隊";
         if(killerLV==9)reportContext1 = "民衆表示「叫叫哥」這些行為已經對居民造成恐慌與不安";
         if(killerLV>=10)reportContext1 = "民衆對「叫叫哥」深感不滿";
   
     }
     //---------------------------
      if(player.material[0]==2 ||player.material[1]==2 || player.material[2]==2){
     // There is drug material today
         //Check the LV now and print today's report
         if(drugLV==1)reportContext2 = "里民表示，該地里長認真負責，治安應該很好才對";
         if(drugLV==2)reportContext2 = "陳里長要大家不需擔心，只是小事一件";
         if(drugLV==3)reportContext2 = "有的民衆認為是有人想藉由這起事件來抹黑陳里長";
         if(drugLV==4)reportContext2 = "支持者認為不該用此事件對陳里長放大檢視";
         if(drugLV==5)reportContext2 = "粉絲認為有人故意用這樣的事想拉低陳里長的高人氣";
         if(drugLV==6)reportContext2 = "而陳里長先前清水溝讓民衆有感";
         if(drugLV==7)reportContext2 = "粉絲發現陳里長都穿同一件衣服";
         if(drugLV==8)reportContext2 = "熱情粉絲表示會在里民晚會上支持陳里長";
         if(drugLV>=9)reportContext2 = "熱情粉絲將在里民晚會大力聲援陳里長";

     }
      //---------------------------
      if(player.material[0]==3 ||player.material[1]==3 || player.material[2]==3){
     // There is ghost material today
         //Check the LV now and print today's report
         if(ghostLV==1)reportContext3 = "專業師傅説，那叫聲必定是厲鬼作祟";
         if(ghostLV==2)reportContext3 = "師傅受訪時表示，屋子上方的雲呈現邪神形狀，才是主因";
         if(ghostLV==3)reportContext3 = "師傅表示，叫聲代表著對政府怠惰的警示";
         if(ghostLV==4)reportContext3 = "師傅也提供了我們許多有關大屋的靈異照片，實在詭異";
         if(ghostLV==5)reportContext3 = "師傅提供資料，表示該屋子以前根本是凶宅";
         if(ghostLV==6)reportContext3 = "師傅表示，可以攜帶「靈氣石」來驅趕裏頭的惡靈";
         if(ghostLV==7)reportContext3 = "師傅表示願意提供大家半價的「靈氣石」來趨吉避凶";
         if(ghostLV==8)reportContext3 = "神明託夢告訴師傅，尖叫聲代表國家即將遇到大劫難";
         if(ghostLV==9)reportContext3 = "師傅已經召集相關人士，在他的領導下，驅逐這些惡靈";
         if(ghostLV>=10)reportContext3 = "神明已經託夢給師傅，他會拯救這個國家的人民的";

     }
           //---------------------------
    /*  if(player.material[0]==4 ||player.material[1]==4 || player.material[2]==4){
     // There is ghost material today
         //Check the LV now and print today's report
         if(birdLV==1)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==2)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==3)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==4)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==5)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==6)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==7)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==8)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==9)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==10)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==11)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==12)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==13)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==14)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==15)reportContext4 = "有人説那只是夜鶯";
     }*/
     
     
     
     if(drugLV>=3 && fansiscoming== false && ending==0){
     reportContext4 =  "熱情的陳里長粉絲也附近設立宣傳站，替陳里長加油";
     moreInfo = true;
      fansiscoming = true;
     }
     
     
     if(ghostLV>=2 && goodMonkiscoming == false && ending==0){
     reportContext4 =  "而這也吸引了許多小有名氣的專業師傅前來";
     moreInfo = true;
     goodMonkiscoming = true;
     }
     
     if(ghostLV>=7 && greatMonkiscoming == false && ending==0){
     reportContext4 =  "而許多專家級的師傅也來到附近";
     moreInfo = true;
     greatMonkiscoming = true;
     }

     
       if(ending == fansEnding){
           reportContext1 = "不畏懼這樣的抹黑手段";
           reportContext2 = "支持者將在里民晚會替陳里長加油";
           reportContext3 = "歡迎全國民衆前來響應";
     
     }
     
            if(ending ==monkEnding){
           reportContext1 = "師傅接受神明託夢，他即將驅逐裏頭的邪靈";
           reportContext2 = "他召集各方人士，前來一同做法";
           reportContext3 = "希望他們可以展現神蹟，拯救國家";
     
     }
     
     
     if(ending == screambroEnding){
          oneMusic=true;
           reportContext1 = "今天記者找到了這位「叫叫哥」";
           reportContext2 = "「叫叫哥」對記者的問題無法回應，可能是作賊心虛";
           reportContext3 = "他似乎經常在這個地方出沒，請民衆小心";
     
     }
     
          if(ending == truthEnding){
           reportContext1 = "記者進入大屋之後";
           reportContext2 = "發現原來只是一臺收音機，在播報前一天的新聞";
           reportContext3 = "一切都只是虛驚一場";
     
     }
     
     

   
     


   }


    void score(){
      
      
      fill(20);
      rect(0,0,width*2,height*2);
      
      if(ending!=truthEnding){
      if(keyPressed==true && key=='z'){
      reportTimerS+=5;
      }else{
      reportTimerS++;
      }
      }
      
      if(ending==truthEnding){
       reportTimerS++;
      }
      
      textSize(30);
      fill(255);
      
      
      if(ending == truthEnding){
      text("觀看數改變了",endingtopicY,100);
      }else{
      text("觀看數上升了",270,100);
      }
      
      if(day>1&&ending!=truthEnding){
       textSize(30);
           fill(255);
        textAlign(LEFT);    
       text("按下'Z'加速",10,520);
      }
      
      textSize(16);
      
      if(reportTimerS>150)text("你今天報導了",270,150);
     
       if(ending == truthEnding){
          if(reportTimerS>210)image(truthImg,450,170);
          
          if(reportTimerS>290)text("並不是那麼精彩的新聞，所以觀看數下降了",endingstringY,300);
          
          //---------------第一次算分---------------
           textSize(50);
      fill(255);
      
     if(reportTimerS>370) {
                      if( k== 0 ){
                      viewPointDisplay = viewPoint;
                      viewPoint = 400;
                      k++;
                      }
        textAlign(LEFT);               
       text("View："+ viewPointDisplay,200,400);

     }
      if(reportTimerS>470 && counted==false){
      if(viewPointDisplay>viewPoint){
       viewPointDisplay-=10;
       reportTimerS=471;
      }
      }
      
      if(reportTimerS>530){
        counted=true;
        textSize(30);
        textAlign(RIGHT);    
       text("按下→繼續",950,520);
       if(keyPressed==true && keyCode == RIGHT && reportTimerSE==0){
                      reportTimerSE = 2;
       }  
       }
       //---------------第二次算分---------------
       if(reportTimerSE>1){
         reportTimerSE++;
         endingstringY = -1100;
          endingtopicY = -1100;
          textSize(30);
          textAlign(CENTER);
          text("觀看數上升了",270,100);
       }
        if(reportTimerSE>51){
        textSize(16);
          text("然而因為你報導了事實，觀看數還是少量上升了",495,300);
        }
         if(reportTimerSE>100){
           if(viewPointDisplay==400)viewPointDisplay = 40;
           if(viewPointDisplay==300)viewPointDisplay = 30;
           if(viewPointDisplay==200)viewPointDisplay = 20;
           if(viewPointDisplay==100)viewPointDisplay = 10;
         }
         if(reportTimerSE>120){
           fill(#00e3e3);
           textSize(50);
           textAlign(LEFT);       
         text("       1",225,400);
         }
         if(reportTimerSE>=120 && reportTimerSE<121)up.trigger();
         if(reportTimerSE>180){
           textSize(30);
           fill(255);
        textAlign(RIGHT);    
       text("按下→繼續",950,520);
       if(keyPressed==true && keyCode == RIGHT){
         viewPoint = viewPointDisplay;
         day++;
         gameState = GAME_CROWD;
       } 
         }
      
       
       }else{
          //01
      if(reportTimerS>210){
      if(player.material[0]==1){
        image(killer,330,170);
        plus1 = KILLER_REPORT_PLUSPOINT;
    }
      if(player.material[0]==2){
        image(drug,330,170);
        plus1 = DRUG_REPORT_PLUSPOINT;
    }
      if(player.material[0]==3){
        image(ghost,330,170);
        plus1=GHOST_REPORT_PLUSPOINT;
    }
      if(player.material[0]==4){
        image(bird,330,170);
        plus1 = BIRD_REPORT_PLUSPOINT;
    }
      }
      //02
       if(reportTimerS>240){
            if(player.material[1]==1){
        image(killer,450,170);
        plus2 = KILLER_REPORT_PLUSPOINT;
    }
      if(player.material[1]==2){
        image(drug,450,170);
        plus2 = DRUG_REPORT_PLUSPOINT;
    }
      if(player.material[1]==3){
        image(ghost,450,170);
        plus2= GHOST_REPORT_PLUSPOINT;
    }
      if(player.material[1]==4){
        image(bird,450,170);
        plus2 = BIRD_REPORT_PLUSPOINT;
    }
       }
      //03     
       if(reportTimerS>270){
      if(player.material[2]==1){
        image(killer,570,170);
        plus3 = KILLER_REPORT_PLUSPOINT;
      }
      if(player.material[2]==2){
        image(drug,570,170);
        plus3 = DRUG_REPORT_PLUSPOINT;
    }
      if(player.material[2]==3){
        image(ghost,570,170);
        plus3= GHOST_REPORT_PLUSPOINT;
    }
      if(player.material[2]==4){
        image(bird,570,170);
        plus3 = BIRD_REPORT_PLUSPOINT;
    }
       }
  
      
      
      textAlign(CENTER);
       if(reportTimerS>350)text("+"+plus1,375,300);
      if(reportTimerS>380)text("+"+plus2,495,300);
      if(reportTimerS>410){text("+"+plus3,615,300);}
      
           
      
      
      
      
      textSize(50);
      fill(255);
      
     if(reportTimerS>490) {
                      if( k== 0 ){
                      viewPointDisplay = viewPoint;
                      viewPoint = viewPoint+plus1+plus2+plus3;
                      k++;
                      }
        textAlign(LEFT);               
       text("View："+ viewPointDisplay,200,400);

     }
      if(reportTimerS>550 && counted==false){
      if(viewPointDisplay<viewPoint){
       viewPointDisplay+=10;
       reportTimerS=551;
      if( viewPointDisplay%40==0)up.trigger();
      }
      }
      
      if(reportTimerS>610){
        counted=true;
        textSize(30);
        textAlign(RIGHT);    
       text("按下→繼續",950,520);
       if(keyPressed==true && keyCode == RIGHT){
           
           for(int i=0;i<=2;i++){
           DNMN[day][i] = player.material[i];
           }
           day++;
           gameState = GAME_CROWD;
           
       }
        
      }
      }
    
    }

void firstreport(){
  
  //----------------
  tint(255);
    
    imageMode(CORNER);
    reportTimer++;
  
   
   fill(0);
   rect(0,0,width*2,height*2);
   
   if( reportTimer>=60 && reportTimer<61 )victory.trigger();
   
   if(reportTimer>240){
     //Topic
   textAlign(CENTER);
     image(report1,0,0,width,height);
        textSize(55);
   fill(255);
 text(reportTopic,557,530);
   }
   
   if(reportTimer>=320&&reportTimer<321){
   news.trigger();
   }

   if(reportTimer>320){
        
   
      reporterMovecount+=reporterController;
    if(reporterMovecount>=25){image(report2,0,0,width,height);}
   if(reporterMovecount>=50){reporterMovecount=0;}
   
   textSize(55);
   fill(255);
 text(reportTopic,557,530);
   
   textSize(25);
      fill(15);
   text("歡迎收看跑跑新聞",reportCXS,350);
   
   
   }
   
  
         
         //Context
   
   if(reportTimer>=460){
              reportCXS=-1100;
          text("今天有民衆爆料",reportCXC,350);

   }
      if(reportTimer>=580){
          reportCXC=-1100;
           text("他在郊區廢屋的附近疑似聽見了尖叫聲",reportCX1,350);
      }
      if(reportTimer>=720){
          reportCX1=-1100;
           text("他示範了一下，叫聲大概是這樣子的",reportCX2,350);
      }

      if(reportTimer>=780){
         reporterController=0;
     
   }
   if(reportTimer>=800&& reportTimer<801){
scream.trigger();
   }
     if(reportTimer>=980){
       reporterController=1;
       reportCX2=-1100;
        text("究竟廢棄的大屋子為何會傳出尖叫聲呢？",reportCX3,350);
       
     }
          if(reportTimer>=1100){
       reporterController=1;
       reportCX3=-1100;
        text("記者將在未來幾天為您做追蹤報導",reportCX4,350);
     }
     
          if(reportTimer>=1190){
         reporterController=0;
     }
     
          if(reportTimer>=1220){
         reporterController=0;
            fill(0);
   rect(0,0,width*0,height*2);
     }
     
          if(reportTimer>=1250){
               firstReport = true;
      gameState = GAME_TEACH;
     }

      

  //----------------
}
  
  
  
 }
