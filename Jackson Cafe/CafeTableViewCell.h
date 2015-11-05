//
//  CafeTableViewCell.h
//  Jackson Cafe
//
//  Created by 洪駿之 on 2015/11/5.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "CafeTableViewController.h"
@interface CafeTableViewCell : UITableViewCell {
    
    IBOutlet UIImageView *imageView;
}

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *addressLabel;


@end
