//
//  AgendaManager.m
//  UseMeForUI
//
//  Created by Dmytro Naumov on 02/12/15.
//  Copyright © 2015 Dmytro Naumov. All rights reserved.
//

#import "AgendaManager.h"
#import "ProductTableViewCell.h"

@implementation AgendaManager

+ (instancetype)sharedManager{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


-(UITableViewCell*)cellForProductForTableView:(UITableView*)tableView
{
    [tableView registerNib:[UINib nibWithNibName:@"ProductCell" bundle:nil] forCellReuseIdentifier:@"AgendaProductCell"];
    ProductTableViewCell *result = [tableView dequeueReusableCellWithIdentifier:@"AgendaProductCell"];
    [result.customCellTitle setText:@"I AM A SUPER CELL"];
    return result;
}


-(UIViewController*)productController
{
    UIStoryboard *mainSoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *mainViewController = [mainSoryboard instantiateInitialViewController];
    return mainViewController;
}

@end
