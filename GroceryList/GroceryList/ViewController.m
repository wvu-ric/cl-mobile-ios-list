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
    
    // TODO: Initialize itemList array property
    
}

-(void)clearList{
    // TODO: Clear the text of the itemList property

}

-(void)refreshList{
    
    // TODO: Clear the list

    
    // TODO: Print out all of the items and their prices

    
    // TODO: Set the total label

}

- (void)setTotalLabel{
    float sum = 0.00;
    for (Item *item in self.itemList) {
        // TODO: Get the float value of item.price and add it to sum
        
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

    
    // TODO: Clear text fields

    
    // TODO: Refresh list
    
    // TODO: Dismiss keyboard

}

- (IBAction)removeLastItemTapped:(id)sender {
    
    // TODO: Remove first item in the self.itemList
    
    // TODO: Refresh list
    
}

- (IBAction)clearListTapped:(id)sender {
    // TODO: Remove all items from self.itemList
    
    // TODO: Refresh the list
    
}
@end
