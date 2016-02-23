//
//  BNRColorViewController.m
//  Colorboard
//
//  Created by 郑克明 on 16/2/22.
//  Copyright © 2016年 郑克明. All rights reserved.
//

#import "BNRColorViewController.h"

@interface BNRColorViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@end

@implementation BNRColorViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UIColor *color = self.colorDescription.color;
    float red,green,blue;
    [color getRed:&red green:&green blue:&blue alpha:nil];
    
    //把得到的颜色值设置给响应控件
    self.redSlider.value = red;
    self.greenSlider.value = green;
    self.blueSlider.value = blue;
    
    self.view.backgroundColor = color;
    self.textField.text = self.colorDescription.name;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (self.existingColor) {
        self.navigationItem.rightBarButtonItem = nil;
    }
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.colorDescription.name = self.textField.text;
    self.colorDescription.color = self.view.backgroundColor;
}

-(IBAction)dismiss:(id)sender{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)changeColor:(id)sender{
    float red = self.redSlider.value;
    float green = self.greenSlider.value;
    float blue = self.blueSlider.value;
    UIColor *newColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    self.view.backgroundColor = newColor;
}

@end
