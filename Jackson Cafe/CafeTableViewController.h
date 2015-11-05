//
//  CafeTableViewController.h
//  Jackson Cafe
//
//  Created by 洪駿之 on 2015/11/5.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "CafeTableViewCell.h"
@interface CafeTableViewController : UITableViewController

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSMutableString *name;
@property (strong, nonatomic) NSMutableString *address;
@property (strong, nonatomic) NSMutableString *phone;
@property (strong, nonatomic) NSMutableString *website;
@property (strong, nonatomic) NSMutableString *intro;

@end
