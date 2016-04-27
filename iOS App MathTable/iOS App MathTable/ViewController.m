//
//  ViewController.m
//  iOS App MathTable
//
//  Created by test on 13/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSString *textfieldValue;
    NSInteger myInt;
    
    NSMutableArray *allTableVal;
    
    NSMutableString *list;
    
    NSMutableArray *myArray;
    
    NSString *eachMatrix;
    
    NSArray *newArray;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //Defines number of lines for label
    self.labelField.numberOfLines = 10;
    
    
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getButton:(id)sender {
     myArray = [[NSMutableArray alloc]init];
    textfieldValue = self.textField.text;
    
   int stroredVal =  [textfieldValue intValue];

    
    NSLog(@"Stored value : %d",stroredVal);

    
    
    for (int i=1; i<11; i++) {
        
       
            
             NSString *tempString  = [NSString stringWithFormat: @" %d X %i = %d",stroredVal,i,i*stroredVal];
            
            NSLog(@"Temp String : %@",tempString);
            
        [myArray addObject:tempString];
        
    }
    
    NSLog(@"Array variables : %@",myArray);
    
    //Allocating and Intializing list var
    list = [[NSMutableString alloc] init];
    
    
    for (NSString *string in myArray) {
        [list appendFormat:@"%@\n", string.mutableCopy];
    }
    
    //Assignes the val for label from list object
    self.labelField.text = list;
    
    self.labelField.text = list;
}

@end
