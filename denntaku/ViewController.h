//
//  ViewController.h
//  denntaku
//
//  Created by 永尾　滉二 on 12/10/23.
//  Copyright (c) 2012年 koji nagao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachine.h"

@interface ViewController : UIViewController{
/*    double x;
    double y;
    double Z;
    int n;
    int shou;
    int answer;
    int keisan;
    double W;
    double s;
 */
  double result;
}
@property (weak, nonatomic) IBOutlet UILabel *gamenn;
@property StateMachine* model;
/*@property enum {x,y} state;*/

- (IBAction)AC:(id)sender;//AC
- (IBAction)zero:(id)sender;//0
- (IBAction)one:(id)sender;//1
- (IBAction)two:(id)sender;//2
- (IBAction)three:(id)sender;//3
- (IBAction)four:(id)sender;//4
- (IBAction)five:(id)sender;//5
- (IBAction)six:(id)sender;//6
- (IBAction)seven:(id)sender;//7
- (IBAction)eight:(id)sender;//8
- (IBAction)nine:(id)sender;//9



- (IBAction)equal:(id)sender;//=
- (IBAction)plus:(id)sender;//+
- (IBAction)hiku:(id)sender;//-
- (IBAction)kakeru:(id)sender;//×
- (IBAction)waru:(id)sender;//÷
- (IBAction)period:(id)sender;//小数点

/*
-(double)calc;
-(void)kigou:(int)ans;
-(double)kazu:(double)k;
-(void)reset;
-(void)dot;
 */
@end
