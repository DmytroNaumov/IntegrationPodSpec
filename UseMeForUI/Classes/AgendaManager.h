//
//  AgendaManager.h
//  UseMeForUI
//
//  Created by Dmytro Naumov on 02/12/15.
//  Copyright © 2015 Dmytro Naumov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AgendaManager : NSObject{
    NSBundle *selfBundle;
}

+(instancetype)sharedManager;

-(UITableViewCell*)cellForProductForTableView:(UITableView*)tableView;
-(UIViewController*)productController;

@end
