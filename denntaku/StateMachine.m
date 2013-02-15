//
//  StateMachine.m
//  denntaku
//
//  Created by 永尾　滉二 on 13/01/24.
//  Copyright (c) 2013年 koji nagao. All rights reserved.
//

#import "StateMachine.h"
#import "ViewController.h"

@implementation StateMachine

double x=0;
double y=0;
double Z=0;
int n=1;
int shou=0;
int answer;
int keisan=0;
double W=0;
double s=0;

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
        case 0://先に入力された値の計算
            if(shou == 0){//実数の計算
                x=x*10+k;
                
                return x;
            }
            
            else if(shou==1){//少数の計算
                
                W=k*pow(10,(-n));
                
                s=W+x;
                
                x=s;
                n=n+1;
                return s;
            }
            
            
            break;
            
        case 1://後から入力された物の計算
            if(shou == 0){//実数の計算
                y=y*10+k;
                
                return y;
            }
            else if(shou==1)//少数の計算
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


@end

