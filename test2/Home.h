//
//  ViewController.h
//  test2
//
//  Created by EDGE on 9/13/17.
//  Copyright © 2017 EDGE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblBotonsito;
@property (weak, nonatomic) IBOutlet UILabel *lblCirculo;
@property (weak, nonatomic) IBOutlet UISwitch *switchOnOff;
@property (weak, nonatomic) IBOutlet UISlider *slRed;
@property (weak, nonatomic) IBOutlet UISlider *slGreen;
@property (weak, nonatomic) IBOutlet UISlider *slBlue;

@property (weak, nonatomic) IBOutlet UITextField *tfRed;
@property (weak, nonatomic) IBOutlet UITextField *tfGreen;
@property (weak, nonatomic) IBOutlet UITextField *tfBlue;
@property (weak, nonatomic) IBOutlet UIButton *btnRandom;


@end

	
