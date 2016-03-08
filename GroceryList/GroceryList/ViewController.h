//
//  ViewController.h
//  GroceryList
//
//  Created by Ricky Kirkendall on 3/8/16.
//  Copyright © 2016 CodeLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *itemName;
@property (weak, nonatomic) IBOutlet UITextField *itemPrice;
@property (weak, nonatomic) IBOutlet UITextView *itemListTextView;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;

- (IBAction)addItemTapped:(id)sender;
- (IBAction)removeLastItemTapped:(id)sender;
- (IBAction)clearListTapped:(id)sender;

@end

