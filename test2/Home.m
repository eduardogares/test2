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

int state=1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)botonsito:(id)sender {
    
    NSDate *currentDate = [NSDate date];
    NSString *textoParaMostrar;
    
    if(state==0){
        textoParaMostrar = @"the time is .. tap again";
        
        self.lblBotonsito.textColor = [UIColor greenColor];
    }
    else if(state==1)  {
        self.lblBotonsito.textColor = [UIColor redColor];
        NSDateFormatter *timeStamp = [[NSDateFormatter alloc] init];
        [timeStamp setDateFormat:@"HH:mm:ss"];
        
        textoParaMostrar = [timeStamp stringFromDate:currentDate];
    }
    else if(state==2)  {
        self.lblBotonsito.textColor = [UIColor blueColor];
        textoParaMostrar = @"and the date is .. try again";
    }
    else if(state==3)  {
        self.lblBotonsito.textColor = [UIColor yellowColor];
        NSDateFormatter *dayStamp = [[NSDateFormatter alloc] init];
        [dayStamp setDateFormat:@"dd-MM-yyyy"];
        
        textoParaMostrar = [dayStamp stringFromDate:currentDate];
    }
    else if(state==4)  {
        self.lblBotonsito.textColor = [UIColor blackColor];
        NSDateFormatter *wholeDate = [[NSDateFormatter alloc] init];
        [wholeDate setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
        
        textoParaMostrar =[wholeDate stringFromDate:currentDate];
        textoParaMostrar =[textoParaMostrar stringByAppendingString:@" es la fecha"];
        
        state=-1;
    }
    
    self.lblBotonsito.text =textoParaMostrar;
    
    state++;
 }

float redValue=0;
float greenValue=0;
float blueValue=0;

- (IBAction)updateRed:(id)sender {
    int value = (int)(self.slRed.value);
    self.tfRed.text=[NSString stringWithFormat:@"%i",value];
    
    redValue=self.slRed.value/255;
    
    //self.tfRed.text=[NSString stringWithFormat:@"%f",redValue];
    
    self.lblCirculo.textColor =
    [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
}
- (IBAction)updateGreen:(id)sender {
    int value = (int)(self.slGreen.value);
    self.tfGreen.text=[NSString stringWithFormat:@"%i",value];
    
    greenValue=self.slGreen.value/255;
    //self.tfGreen.text=[NSString stringWithFormat:@"%f",greenValue];
    
    self.lblCirculo.textColor =
    [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    
}
- (IBAction)updateBlue:(id)sender {
    
    int value = (int)(self.slBlue.value);
    self.tfBlue.text=[NSString stringWithFormat:@"%i",value];
    
    blueValue=self.slBlue.value/255;
    //self.tfBlue.text=[NSString stringWithFormat:@"%f",blueValue];
    
    
    self.lblCirculo.textColor =
    [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
}

- (IBAction)changeSwitchState:(id)sender {
    
    
    
    if ([self.switchOnOff isOn]) {
        NSLog(@"its on!");
        self.lblCirculo.textColor =
        [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    } else {
        NSLog(@"its off!");
        self.lblCirculo.textColor =
        [[UIColor alloc] initWithRed:1 green:1 blue:1 alpha:1.0];
    }
    
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
