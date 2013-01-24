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

@synthesize model;

- (void)viewDidLoad
{
    [super viewDidLoad];
    model = [[StateMachine alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
double x=0;
double y=0;
double Z=0;
int n=1;
int shou=0;
int answer;
int keisan=0;
double W=0;
double s=0;
*/


- (IBAction)AC:(id)sender {//ACを押したとき初期状態に戻す
    [model reset];
    [[self gamenn] setText:[NSString stringWithFormat:@"%d", 0]];
}

- (IBAction)zero:(id)sender {//0を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:0]]];
    
 }

- (IBAction)one:(id)sender {//1を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:1]]];
    
}

- (IBAction)two:(id)sender {//2を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:2]]];
}

- (IBAction)three:(id)sender {//3を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:3]]];
    
}

- (IBAction)four:(id)sender {//4を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:4]]];
    
}

- (IBAction)five:(id)sender {//5を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:5]]];
    
}
- (IBAction)six:(id)sender {//6を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:6]]];}

- (IBAction)seven:(id)sender {//7を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:7]]];
    
}

- (IBAction)eight:(id)sender {//8を押したとき
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:8]]];

}

- (IBAction)nine:(id)sender {//9を押したとき
     [[self gamenn] setText:[NSString stringWithFormat:@"%g", [model kazu:9]]];
}



- (IBAction)equal:(id)sender {//=を押したとき
    result = [model calc];
    [[self gamenn] setText:[NSString stringWithFormat:@"%g", result]];
    
}
    


- (IBAction)period:(id)sender {//小数点の計算
    [model dot];  //shou=1に設定しelse if(shou==1)の部分で小数点の計算を行う
   }



- (IBAction)plus:(id)sender {//足し算の計算
    [model kigou:1];
    [[self gamenn] setText:[NSString stringWithFormat:@"%d", 0]];
  
}

- (IBAction)hiku:(id)sender {//引き算の計算
    [model kigou:2];
    [[self gamenn] setText:[NSString stringWithFormat:@"%d", 0]];
  
    
}

- (IBAction)kakeru:(id)sender {//かけ算の計算
    [model kigou:3];
    [[self gamenn] setText:[NSString
                                stringWithFormat:@"%d", 0]];
   
    
}

- (IBAction)waru:(id)sender {//割り算の計算
    [model kigou:4];
    [[self gamenn] setText:[NSString
                                stringWithFormat:@"%d", 0]];
  
    
    
}


/*
-(void)reset{
    x=0;
    y=0;
    Z=0;
    shou=0;
    n=1;
    W=0;
    s=0;
    keisan=0;
    answer=0;
}



- (double)kazu:(double)k{
    
    switch(keisan) {
        case 0:
            if(shou == 0){
                x=x*10+k;
                
                return x;
            }
            
            else if(shou==1){
                
                W=k*pow(10,(-n));
                
                s=W+x;
                
                x=s;
                n=n+1;
                return s;
            }
            
            
            break;
            
        case 1:
            if(shou == 0){
                y=y*10+k;
                
                return y;
            }
            else if(shou==1)
            {
                W=k*pow(10,(-n));
                
                s=W+y;
                
                y=s;
                n=n+1;
                return s;
            }
            
            break;
            
    }
    
    return 0;
}


- (double)calc{
    switch(answer){
        case 1://足し算の計算を行う
            
            Z=x+y;
            break;
            
            
        case 2://引き算の計算を行う
            
            Z=x-y;
            break;
            
            
        case 3://かけ算の計算を行う
            
            Z=x*y;
            break;
            
            
        case 4://割り算の計算を行う
            
            Z=x/y;
            break;
    }
    
    x=Z;
    y=0;
    keisan=0;//状態を戻す
    
    return Z;
    
}

- (void)dot{
    shou=1;
}

- (void)kigou:(int)ans{
    if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        
    }
    answer = ans;
}
*/

@end
