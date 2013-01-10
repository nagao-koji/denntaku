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



- (IBAction)AC:(id)sender {
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
/*
- (void)Button:(int)number{
    switch(keisan){
        case 0:
            
            if(shou == 0){
                x=x*10+number;
                [[self gamenn] setText:[NSString
                        stringWithFormat:
                                    @"%g", x]];
            }
    
    
    else
    {
        W=number*pow(10,(-n));
        
        s=W+x;
        [[self gamenn] setText:[NSString
                                stringWithFormat:@"%g", s]];
        x=s;
        n=n+1;
    }
            break;
            
        case 1:
            
            if(shou == 0){
                y=y*10+number;
                [[self gamenn] setText:[NSString
                                    stringWithFormat:@"%g", y]];
            }
            
            
            else
            {
                W=number*pow(10,(-n));
                
                s=W+y;
                [[self gamenn] setText:[NSString
                                    stringWithFormat:@"%g", s]];
                y=s;
                n=n+1;
            }
            break;
    }
}
            */
            
            
            
            
            
- (IBAction)zero:(id)sender {
    switch(keisan) {
         case 0:
             x=x*10;
             [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];             break;
             
         case 1:
             y=y*10;
         [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
         break;
     }
    
   /* [self Button:0];*/
}

- (IBAction)one:(id)sender {
  switch(keisan) {
        case 0:
            x=x*10+1;
          [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+1;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
    /*[self Button:1];*/
}

- (IBAction)two:(id)sender {
 switch(keisan) {
        case 0:
            x=x*10+2;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+2;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
   /*[self Button:2];*/
}

- (IBAction)three:(id)sender {
  switch(keisan) {
        case 0:
            x=x*10+3;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+3;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
    
   /* [self Button:3];*/
}

- (IBAction)four:(id)sender {
   switch(keisan) {
        case 0:
            x=x*10+4;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+4;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
         break;
    }
    
    /*[self Button:4];*/
}

- (IBAction)five:(id)sender {
    switch(keisan) {
        case 0:
            x=x*10+5;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+5;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
    
   /*[self Button:5];*/
    
}
- (IBAction)six:(id)sender {
   switch(keisan) {
        case 0:
            x=x*10+6;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+6;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
    
    /*[self Button:6];*/
}

- (IBAction)seven:(id)sender {
   switch(keisan) {
        case 0:
            x=x*10+7;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+7;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
    
   /* [self Button:7];*/
}

- (IBAction)eight:(id)sender {
   switch(keisan) {
        case 0:
            x=x*10+8;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+8;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
    
    /*[self Button:8];*/
}

- (IBAction)nine:(id)sender {
    switch(keisan) {
        case 0:
            x=x*10+9;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", x]];
            break;
            
        case 1:
            y=y*10+9;
        [[self gamenn] setText:[NSString stringWithFormat:@"%g", y]];
        break;
    }
    
   /* [self Button:9];*/
}


- (IBAction)equal:(id)sender {
    switch(answer){
        case 1:
            
            Z=x+y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", Z]];
            x=Z;
            y=0;
            keisan=0;
            break;
            
            
        case 2:
            
            Z=x-y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=0;
            break;
            
            
        case 3:
            
            Z=x*y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", Z]];
            x=Z;
            y=0;
            keisan=0;
            break;
            
            
        case 4:
            
            Z=x/y;
            [[self gamenn] setText:[NSString stringWithFormat:@"%g", Z]];
            x=Z;
            y=0;
            keisan=0;
            break;

    
    
    
    }
}

- (IBAction)period:(id)sender {
    shou=1;
}




- (IBAction)plus:(id)sender {
    if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString stringWithFormat:@"%d", 0]];
        answer=1;
    }
}

- (IBAction)hiku:(id)sender {
    if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString stringWithFormat:@"%d", 0]];
        answer=2;
    }
}

- (IBAction)kakeru:(id)sender {
 if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString
                                stringWithFormat:@"%d", 0]];
        answer=3;
    }
}

- (IBAction)waru:(id)sender {
 if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self gamenn] setText:[NSString
                                stringWithFormat:@"%d", 0]];
        answer=4;
    }
    
}




@end
