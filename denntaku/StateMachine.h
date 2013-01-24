//
//  StateMachine.h
//  denntaku
//
//  Created by 永尾　滉二 on 13/01/24.
//  Copyright (c) 2013年 koji nagao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ViewController;

@interface StateMachine : NSObject{
    double x;
    double y;
    double Z;
    int n;
    int shou;
    int answer;
    int keisan;
    double W;
    double s;
    //double result;
}

-(double)calc;
-(void)kigou:(int)ans;
-(double)kazu:(double)k;
-(void)reset;
-(void)dot;

@end
