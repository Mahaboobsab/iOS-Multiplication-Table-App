//
//  ViewController.h
//  iOS App MathTable
//
//  Created by test on 13/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *labelField;

- (IBAction)getButton:(id)sender;

@end

