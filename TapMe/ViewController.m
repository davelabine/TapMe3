//
//  ViewController.m
//  TapMe
//
//  Created by David LaBine on 12/21/15.
//  Copyright © 2015 David LaBine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupGame {
    seconds = 5;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %ld", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%ld", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)subtractTime {
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %ld",seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                        message:[NSString stringWithFormat:@"You scored %ld points", count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
    }
}

- (IBAction)buttonPressed {
    count++;
    NSString *fun = [NSString stringWithFormat:@"Score\n%ld", count];
    scoreLabel.text = fun;
    //scoreLabel.text =
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}


@end
