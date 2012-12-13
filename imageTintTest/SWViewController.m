//
//  SWViewController.m
//  imageTintTest
//
//  Created by Spencer Williams on 12/12/12.
//  Copyright (c) 2012 Spencer Williams. All rights reserved.
//

#import "SWViewController.h"
#import "UIImage+Tint.h"

@interface SWViewController () {
    UIImage *originalImage;
}
- (void)updateImageTint;
@end

@implementation SWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    originalImage = [[self.imageView.image resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{1.0,1.0,1.0,1.0}")] stretchableImageWithLeftCapWidth:0 topCapHeight:0];
    [self.imageView setImage:originalImage];
    [self updateImageTint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateImageTint
{
    [self.imageView setImage:[originalImage imageTintedWithColor:[UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:self.alphaSlider.value] fraction:self.percentSlider.value]];
    [self.redLabel setText:[NSString stringWithFormat:@"%0.2f",self.redSlider.value]];
    [self.greenLabel setText:[NSString stringWithFormat:@"%0.2f",self.greenSlider.value]];
    [self.blueLabel setText:[NSString stringWithFormat:@"%0.2f",self.blueSlider.value]];
    [self.alphaLabel setText:[NSString stringWithFormat:@"%0.2f",self.alphaSlider.value]];
    [self.percentLabel setText:[NSString stringWithFormat:@"%0.2f",self.percentSlider.value]];
}

- (IBAction)sliderDidChange:(id)sender {
    if ([self.rgbLockSwitch isOn] && [self.rgbSliders containsObject:(UISlider *)sender]) {
        [self.redSlider setValue:[(UISlider *)sender value]];
        [self.greenSlider setValue:[(UISlider *)sender value]];
        [self.blueSlider setValue:[(UISlider *)sender value]];
    }
    [self updateImageTint];
}
@end
