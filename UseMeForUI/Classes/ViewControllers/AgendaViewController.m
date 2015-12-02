//
//  AgendaViewController.m
//  UseMeForUI
//
//  Created by Dmytro Naumov on 02/12/15.
//  Copyright © 2015 Dmytro Naumov. All rights reserved.
//

#import "AgendaViewController.h"

@interface AgendaViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topMargin;

@end

@implementation AgendaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self startAnimation];
}

- (void)startAnimation{

    [UIView animateWithDuration:0.5
                     animations:^{
                         self.topMargin.constant = 250;
                     }
                     completion:^(BOOL finished) {
                         self.topMargin.constant = 50;
                     }];

}
- (IBAction)buttonPressed:(id)sender {
    [self startAnimation];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
