
import ddf.minim.*;
Minim minim;
AudioSample scream;
AudioSample open;
AudioSample buzzer;
AudioSample good1;
AudioSample good2;
AudioSample good3;
AudioSample up;
AudioSample  victory;
AudioSample  pop;
AudioSample  start;
AudioSample  talk;


AudioPlayer tutu;
AudioPlayer bgm;
AudioPlayer truth;
AudioPlayer badend;
AudioSample news;




PFont font;


float startTimer = 0,endTimer = 0,teachTimer=0,truthendTimer = 0,musicTimer1=0,musicTimer2=0,bbTimer = 0;;
float truthendCount =0;
float radioCount =0;
float radiotalkA=0,radiotalkB=0,radiotalkC=0;
float oneX = 942;

PImage bg1,bg2,bg3,bg4,bg5,house,bg6,screamImage,surprise,houseInside1;
PImage startNormal, startHovered,teaching1,teaching2;
PImage interview,startRun,startRunDay1;
PImage bird,drug,hear,killer,ghost,report1,report2,shock;
PImage people1,people2,people3,people4,passerby1,passerby2,Screambro,policeImg,wonder,truthImg;
PImage mc;
PImage wall,charm,poster,wanted,vender,screambroSituation,reportVender;

float [] bgX;
float []pX;
float []pY;
int  [][] DNMN;

int startRunX =0;

float timer,mcOffset=0;
float houseX;
float  venderX=0;

int getIcon=0;
int day = 1;
int mapNum=11;
int upLine=358-62,downLine = 358+62,middleLine=358;
int timeLimit1=600,timeLimit2=300;
int minusPoint = -500;
int teachingChecked =  0;
int interviewIconX =0 , topBarX=0,timeStringX=490,minusStringX=950;
int startcheck=0;



int maxDistance=42,remainDistance,distanceCount;
int viewPoint = 1000;
int screamXatTeach=0;

int normalSpeed=2,faster=8;
float speed= normalSpeed;

String distanceString,scoreString,timeString;
float countforminus=0;
int killerLV=0,drugLV=0,ghostLV=0,birdLV=0;
float jumpatTeach=0;
float countforTeach = 0;
float countforWarning = 0;
float wallX = 1320;

float alpha=0;

Player player;
People[] people;
Report report;
Plus plus;
Passerby[] passerby;
Screambro screambro;
Police [] police;


final int GAME_START = 0, GAME_RUN = 1, GAME_TEACH = 2, GAME_CROWD = 3,GAME_REPORT = 4,GAME_LOSE = 5,GAME_TRUTH = 6,GAME_BADEND = 7;
int gameState = 0;

final int GAME_INIT_TIMER = 960;
int gameTimer = GAME_INIT_TIMER;
int second;

final int START_BUTTON_WIDTH = 218;
final int START_BUTTON_HEIGHT = 64;
final int START_BUTTON_X =390;
final int START_BUTTON_Y = 290;

int ending = 0;
int screambroEnding = 1;
int fansEnding = 2;
int monkEnding = 3;
int truthEnding = 4;


boolean upState = false;
boolean downState = false;
boolean rightState = false;
boolean interviewing=false;
boolean disturbing=false;
boolean START = false;
boolean turnatTeach = false,p2turnatTeach=true;
boolean teached =false;
boolean meetedScreambro=false;
boolean screambroAppear =false;
boolean screambrofinalAppear =false;
boolean policeAppear = false;
boolean greatMonk = false;
boolean goodMonk = false;
boolean firstReport = false;
boolean tutuStop = false;
boolean musicPlayer =false;
boolean RUN = false;
boolean venderAppear =false;
boolean  z=false;

  boolean greatMonkiscoming = false;
  boolean  goodMonkiscoming = false;
    boolean fansiscoming = false;
  boolean moreInfo = false;
  
     boolean oneMusic=false;




void setup() {  

  minim = new Minim(this);
  pop =  minim.loadSample("sound/pop.wav",512);
  start =  minim.loadSample("sound/start.wav",512);
  talk =  minim.loadSample("sound/talk.wav",512);

  scream =  minim.loadSample("sound/scream.wav",512);
  open =  minim.loadSample("sound/open.wav",512);
  buzzer =  minim.loadSample("sound/buzzer.wav",512);
  good1 =  minim.loadSample("sound/good1.wav",512);
  good2 =  minim.loadSample("sound/good2.wav",512);
  good3 =  minim.loadSample("sound/good3.wav",512);
  up =  minim.loadSample("sound/up.wav",512);
  tutu =  minim.loadFile("sound/tutu.wav");
  bgm =  minim.loadFile("sound/bgm.wav");
  news =  minim.loadSample("sound/news.wav");
  victory =  minim.loadSample("sound/victory.wav",512);
    truth=  minim.loadFile("sound/truth.wav");
  badend=  minim.loadFile("sound/badend.wav");
  

  
  size(960, 540,P2D);
  wall = loadImage("img/wall.png");
  charm = loadImage("img/charm.png");
  poster = loadImage("img/poster.png");
  wanted = loadImage("img/wanted.png");
  vender = loadImage("img/vender.PNG");
  reportVender = loadImage("img/reportVender.PNG");
  screambroSituation =  loadImage("img/screambroSituation.png");
  
  truthImg = loadImage("img/truth.PNG");
  policeImg = loadImage("img/police.png");
  startRunDay1 = loadImage("img/starttorunDay1.png");
  teaching1 =  loadImage("img/teaching1.png");
  teaching2 =  loadImage("img/teaching2.png");
  houseInside1 =  loadImage("img/final1.png");
  startRun = loadImage("img/starttorun.png");
  screamImage = loadImage("img/scream.png");
  surprise = loadImage("img/surprise.PNG");
  bg1 = loadImage("img/backGround_01.png");
  bg2 = loadImage("img/backGround_02.png");
  bg3 = loadImage("img/backGround_03.png");
  bg4 = loadImage("img/backGround_04.png");
  bg5 = loadImage("img/backGround_05.png");
  startNormal = loadImage("img/gamestart01.png");
  startHovered = loadImage("img/gamestart02.png");
  mc = loadImage("img/mc-01.png");
  house = loadImage("img/house.png");
  bg6 = loadImage("img/backGround_06.png");
  people1 = loadImage("img/people1.png");
  people2 = loadImage("img/people2.png");
  people3 = loadImage("img/people3.png");
  people4 = loadImage("img/people4.png");
  passerby1 = loadImage("img/passerby1.png");
  passerby2 = loadImage("img/passerby2.png");
  Screambro = loadImage("img/Screambro.png");
  shock = loadImage("img/shock.PNG");

  interview = loadImage("img/interview.png");

  bird = loadImage("img/bird.png");
  drug = loadImage("img/hear.png");
  killer = loadImage("img/killer.png");
  ghost = loadImage("img/ghost.png");
  
  report1 = loadImage("img/report1.png");
  report2 = loadImage("img/report2.png");
  
  wonder = loadImage("img/wonder.PNG");
  
  font = createFont("font/JF-Dot-K12.ttf", 56);
  textFont(font);
  
  bgX = new float[30];
  pX = new float[70];
  pY = new float[70];
  DNMN = new int [10][3];
  
  
 
 //09,x
        pX[0]=pX[1]=9600;
        pX[2]=pX[3]=9600-394;
        pX[4]=pX[5]=9600-394*2;
        pX[6]=9600-192;
        pX[7]=9600-192-394;
        
         //y,middle
        for(int i=0;i<=69;i++){
          pY[i]=middleLine;
        }
        
        //y,up
        pY[0]=pY[2]=pY[4]=pY[10]=pY[14]=pY[19]=pY[23]=pY[24]=pY[28]=pY[32]=pY[34]=pY[36]=pY[38]=pY[40]=pY[41]=pY[42]=pY[43]=pY[44]=pY[48]=pY[50]=pY[54]=pY[55]=pY[56]=pY[58]=pY[60]=pY[62]=pY[65]=pY[68]=upLine;

        //y,down
        pY[1]=pY[3]=pY[5]=pY[9]=pY[13]=pY[17]=pY[21]=pY[25]=pY[27]=pY[29]=pY[31]=pY[33]=pY[37]=pY[49]=pY[51]=pY[57]=pY[59]=pY[61]=pY[63]=pY[66]=pY[67]=downLine;
         

 // Initialize people and their position
   plus = new Plus();
   
  
    
  
  initGame();
  
  
  
}

void initGame(){
  
  
  tint(255);
   venderX = 0;
  wallX = 1320;
  RUN =false;
  startcheck =0;
  bbTimer = 0;
  musicTimer1=0;
  musicTimer2=0;
  START = false;
  startTimer = 0;
  startRunX =0;
  
  gameTimer = GAME_INIT_TIMER;
  remainDistance = maxDistance;
  
  // Initialize player
  player = new Player();
  

  // Initialize backround
  for(int i=0 ; i<=mapNum ; i++ ){
    bgX[i] = width*i;
  }
  // Initialize house
  houseX = 250+bgX[mapNum-1];

  // Initialize report
   report = new Report();
   moreInfo = false;
   // Initialize plus
   plus = new Plus();
   
    //set everyone's situation
       //09,x
        pX[0]=pX[1]=9600;
        pX[2]=pX[3]=9600-394;
        pX[4]=pX[5]=9600-394*2;
        pX[6]=9600-192;
        pX[7]=9600-192-394;
        
       //08,x
        pX[8]=pX[9]=8640-192;
        pX[10]=pX[11]=8640-192*2;
        pX[12]=pX[13]=8640-192*3;
        pX[14]=pX[15]=8640-192*4;
        
         //07,x
         pX[16]=7680;
         pX[17]=pX[16]-96;
         pX[18]=pX[17]-192;
         pX[19]=pX[18]-96;
         pX[20]=pX[19]-192;
         pX[21]=pX[20]-96;
         pX[22]=pX[21]-192;
         pX[23]=pX[22]-96;
          
         //06,x
        pX[24]=pX[25]=6720-160;
        pX[26]=pX[27]=6720-320;
        for(int i=28 ; i<=31; i++){
          pX[i] = 6240-160*(i-28);
        }
        
        //05,x
        for(int i=32 ; i<=39; i++){
          if(i%2 !=0){
           pX[i] = 5760-120*(i-31);
          }else{
          pX[i] = 5760-120*(i-30);
          }
        }
        
        //04,x
        for(int i=40 ; i<=44; i++){
             pX[i] = 4800-260-91.25*(i-40);
        }
        for(int i=45 ; i<=47; i++){
             pX[i] = 4800-260-182.5*(i-45);
        } 
        
        //03,x
        pX[48]=pX[49]=3720;
        pX[50]=pX[51]=3720-85;
        pX[52]=pX[51]-120;
        pX[53]=pX[52]-85;
        pX[54]=pX[53]-120;
        pX[55]=pX[54]-85;
        
         //02,x
        for(int i=56 ; i<=62; i+=2){
             pX[i] = 2880-120*(i-56);
        }
        for(int i=57 ; i<=63; i+=2){
             pX[i] = 2880-120*(i-57);
        } 
        
         //01,x
        for(int i=64 ; i<=69; i++){
             pX[i] = 1920-160*(i-63);
        }

        
        
        //-----------------------police-------------------------
        
        
        
        if(ending == screambroEnding){
          police = new Police[6];

           police[0] = new Police(800, upLine);
           police[1] = new Police(800, middleLine);
           police[2] = new Police(800,  downLine);
           police[3] = new Police(1100, upLine);
           police[4] = new Police(1400, downLine);
           police[5] = new Police(1600, middleLine);
           
           policeAppear = true;
           
        }
        
        //-----------------------vender------------------------
        if(drugLV>=3)venderAppear=true;
        //-----------------------screambro-------------------
       
       if(meetedScreambro == false){
       if(killerLV>=3){
         screambro = new Screambro(800,downLine);
         screambroAppear = true;
       }
       }
       if(killerLV>9){
         
         screambro = new Screambro(5760,upLine);
         Screambro = loadImage("img/Screambro.png");
       screambrofinalAppear = true;
       
       }
        //-----------------------passerby----------------------
          passerby = new Passerby[50];

if(day<9){
  for(int i = 0; i < 4; i++){
    float newX = 960+240*i;
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}

if(day<8){
  for(int i = 4; i < 8; i++){
    float newX = 960*2+240*(i-4);
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}

if(day<7){
  for(int i = 8; i < 13; i++){
    float newX = 960*3+192*(i-8);
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}

if(day<6){
  for(int i = 13; i < 18; i++){
    float newX = 960*4+192*(i-13);
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}

if(day<5){
  for(int i = 18; i <24; i++){
    float newX = 960*5+160*(i-18);
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}

if(day<4){
  for(int i = 24; i <30; i++){
    float newX = 960*6+160*(i-24);
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}

if(day<3){
  for(int i = 30; i <36; i++){
    float newX = 960*7+160*(i-30);
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}

if(day<2){
  for(int i = 36; i <44; i++){
    float newX = 960*8+120*(i-36);
    float newY = upLine + floor(random(3))*62;
            passerby[i] = new Passerby(newX, newY);
  }
}
        
        //-----------------------passerby----------------------
        
        
        
        
        plus.count();
        normalSpeed = 2; 
         speed = normalSpeed; 
         interviewing = false;
         player.y = middleLine;
         
         
                
        //---------------------- fans at the entrance -----------------------
       
        if(ending==0){
          if(drugLV>=3)people[70] = new People02(555,upLine);
          if(drugLV>=4)people[71] = new People02(480,middleLine);
          if(drugLV>=5)people[72] = new People02(405,upLine);
        }
        
         //---------------------- fansEnding-----------------------
         
         if(ending==fansEnding){
           for(int i = 0; i < 70; i+=3){
             float newX = 600+i*20;
             
            

            people[i] = new People02(newX,upLine);
            people[i+1] = new People02(newX, middleLine);
            people[i+2] = new People02(newX, downLine);
  }
         
         }
         
           //---------------------- monkEnding-----------------------
         
         if(ending==monkEnding){
           for(int i = 0; i < 70; i+=3){
             float newX = 600+i*50;
             
            

            people[i] = new People03(newX,upLine);
            people[i+1] = new People03(newX+75, middleLine);
            people[i+2] = new People03(newX, downLine);
  }
         
         }
         
         //---------------------- truthEnding-----------------------
       if(ending==truthEnding){
         
           for(int i = 0; i < 74; i++){
            people[i] = new People02(-1000,downLine);
  }
          houseX = -3000;
          mapNum=29;
         
         }
        
       
}

void draw() {
  switch (gameState) {

    case GAME_START: // Start Screen
    
    background(0);

    
    if(START_BUTTON_X + START_BUTTON_WIDTH > mouseX
      && START_BUTTON_X < mouseX
      && START_BUTTON_Y + START_BUTTON_HEIGHT > mouseY
      && START_BUTTON_Y < mouseY) {

      image(startHovered,0,0,960,540);
      if(mousePressed){
        up.trigger();
        gameState = GAME_REPORT;
        mousePressed = false;
      }

    }else{

      image(startNormal, 0,0,960,540);

    }

    break;
    
    case GAME_TEACH: // Teaching
    
    teachTimer++;
    
   fill(0);
textAlign(CENTER);
  rect(0,0,width*2,height*2);
  fill(255);
  text("當天夜裡...",480,240);

                  
                  if(teachTimer>60){
                    
                    
                    
                       tint(80);
                       image(bg1,0, 0);
                       image(house,250,40);
                       
                       if(turnatTeach == true){
                        pushMatrix();
                        translate(115, downLine+jumpatTeach);
                        scale(-1, 1);
                        image(people1, 0, 0);
                        popMatrix();
                  
                        pushMatrix();
                        translate(175, upLine+jumpatTeach);
                        scale(-1, 1);
                        image(people3, 0, 0);
                        popMatrix();
                        
                        }else{
                         image(people1, 40,downLine+jumpatTeach);
                         image(people3, 100,upLine+jumpatTeach);
                        }
                  
                      if(p2turnatTeach == true){
                        pushMatrix();
                        translate(275, middleLine+jumpatTeach);
                        scale(-1, 1);
                        image(people2, 0, 0);
                        popMatrix();
                        }else{
                         image(people2, 200,middleLine+jumpatTeach);
                        }
                  
                       
                       noStroke();
                       if(teachTimer>=180 && teachTimer<181){
                                 scream.trigger();
                       }
                      if(teachTimer>180){
                       
                        
                        image(screamImage,screamXatTeach,0);
                       countforTeach++;
                        if(countforTeach<10)jumpatTeach-=3;
                        if(countforTeach>=10)jumpatTeach+=3;
                        if(countforTeach>=20)jumpatTeach=0;
                  p2turnatTeach = false;
                        turnatTeach=false;
                      }
                      
                      
                      if(teachTimer>300){
                             screamXatTeach=-1100;
                      }
                      if(teachTimer>330){
                        p2turnatTeach =true;
                        image(surprise,200-40 ,middleLine+jumpatTeach-100);
                      }
                      
                      if(teachTimer>360){
                        image(surprise,100-40 ,upLine+jumpatTeach-100);
                      }
                      
                      if(teachTimer>390){
                        image(surprise,40-40 ,downLine+jumpatTeach-100);
                      }
                      if(teachTimer>420){
                            fill(0);
                            rect(0,0,width*2,height*2);
                      }
                       if(teachTimer>480){
                         initGame();
                       gameState = GAME_RUN;
                      }
                      
                      
                      
                  }

    break;
    
    case GAME_RUN: //Game Run
      //backround+house
      musicTimer1++;
      
      

     playtheMusic();

      
      tint(255);
      
      
      if(RUN==false){
               speed=0; 
              }else{
              speed = normalSpeed;
}
      
      if(viewPoint<=0 && ending ==0){
      gameState = GAME_LOSE;
      }
      
      
      
      
      if(ending==0){
      if(bgX[mapNum-1]<=-100){
        normalSpeed =0;
        speed = 0;
        truthendCount++;
        if(truthendCount==120){
      gameState = GAME_TRUTH;
        }
      }
      }
      
      
  
  
      
      
     
    for(int i=0 ; i<=mapNum ; i++ ){
    if(i%5==0)image(bg1, bgX[i], 0);
    if(i%5==1)image(bg2, bgX[i], 0);
    if(i%5==2)image(bg3, bgX[i], 0);
    if(i%5==3)image(bg4, bgX[i], 0);
    if(i%5==4)image(bg5, bgX[i], 0);
  }

   
    if(ending==0){
    for(int i=0 ; i<=mapNum ; i++ ){
    if(bgX[mapNum-1]>-100)bgX[i]-=speed;
  }
  image(house,houseX, 40);
  if(bgX[mapNum-1]>-100)houseX-=speed;
  if(bgX[mapNum-1]<=-100)mc = loadImage("img/mcIdle.png");
  }
  
  //----------wall--------------------------
  
  image(wall,wallX,0);

  
      if(drugLV>=6){
   image(poster,wallX,0);
  }
  
    if(ghostLV >=5){
   image(charm,wallX,0);
  }
  
  if(killerLV >=7){
   image(wanted,wallX,0);
  }
  
    wallX-=speed;
  

  
  
  //----------vender----------------------
  
  
  if(drugLV>=3 && ending==0 && venderAppear==true){
  image(vender,venderX,-20);
  venderX-=speed;
  }
  
  
  if(ending!=0){
    for(int i=0 ; i<=mapNum ; i++ ){
    bgX[i]-=speed;
  }
  }
  
  if(viewPoint<=40 && ending == truthEnding && gameTimer<=300){
    fill(0);
    rect(0,0,width*2,height*2);
    disturbing=true;
    speed = 0;
    normalSpeed = 0;
     mc = loadImage("img/mcIdle.png");
     interviewIconX = -1100;
     topBarX = -1100;
  }
  
  
    if(viewPoint<0 && ending !=0){
      fill(0);
    rect(0,0,width*2,height*2);
      timeStringX=-1100;
     minusStringX=-1100;
      mc = loadImage("img/mcIdle.png");
     truthendTimer++;
  }

  
  
    if(day == 1){

      startTimer++;
      if(teached == false){
    noStroke();
    fill(255,180);
    rectMode(CORNER);
    rect(0,0,960,76);
    image(interview,0,-10);
    
    textAlign(RIGHT);
    fill(#6c5a4a);
    scoreString = "View: "+str(viewPoint);
    text(scoreString,950,50);
   
    timeString = "00:15";
    textAlign(CENTER);
    text(timeString,490,50);
    
    fill(#6c5a4a);
    distanceString = str(remainDistance) + "/" + str(maxDistance);
    textSize(45);
    textAlign(RIGHT);
    text(distanceString,950,520);
    
      }
    }



if(startTimer>150){
   if(teachingChecked==0)image(startRunDay1,0,0);
   if(teachingChecked==1)image(teaching1,0,0,960,540);
    if(teachingChecked==2)image(teaching2,0,0,960,540);
if(teachingChecked==3){
       bbTimer++;
       teached = true;
       if(bbTimer>20){
       
       rectMode(CENTER);
       textSize(80);
      fill(255);
      stroke(#6c5a4a);
      strokeWeight(5);
      rect(480,230,370,80);
      fill(#6c5a4a);
      textAlign(CENTER);
       text("DAY 1",480,260);
       }
  
     if(bbTimer>60){
      rectMode(CENTER);
      fill(255);
      stroke(#6c5a4a);
      strokeWeight(5);
      rect(480,330,370,80);
      fill(#6c5a4a);
      textAlign(CENTER);
       text("START",480,360);
     }
     if(bbTimer>=99 && bbTimer<100){
               start.trigger();
               }
     if(bbTimer>100){
       RUN=true;
     teachingChecked+=1;
     START = true;
     }
}
}


 if(keyPressed==true && keyCode == RIGHT && teachingChecked>=4){
   if(day == 1)teached = true;
   startRunX =-1100;
 
}

if(START == true){
  textSize(45);
 //-------UI------------
 if(player.materialNum!=3 && interviewing == false)gameTimer--;
 //UI interview
    noStroke();
    fill(255,180);
    rectMode(CORNER);
    rect(topBarX,0,960,76);
    image(interview,interviewIconX,-10);
    
       //UI score
       if(ending==truthEnding){
          textAlign(RIGHT);
          fill(#6c5a4a);
          if(viewPoint<=0){
          scoreString = "View:    ";
          oneX = -1100;
          }else{
          scoreString = "View: "+str(viewPoint)+"  ";
          }
          text(scoreString,950,50);
          fill(#00e3e3);
          text( "                1",oneX,50);
          
          
          
       }else{
       textAlign(RIGHT);
       fill(#6c5a4a);
       scoreString = "View: "+str(viewPoint);
       text(scoreString,950,50);
       }
    
    
    //UI Time
    
    second = floor((gameTimer/60)%60);
    timeString = "00:"+str(second);
    textAlign(CENTER);
    fill(#6c5a4a);
    if(gameTimer<timeLimit1){
      fill(#ff6600);
       if(gameTimer<=timeLimit2){
         countforWarning++;
         fill(#ff0000);
         if(countforWarning>=3&&countforWarning<=4&& interviewing!=true && truthendTimer<150)buzzer.trigger();
         if(countforWarning<30)textSize(55); 
         if(countforWarning>60){
           countforWarning=0;
         }
       }
      timeString = "00:0"+str(second);
    }
    text(timeString,timeStringX,50);
    
    if(gameTimer<=0){
      gameTimer=0;
      countforminus++;
      textSize(45);
      textAlign(RIGHT);
      fill(#ff0000);
      text(minusPoint,minusStringX,90);
      if(countforminus>=60){
          gameTimer = GAME_INIT_TIMER;
          if(ending==truthEnding){
          viewPoint-=50;
          }else{
          viewPoint+=minusPoint;
          }
          countforminus=0;
      }
    }
  }



//------------police-----------------
  
   if(policeAppear == true){
   for(Police t : police){
      if(t == null ) continue;
      t.checkCollision();
      t.update();
      t.display();
    }
   }
     //--------------------------
    
    

    
   
    
 
    
    
        //people
    
    for(People e : people){
      if(e == null ) continue;
      e.update();
      
    }
    
 if(ending==0){
   for(Passerby k : passerby){
      if(k == null ) continue;
      k.checkCollision();
      k.update();
    }
    }
    
     //Display people on line 1
     if(screambroAppear == true && killerLV>=3 && meetedScreambro == false){
     screambro.update();
     screambro.checkCollision();
     screambro.display();
     
     }
     
      if(screambrofinalAppear == true && killerLV>=9){
     screambro.update();
     screambro.checkCollision();
     screambro.display();
     
     }
     
     
     
    for(int i=0;i<people.length;i++){
         if(people[i] == null ) continue;
        if(people[i].y==upLine)people[i].display();
    }
    
        for(int i=0;i<passerby.length;i++){
         if(passerby[i] == null ) continue;
        if(passerby[i].y==upLine)passerby[i].display();
    }
    
    
    //maincharacter
    player.update();
    player.display();
    
    //Display people on line 2 3
     for(int i=0;i<people.length;i++){
         if(people[i] == null ) continue;
        if(people[i].y!=upLine)people[i].display();
    }
    
    for(int i=0;i<passerby.length;i++){
         if(passerby[i] == null ) continue;
        if(passerby[i].y!=upLine)passerby[i].display();
    }
    
    // Make the player be in front of the people who are at line02
     if(player.y==downLine){
          image(mc, 40, downLine);
     }
     
     for(People e : people){
      if(e == null ) continue;
      e.checkCollision();
      e.displayMaterial();
    }
    
    //開始奔跑
      if(day != 1){
textSize(45);
if(ending==0)image(startRun, startRunX,0);
textAlign(LEFT);
  }
  //-----------bbbbbbbbbbbbb----------------------
  if(day>=2){
          if(startcheck==1){
            bbTimer++;
                 
                 if(bbTimer>20){
                 
                 rectMode(CENTER);
                 textSize(80);
                fill(255);
                stroke(#6c5a4a);
                strokeWeight(5);
                rect(480,230,370,80);
                fill(#6c5a4a);
                textAlign(CENTER);
                 if(day==2)text("DAY 5",480,260);
                 if(day==3)text("DAY 3",480,260);
                 if(day==4)text("DAY 4",480,260);
                 if(day==5)text("DAY 5",480,260);
                 if(day==6)text("DAY 6",480,260);
                 if(day==7)text("DAY 7",480,260);
                 if(day==8)text("DAY 8",480,260);
                 if(day==9)text("DAY 9",480,260);
                 }
            
               if(bbTimer>60){
                rectMode(CENTER);
                fill(255);
                stroke(#6c5a4a);
                strokeWeight(5);
                rect(480,330,370,80);
                fill(#6c5a4a);
                textAlign(CENTER);
                 text("START",480,360);
               }
               if(bbTimer>=99 && bbTimer<100){
               start.trigger();
               }
               
               if(bbTimer>100){
                 RUN=true;
                 START = true;
               startcheck+=1;
               }
          }
}
//--------------bbbbbbbbbbbbbbbb-------------------------
    
    
    //UI distance
    if(speed==2)distanceCount++;
    if(speed==16)distanceCount+=8;
    
    if(distanceCount>=108){
      if(remainDistance>0) remainDistance--;
      distanceCount=0;
    }
    
    fill(#6c5a4a);
    distanceString = str(remainDistance) + "/" + str(maxDistance);
    textSize(45);
    textAlign(RIGHT);
    if(START == true){
      if(remainDistance<=5)fill(#ff0000);
    if(ending==0)text(distanceString,950,520);
    }


//-------------------truthEnding final------------------


if(truthendTimer>120){
  textAlign(RIGHT);
   fill(#00e3e3);
  text( "                1",942,50);

                      }
if(truthendTimer>=120&&truthendTimer<121)up.trigger();

if(truthendTimer>240){
  
                          fill(0);
                        rect(0,0,width*2,height*2);
                      if(truthendTimer>340){
                         fill(255);
                         textAlign(CENTER);
                            text("Thanks for playing",480,240);
                            textSize(20);
                            text("Ending 4 of 4",480,330);
                            if(truthendTimer>585){
                            fill(0);
                        rect(0,0,width*2,height*2);
                            }
                      }

    }
    
    if(truthendTimer>=240 && truthendTimer<241){
    truth.play();
    }

    if(truthendTimer>585){

     fill(255);
     textSize(18);
    textAlign(CENTER);
    text("《跑跑新聞》",480,80);
    textAlign(LEFT);
    text("遊戲設計   全體組員",395,140);
    text("故事   廖健澔 黃芷萱",431,170);
    text("對白   廖健澔",431,200);
    text("美術   黃芷萱 詹涵宇 洪瑀宣 黃盈瑄",431,230);
    text("程式   廖健澔",431,260);
    textAlign(CENTER);
    text("特別感謝",480,340);
    textAlign(LEFT);
    text("指導老師   余能豪",395,370);
    text("助教   劉式閎",431,400);
    text("測試同學   宗璇 小郭 嘉元 熏平 旻恩",395,430);
    
 
    }
    
 /*    if(truthendTimer>765){
      textSize(12);
    textAlign(CENTER);
    text("音樂與音效",480,80);
     text("Pixel Game Beep    from 18hiltc from Freesound.org",480,140);
      text("Pixel Song #31      form hmmm101 from Freesound.org",480,170);
       text("Pixel Song #8      form hmmm101 from Freesound.org",480,200);
        text("Run For Your Life     from Krucifix444 from Freesound.org",480,230);
         text("News & Sounds     from Connum from Freesound.org",480,260);
     }*/
    
    
        //淡出
    if(truthendTimer>540 && truthendTimer<590){
          fill(0,alpha);
      rect(0,0,width*2,height*2);
    if(alpha<255 ){
      alpha+=5;
    }
    }
      //淡入
        if(truthendTimer>589){
          fill(0,alpha);
      rect(0,0,width*2,height*2);
    if(alpha>0 ){
      alpha-=5;
    }
    }
    
 

    
    break;
    
    
    
    case GAME_REPORT: // report
    
    
    //Report
    stoptheMusic();
    musicTimer2++;
    
    if(firstReport== true && musicTimer2>=1 && musicTimer2<2){
    news.trigger();
    
    }
    
    if(drugLV>=8){
    ending = fansEnding;
    
    }
    
    
    if(ghostLV>=9){
    ending = monkEnding;
    
    }
    
       if(firstReport==true){
      report.update();
    report.display();
    }
    
    if(firstReport==false){
    report.firstreport();
    }
    
 


   
    
    
    //Score
    
    break;
    
       case GAME_CROWD: // people come for the news
    
      plus.count();
      plus.display();
    
    //Score
    
    break;
    
    case GAME_LOSE: //  viewPoint<0
      
      stoptheMusic();
      fill(0);
      rect(0,0,width*2,height*2);
      textAlign(CENTER);
      fill(255);
      textSize(45);
      text("GAME OVER...",480,270);
      textSize(20);
      text("太慢了...",460,320);
    
    break;
    
        case GAME_TRUTH: //  Into the house
      
      stoptheMusic();
      endTimer++;
      radioCount++;
      
      ending = truthEnding ;
      fill(0);
      rect(0,0,width*2,height*2);
      textAlign(CENTER);
      fill(255);
      textSize(45);
      text("當天夜裡...",480,270);
      if(endTimer>=120 && endTimer<121){
     open.trigger();
      }
       if(endTimer>=120 ){
       fill(0);
      rect(0,0,width*2,height*2);
      }
      
     
      if(endTimer > 160 && tutuStop == false){
      imageMode(CENTER);
        tint(150);
      image(houseInside1,480,270,width,height);
      radioCount++;
     tutu.play();
      tutu.loop();
      }
      if(radioCount>30) {
        houseInside1  =  loadImage("img/final2.png");
      }
       if(radioCount>60) {
          houseInside1  =  loadImage("img/final1.png");
        radioCount=0;
      }
      
       if(endTimer > 250 && endTimer <=350){
         radiotalkA=480;
         textAlign(CENTER);
      textSize(25);
      fill(255,180);
      noStroke();
      rectMode(CENTER);
           rect(radiotalkA,473,width,30);
      fill(30);
      text("歡迎收聽今天的跑跑新聞",radiotalkA,480);
       }
       
             if(endTimer >350 && endTimer <=450 ){
               radiotalkA = -1100;
        radiotalkB=480;
      fill(255,180);
           rect(radiotalkB,473,width,30);
      fill(30);
      textSize(25);
      text("今天在廢棄的屋子又傳出尖叫聲",radiotalkB,480);
       }
       
            if(endTimer >450 && endTimer <=550){
              radiotalkB = -1100;
         radiotalkC=480;
      fill(255,180);
           rect(radiotalkC,473,width,30);
      fill(30);
      textSize(25);
      text("叫聲大概是這樣",radiotalkC,480);
       }
       
        if(endTimer >550){
          radiotalkC = -1100;
        tutu.pause();
        tutuStop=true;

       }
       
       if(endTimer >550){
          radiotalkC = -1100;
          fill(0);
      rect(0,0,width*3,height*3);
     

       }
       
      if(endTimer >=550 && endTimer <551){
         scream.trigger();
      }
      
      
      
      
      
       if(endTimer > 730){
    gameState =  GAME_REPORT;
      
      }
      
    
    break;
    
     case GAME_BADEND: // bad end
     endTimer++;
     if(ending == fansEnding){
       
                        fill(0);
                        rect(0,0,width*2,height*2);
                      if(endTimer>100){
                         fill(255);
                         textAlign(CENTER);
                         textSize(45);
                            text("Thanks for playing",480,240);
                             textSize(20);
                            text("Ending 2 of 4",480,330);
                      }
     }
     
     if(ending == screambroEnding || ending == monkEnding){
       
       fill(0);
       
  rect(0,0,width*2,height*2);
  fill(255);
  textAlign(CENTER);
  text("當天夜裡...",480,240);


                  
                  if(endTimer>100){
                    
                    
                    
                       tint(80);
                       image(bg1,0, 0);
                       image(house,250,40);
                       
                       
                  
                   
                  
                       
                       noStroke();
                      
                      if(endTimer>280){
                        screamXatTeach = 0;
                        image(screamImage,screamXatTeach,0);
                     
                      }
                       if(endTimer>=280 &&endTimer<281){
                           scream.trigger();
                       }
                      
                      if(endTimer>400){
                             screamXatTeach=-1100;
                      }
                      if(endTimer>520){
                        fill(0);
                        rect(0,0,width*2,height*2);
                      }
                      if(endTimer>580){
                         fill(255);
                         textAlign(CENTER);
                         textSize(45);
                            text("Thanks for playing",480,240);
                             textSize(20);
                            if(ending == monkEnding)text("Ending 3 of 4",480,330);
                            if(ending == screambroEnding)text("Ending 1 of 4",480,330);
                      }
                      
                     
                  }
     
     
     }
     
     
     break;

}
}


      
      boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh){
  return  ax + aw >= bx+50 &&    // a right edge past b left
        ax <= bx + 50 &&    // a left edge past b right
        ay + ah > by &&    // a top edge past b bottom
        ay < by + bh;
      }
  



 
  
  


void keyPressed(){
  if(key==CODED && interviewing == false &&  disturbing==false){
    switch(keyCode){
      case UP:
      upState = true;
      break;
      case DOWN:
      downState = true;
      break;
      case RIGHT:
      if(day == 1&&teachingChecked<=2)teachingChecked++;
      if((day>1) && startcheck<1)startcheck++;
      rightState = true;
      if(ending!=truthEnding)normalSpeed*=faster;
      break;
    }
  }
    if(key=='z'){
  z = true;
  }
  
}

void keyReleased(){
  if(key==CODED && interviewing == false && disturbing==false  ){
    switch(keyCode){
      case UP:
      upState = false;
      break;
      
      case DOWN:
      downState = false;
      break;
      
      case RIGHT:
      normalSpeed=2;
      rightState = false;
      break;
    }
  }
  if(key=='z'){
  z = false;
  }
}


void playtheMusic(){
if(ending==0)bgm.play();
if(ending==fansEnding ||oneMusic==true || ending==monkEnding)badend.play();
}

void stoptheMusic(){
bgm.pause();
bgm.rewind();
}
