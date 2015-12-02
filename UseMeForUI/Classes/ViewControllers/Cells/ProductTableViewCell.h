//
//  ProductTableViewCell.h
//  UseMeForUI
//
//  Created by Dmytro Naumov on 02/12/15.
//  Copyright © 2015 Dmytro Naumov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *customCellTitle;
@property (weak, nonatomic) IBOutlet UIImageView *customCellImageView;

@end
