//
//  ViewController.m
//  denntaku
//
//  Created by 永尾　滉二 on 12/10/23.
//  Copyright (c) 2012年 koji nagao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




double x=0;
double y=0;
double Z=0;
int n=1;
int shou=0;
int answer;
int keisan=0;
double W=0;
double s=0;



- (IBAction)AC:(id)sender {//ACを押したとき初期状態に戻す
    x=0;
    y=0;
    Z=0;
    shou=0;
    n=1;
    W=0;
    s=0;
    keisan=0;
    [[self gamenn] setText:[NSString
                            stringWithFormat:@"%d", 0]];
    answer=0;
}
            
            
- (IBAction)zero:(id)sender {//0を押したとき
   switch(keisan) {
       case 0:           //最初の入力をxとする
            
            if(shou == 0){   //整数の場合
             x=x*10;
             [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            else if(shou==1)//少数の場合
            {
                W=0*pow(10,(-n));//10の-n乗の計算
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;      //nを増やすことで小数点の位置をずらす
            }
            break;
            
            
         case 1://符号を入力した後の入力をyとする
            
            if(shou == 0){       //整数の場合
             y=y*10;
         [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)      //少数の場合
            {
                W=0*pow(10,(-n));//10の-n乗の計算
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;     //nを増やすことで小数点の位置をずらす
            }
         break;
    }
    
 }

- (IBAction)one:(id)sender {//1を押したとき
 switch(keisan) {
        case 0:
          if(shou == 0){
            x=x*10+1;
          [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
          }
          
          else if(shou==1){
              
              W=1*pow(10,(-n));
              
              s=W+x;
              [[self gamenn] setText:[NSString
                                      stringWithFormat:@"%g", s]];
              x=s;
              n=n+1;
          }

          
            break;
            
        case 1:
          if(shou == 0){
            y=y*10+1;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
          }
          else if(shou==1)
          {
              W=1*pow(10,(-n));
              
              s=W+y;
              [[self gamenn] setText:[NSString
                                      stringWithFormat:@"%g", s]];
              y=s;
              n=n+1;
          }

        break;
    }
    
}

- (IBAction)two:(id)sender {//2を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+2;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=2*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+2;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=2*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
  }

- (IBAction)three:(id)sender {//3を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+3;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=3*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+3;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=3*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
    
}

- (IBAction)four:(id)sender {//4を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+4;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=4*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+4;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=4*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
      }

- (IBAction)five:(id)sender {//5を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+5;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=5*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+5;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=5*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
   
    
}
- (IBAction)six:(id)sender {//6を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+6;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=6*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+6;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=6*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
    
}

- (IBAction)seven:(id)sender {//7を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+7;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=7*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+7;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=7*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
    
}

- (IBAction)eight:(id)sender {//8を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+8;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=8*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+8;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=8*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
    
}

- (IBAction)nine:(id)sender {//9を押したとき
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+9;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            }
            
            else if(shou==1){
                
                W=9*pow(10,(-n));
                
                s=W+x;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                x=s;
                n=n+1;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+9;
                [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
            }
            else if(shou==1)
            {
                W=9*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                        stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            
            break;
    }
   }


- (IBAction)equal:(id)sender {//=を押したとき
    switch(answer){
        case 1://足し算の計算を行う
            
            Z=x+y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", Z]];
            x=Z;
            y=0;
            keisan=0;//状態を戻す
            break;
            
            
        case 2://引き算の計算を行う
            
            Z=x-y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=0;//状態を戻す
            break;
            
            
        case 3://かけ算の計算を行う
            
            Z=x*y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", Z]];
            x=Z;
            y=0;
            keisan=0;//状態を戻す
            break;
            
            
        case 4://割り算の計算を行う
            
            Z=x/y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", Z]];
            x=Z;
            y=0;
            keisan=0;//状態を戻す
            break;

    
    
    
    }
}

- (IBAction)period:(id)sender {//小数点の計算
   shou=1;  //shou=1に設定しelse if(shou==1)の部分で小数点の計算を行う
   }




- (IBAction)plus:(id)sender {//足し算の計算
    if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString stringWithFormat:@"%d", 0]];
        answer=1;//epualのcase1に入る
    }
}

- (IBAction)hiku:(id)sender {//引き算の計算
    if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString stringWithFormat:@"%d", 0]];
        answer=2;//epualのcase2に入る
    }
}

- (IBAction)kakeru:(id)sender {//かけ算の計算
 if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString
                                stringWithFormat:@"%d", 0]];
        answer=3;//epualのcase3に入る
    }
}

- (IBAction)waru:(id)sender {//割り算の計算
 if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString
                                stringWithFormat:@"%d", 0]];
        answer=4;//epualのcase4に入る
    }
    
}




@end
