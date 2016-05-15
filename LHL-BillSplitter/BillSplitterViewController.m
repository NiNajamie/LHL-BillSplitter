//
//  BillSplitterViewController.m
//  LHL-BillSplitter
//
//  Created by Asuka Nakagawa on 2016-05-15.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "BillSplitterViewController.h"

@interface BillSplitterViewController ()

@property (weak, nonatomic) IBOutlet UILabel *eachPerson;

@end

@implementation BillSplitterViewController

- (IBAction)calculateSplitAmount:(id)sender {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber *formattedNumber = [numberFormatter numberFromString:self.totalAmount.text];
    NSLog(@"The total amount was: $%@", formattedNumber);
//    self.numberOfPeople.value
    float amountEach = [formattedNumber floatValue] / self.numberOfPeople.value ;
//    NSLog(@"$ %.2f each", amountEach);
    
    // other way
    //NSDecimalNumber *number = [NSDecimalNumber decimalNumberWithString:self.totalAmount.text];
    self.eachPerson.text = [NSString stringWithFormat:@"$ %.2f each", amountEach];

}
- (IBAction)numberOfPeopleChanged:(id)sender {
    self.current.text = [NSString stringWithFormat:@"Current: %d", (int)self.numberOfPeople.value];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
