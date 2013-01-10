//
//  ViewController.h
//  denntaku
//
//  Created by 永尾　滉二 on 12/10/23.
//  Copyright (c) 2012年 koji nagao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    double x;
    double y;
    double Z;
    int n;
    int shou;
    int answer;
    int keisan;
    double W;
    double s;
}
@property (weak, nonatomic) IBOutlet UILabel *gamenn;
/*@property enum {x,y} state;*/

- (IBAction)AC:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;



- (IBAction)equal:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)hiku:(id)sender;
- (IBAction)kakeru:(id)sender;
- (IBAction)waru:(id)sender;
- (IBAction)period:(id)sender;
@end
