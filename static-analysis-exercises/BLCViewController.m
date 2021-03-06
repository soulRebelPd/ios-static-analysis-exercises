//
//  BLCViewController.m
//  static-analysis-exercises
//
//  Created by Aaron on 8/29/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import "BLCViewController.h"

@interface BLCViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation BLCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *itemArray = [NSMutableArray array];
    
    int one = 1;
    int two = 2;
    int three = 3;
    
    NSString *item1;
    NSString *item2;
    NSString *item3;
    
    item1 = [NSString stringWithFormat:@"%d. Alpha", one];
    item2 = [NSString stringWithFormat:@"%d. Bravo", two];
    item3 = [NSString stringWithFormat:@"%d. Charlie", three];
    
    [itemArray addObject:item1];
    [itemArray addObject:item2];
    [itemArray addObject:item3];
    
    NSMutableString *textStrimg;
    
    for (NSString *itemString in itemArray) {
        [textStrimg appendFormat:@"%@\n", itemString];
    }
    
    self.textView.text = textStrimg;
}

@end
