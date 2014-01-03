//
//  ViewController.m
//  CarGallery
//
//  Created by SDT-1 on 2014. 1. 2..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //NSArray *_image;
    NSInteger _int;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController
- (IBAction)prev:(id)sender {
    if (_int<=1) {
        NSString *carName = [NSString stringWithFormat:@"car"];
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:carName ofType:@"png"];
        UIImage *currentImage = [UIImage imageWithContentsOfFile:imagePath];
        self.imgView.image = currentImage;
    }
    else
        _int--;
         [self carImagePath];
}
- (IBAction)next:(id)sender {
    
    if (_int >= 3) {
        NSString *carName = [NSString stringWithFormat:@"car3"];
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:carName ofType:@"png"];
        UIImage *currentImage = [UIImage imageWithContentsOfFile:imagePath];
        self.imgView.image = currentImage;
    }
    else
        _int++;
        [self carImagePath];
}

-(void)carImagePath{
    NSString *carName = [NSString stringWithFormat:@"car%d",(int)_int];
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:carName ofType:@"png"];
    UIImage *currentImage = [UIImage imageWithContentsOfFile:imagePath];
    self.imgView.image = currentImage;
   
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    _int = 1;
    [self carImagePath];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
