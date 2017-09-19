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
    //self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
    //self.profileImageView.clipsToBounds = YES;
    
    self.lblCirculo.layer.cornerRadius = self.lblCirculo.frame.size.width / 2;
    self.lblCirculo.clipsToBounds = YES;
    self.lblCirculo.backgroundColor =[UIColor blackColor];
    
}
- (IBAction)botonsito:(id)sender {
    
    NSDate *currentDate = [NSDate date];
    NSString *textoParaMostrar;
    
    if(state==0){
        textoParaMostrar = @"Y la nueva hora es !!";
        
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
        textoParaMostrar = @"y la fecha es !!!";
    }
    else if(state==3)  {
        self.lblBotonsito.textColor = [UIColor purpleColor];
        NSDateFormatter *dayStamp = [[NSDateFormatter alloc] init];
        [dayStamp setDateFormat:@"dd-MM-yyyy"];
        
        textoParaMostrar = [dayStamp stringFromDate:currentDate];
    }
    else if(state==4)  {
        self.lblBotonsito.textColor = [UIColor orangeColor];
        NSDateFormatter *wholeDate = [[NSDateFormatter alloc] init];
        [wholeDate setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
        
        textoParaMostrar =[wholeDate stringFromDate:currentDate];
        textoParaMostrar =[textoParaMostrar stringByAppendingString:@" = fecha y hora !"];
        
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
    self.lblRed.text=[NSString stringWithFormat:@"%i ",value];
    
    redValue=self.slRed.value/255;
    
    //self.tfRed.text=[NSString stringWithFormat:@"%f",redValue];
    
    //self.lblCirculo.textColor =
    self.lblCirculo.backgroundColor=
    [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    self.lblRed.textColor =
    [[UIColor alloc] initWithRed:redValue green:0 blue:0 alpha:1.0];
    
}
- (IBAction)updateGreen:(id)sender {
    int value = (int)(self.slGreen.value);
    self.lblGreen.text=[NSString stringWithFormat:@"%i ",value];
    
    greenValue=self.slGreen.value/255;
    //self.tfGreen.text=[NSString stringWithFormat:@"%f",greenValue];
    
    self.lblCirculo.backgroundColor =
    [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    self.lblGreen.textColor =
    [[UIColor alloc] initWithRed:0 green:greenValue blue:0 alpha:1.0];
}
- (IBAction)updateBlue:(id)sender {
    
    int value = (int)(self.slBlue.value);
    self.lblBlue.text=[NSString stringWithFormat:@"%i ",value];
    
    blueValue=self.slBlue.value/255;
    //self.tfBlue.text=[NSString stringWithFormat:@"%f",blueValue];
    
    
    self.lblCirculo.backgroundColor =
    [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    self.lblBlue.textColor =
    [[UIColor alloc] initWithRed:0 green:0 blue:blueValue alpha:1.0];
}

- (IBAction)changeSwitchState:(id)sender {
    if ([self.switchOnOff isOn]) {
        NSLog(@"its on!");
        self.lblCirculo.backgroundColor =
        [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
        
        self.slRed.enabled=true;
        self.slGreen.enabled=true;
        self.slBlue.enabled=true;
        
        self.btnRandom.enabled=true;
        
    } else {
        NSLog(@"its off!");
        self.lblCirculo.backgroundColor =
        [[UIColor alloc] initWithRed:1 green:1 blue:1 alpha:1.0];
        
        self.slRed.enabled      =false;
        self.slGreen.enabled    =false;
        self.slBlue.enabled     =false;
        
        self.btnRandom.enabled=false;
    }
}

- (IBAction)btnRandomAction:(id)sender {
    
    redValue=arc4random()%256;
    greenValue=arc4random()%256;
    blueValue=arc4random()%256;
    
    
    self.slRed.value=redValue;
    self.slGreen.value=greenValue;
    self.slBlue.value=blueValue;
    
    int value = (int)(self.slRed.value);
    self.lblRed.text=[NSString stringWithFormat:@"%i ",value];
    
    value = (int)(self.slGreen.value);
    self.lblGreen.text=[NSString stringWithFormat:@"%i ",value];
    
    value = (int)(self.slBlue.value);
    self.lblBlue.text=[NSString stringWithFormat:@"%i ",value];
    
    redValue=redValue/255;
    greenValue=greenValue/255;
    blueValue=blueValue/255;
    
    self.lblCirculo.backgroundColor =
    [[UIColor alloc] initWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    self.lblRed.textColor =
    [[UIColor alloc] initWithRed:redValue green:0 blue:0 alpha:1.0];
    self.lblGreen.textColor =
    [[UIColor alloc] initWithRed:0 green:greenValue blue:0 alpha:1.0];
    self.lblBlue.textColor =
    [[UIColor alloc] initWithRed:0 green:0 blue:blueValue alpha:1.0];
    
}

- (IBAction)btnAlertAction:(id)sender {
    
    NSString *texto;
    
    if ([self.switchOnOff isOn]) {
        texto=@"nombre [";
        texto =[texto stringByAppendingString:self.tfNameAlert.text];
        texto =[texto stringByAppendingString:@"] telefono ["];
        texto =[texto stringByAppendingString:self.tfPhoneAlert.text];
        texto =[texto stringByAppendingFormat:@"] el color RGB es :0x%02x,%02x,%02x",
                (int)self.slRed.value,(int)self.slGreen.value,(int)self.slBlue.value];

    } else {
        texto=@"no hay color para mostrar !!";
    }
    
    
    
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Color del circulo !!"
                                                                   message:texto
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
