//
//  ViewController.m
//  test2
//
//  Created by EDGE on 9/13/17.
//  Copyright © 2017 EDGE. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

int state=0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)botonsito:(id)sender {
    
    NSDate *currentDate = [NSDate date];
    NSString *textoParaMostrar;
    
    if(state==0)  {
        textoParaMostrar = @"the time is .. tap again";
    }
    else if(state==1)  {
        NSDateFormatter *timeStamp = [[NSDateFormatter alloc] init];
        [timeStamp setDateFormat:@"HH:mm:ss"];
        
        textoParaMostrar = [timeStamp stringFromDate:currentDate];
    }
    else if(state==2)  {
        textoParaMostrar = @"and the date is .. try again";
    }
    else if(state==3)  {
        NSDateFormatter *dayStamp = [[NSDateFormatter alloc] init];
        [dayStamp setDateFormat:@"dd-MM-yyyy"];
        
        textoParaMostrar = [dayStamp stringFromDate:currentDate];
    }
    else if(state==4)  {
        NSDateFormatter *wholeDate = [[NSDateFormatter alloc] init];
        [wholeDate setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
        
        textoParaMostrar =[wholeDate stringFromDate:currentDate];
        textoParaMostrar =[textoParaMostrar stringByAppendingString:@" es la fecha"];
        
        state=-1;
    }
    
    self.lblBotonsito.text =textoParaMostrar;
    
    state++;
 }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
