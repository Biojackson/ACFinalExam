//
//  CafeDetailViewController.m
//  Jackson Cafe
//
//  Created by 洪駿之 on 2015/11/5.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import "CafeTableViewController.h"
#import "CafeDetailViewController.h"

@interface CafeDetailViewController ()

@property (strong, nonatomic) UIImage * cafeDetailImage;

@end

@implementation CafeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
//    PFQuery *query = [PFQuery queryWithClassName:@"Cafe"];
//    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
//        for(PFObject *cafe in objects) {
//            PFFile *name = cafe[@"name"];
//            _cafeDetailNameTextField = [NSMutableString stringWithFormat:@"%@", name];
//            
//            PFFile *address = cafe[@"address"];
//            _cafeDetailAddressTextField = [NSMutableString stringWithFormat:@"%@", address];
//            
//            PFFile *phone = cafe[@"phone"];
//            _cafeDetailPhoneTextField = [NSMutableString stringWithFormat:@"%@", phone];
//            
//            PFFile *website = cafe[@"website"];
//            _cafeDetailWebsiteTextField = [NSMutableString stringWithFormat:@"%@", website];
//    
//            PFFile *photo = cafe[@"photo"]; //照片依舊不會
//            NSLog(@"url %@", photo.url);
//            
//            [photo getDataInBackgroundWithBlock:^(NSData * _Nullable data, NSError * _Nullable error) {
//                if(error == nil) {
//                    _cafeDetailImage = [[UIImage alloc] initWithData:data];
//                    _cafeDetailImageView.image = _cafeDetailImage;
//                }
//            }];
//        }
//        
//    }];
    
    /////
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
