//
//  Item.m
//  GroceryList
//
//  Created by Ricky Kirkendall on 3/8/16.
//  Copyright © 2016 CodeLab. All rights reserved.
//

#import "Item.h"

@implementation Item

-(NSString *)description{
    NSNumberFormatter *nf = [[NSNumberFormatter alloc]init];
    [nf setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    return [NSString stringWithFormat:@"%@: %@",self.name, [nf stringFromNumber:self.price]];
}

@end
