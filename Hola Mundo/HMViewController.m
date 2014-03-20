//
//  HMViewController.m
//  Hola Mundo
//
//  Created by g102 DIT UPM on 10/02/14.
//  Copyright (c) 2014 g102 DIT UPM. All rights reserved.
//

#import "HMViewController.h"


@interface HMViewController ()
@property (weak, nonatomic) IBOutlet UILabel *msg;
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property (weak, nonatomic) IBOutlet UISlider *sld;

@end

@implementation HMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.sld.value = 1;
}

- (IBAction)holaPressed:(UIButton *)sender {
    self.msg.text = @"Hola";
    self.sld.value = 0.5;
    self.msg.alpha= self.sld.value;
    [self.map setMapType: MKMapTypeHybrid];
}

- (IBAction)mundoPressed:(UIButton *)sender {
    self.msg.text = @"Mundo";
    MKCoordinateRegion reg = {{40.452445, -3.726162}, {0.002, 0.002}};
    [self.map setMapType: MKMapTypeSatellite];
    [self.map setRegion:reg animated:YES];
}

- (IBAction)sliderMoved:(UISlider *)sender {
    self.msg.alpha = sender.value;
}

- (IBAction)piramidesPressed:(UIButton *)sender {
    MKCoordinateRegion reg = {{29.975939,31.130404}, {0.01, 0.01}};
    [self.map setRegion:reg animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
