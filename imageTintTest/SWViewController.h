//
//  SWViewController.h
//  imageTintTest
//
//  Created by Spencer Williams on 12/12/12.
//  Copyright (c) 2012 Spencer Williams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UISwitch *rgbLockSwitch;

@property (strong, nonatomic) IBOutletCollection(UISlider) NSArray *rgbSliders;
@property (strong, nonatomic) IBOutlet UISlider *redSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;

@property (strong, nonatomic) IBOutlet UISlider *alphaSlider;
@property (strong, nonatomic) IBOutlet UISlider *percentSlider;

@property (strong, nonatomic) IBOutlet UILabel *redLabel;
@property (strong, nonatomic) IBOutlet UILabel *greenLabel;
@property (strong, nonatomic) IBOutlet UILabel *blueLabel;
@property (strong, nonatomic) IBOutlet UILabel *alphaLabel;
@property (strong, nonatomic) IBOutlet UILabel *percentLabel;

- (IBAction)sliderDidChange:(id)sender;
@end
