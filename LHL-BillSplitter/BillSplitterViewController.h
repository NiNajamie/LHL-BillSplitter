//
//  BillSplitterViewController.h
//  LHL-BillSplitter
//
//  Created by Asuka Nakagawa on 2016-05-15.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BillSplitterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *totalAmount;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeople;
@property (weak, nonatomic) IBOutlet UILabel *amountEach;

@property(nonatomic) NSNumber *currentSliderValue;                                 // default 0.0. this value will be pinned to min/max
@property (weak, nonatomic) IBOutlet UILabel *current;


@end
