//
//  CafeDetailViewController.h
//  Jackson Cafe
//
//  Created by 洪駿之 on 2015/11/5.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "CafeTableViewCell.h"
@interface CafeDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *cafeDetailNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *cafeDetailAddressTextField;
@property (strong, nonatomic) IBOutlet UITextField *cafeDetailPhoneTextField;
@property (strong, nonatomic) IBOutlet UITextField *cafeDetailWebsiteTextField;
@property (strong, nonatomic) IBOutlet UITextField *cafeDetailIntroTextField;
@property (strong, nonatomic) IBOutlet UIImageView *cafeDetailImageView;





@end
