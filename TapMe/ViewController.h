//
//  ViewController.h
//  TapMe
//
//  Created by David LaBine on 12/21/15.
//  Copyright © 2015 David LaBine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}

- (IBAction)buttonPressed;

@end

