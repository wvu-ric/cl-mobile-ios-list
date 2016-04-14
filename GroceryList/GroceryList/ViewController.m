//
//  ViewController.m
//  GroceryList
//
//  Created by Ricky Kirkendall on 3/8/16.
//  Copyright © 2016 CodeLab. All rights reserved.
//

#import "ViewController.h"
#import "Item.h"
@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *itemList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // TODO: Clear list when the app loads
    _itemListTextView.text = @"";
    // TODO: Initialize itemList array property
    _itemList = [[NSMutableArray alloc] init];
}

-(void)clearList{
    // TODO: Clear the text of the itemList property
    _itemListTextView.text = @"";
    
}

-(void)refreshList{
    
    // TODO: Clear the list
    [self clearList];
    
    // TODO: Print out all of the items and their prices
    if ([_itemList count] !=0){
        NSString * newItemText = [[NSString alloc] init];
        for (Item *item in _itemList) {
            newItemText = [newItemText stringByAppendingString:[item.description stringByAppendingString: @"\n"]];
        }
         _itemListTextView.text = newItemText;
    }
    
    // TODO: Set the total label
    [self setTotalLabel];
}

- (void)setTotalLabel{
    float sum = 0.00;
    for (Item *item in self.itemList) {
        // TODO: Get the float value of item.price and add it to sum
        sum += [item.price floatValue];
    }
    
    
    // This formatter code turns sum in to a string formatted for currency (2 decimals + a $ sign)
    NSNumberFormatter *nf = [[NSNumberFormatter alloc]init];
    [nf setNumberStyle:NSNumberFormatterCurrencyStyle];
    self.sumLabel.text = [nf stringFromNumber:[NSNumber numberWithFloat:sum]];
    
}


- (IBAction)addItemTapped:(id)sender {
    
    // TODO: Create a new item object
    Item *toInsert = [[Item alloc]init];
    
    // TODO: Set the name of the item
    toInsert.name = self.itemName.text;
    NSNumberFormatter *nf = [[NSNumberFormatter alloc]init];
    
    // Set the price of the item
    toInsert.price = [nf numberFromString:self.itemPrice.text];
    
    // TODO: Add the item to the top of the list
    
    [self.itemList insertObject:toInsert atIndex:0];
    
    // TODO: Clear text fields
    self.itemName.text = @"";
    self.itemPrice.text = @"";
    
    // TODO: Refresh list
    [self refreshList];
    // TODO: Dismiss keyboard
    [self.view endEditing:YES];
}

- (IBAction)removeLastItemTapped:(id)sender {
    
    // TODO: Remove first item in the self.itemList
    if([_itemList count] !=0)
        [self.itemList removeObjectAtIndex:0];
    // TODO: Refresh list
    [self refreshList];
}

- (IBAction)clearListTapped:(id)sender {
    // TODO: Remove all items from self.itemList
    [self clearList];
    if([_itemList count] !=0)
        [self.itemList removeAllObjects];
    // TODO: Refresh the list
    [self refreshList];
}
@end
