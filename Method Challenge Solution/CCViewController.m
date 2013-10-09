//
//  CCViewController.m
//  Method Challenge Solution
//
//  Created by Tim Shim on 10/10/13.
//  Copyright (c) 2013 Tim Shim. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    int result = [self factorialOfNumber:5];
    NSLog(@"%i", result);
}

- (void)printWholeNumbersBelow:(int)number
{
    for (int i = number; i > 0; i--)
    {
        NSLog(@"%i", i);
    }
}

- (void)printWholeNumbersFrom:(int)firstNumber toNumber:(int)secondNumber
{
    if (firstNumber == secondNumber) {
        NSLog(@"The numbers are equal!");
    } else if (firstNumber > secondNumber) {
        for (int i = firstNumber; i >= secondNumber; i--) {
            NSLog(@"%i", i);
        }
    } else {
        for (int i = secondNumber; i >= firstNumber; i--) {
            NSLog(@"%i", i);
        }
    }
}

- (int)factorialOfNumber:(int)number
{
    int answer = number;
    for (int i = number; i > 1; i--) {
        answer = answer * (i - 1);
    }
    return answer;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
