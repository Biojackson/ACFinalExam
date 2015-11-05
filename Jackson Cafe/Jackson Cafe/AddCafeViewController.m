//
//  AddCafeViewController.m
//  Jackson Cafe
//
//  Created by 洪駿之 on 2015/11/5.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import "AddCafeViewController.h"
#import <Parse/Parse.h>
#import "CafeTableViewController.h"
#import "CafeTableViewCell.h"
@interface AddCafeViewController () <UINavigationControllerDelegate,UIImagePickerControllerDelegate> {

    NSString* addCafeInfoName;
    NSString* addCafeInfoAddress;
    NSNumber* addCafeInfoPhone;
    NSString* addCafeInfoWebsite;
    NSString* addCafeInfoIntro;
    
    UIImage* addCafeImage;

}

@property (strong, nonatomic) IBOutlet UITextField *addCafeNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *addCafeAddressTextField;
@property (strong, nonatomic) IBOutlet UITextField *addCafePhoneTextField;
@property (strong, nonatomic) IBOutlet UITextField *addCafeWebsiteTextField;
@property (strong, nonatomic) IBOutlet UITextField *addCafeIntroTextField;

@end

@implementation AddCafeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)addCafeInfoTextField:(id)sender {
    
    addCafeInfoName = _addCafeNameTextField.text;
    addCafeInfoAddress =_addCafeAddressTextField.text;
    //addCafeInfoPhone = _addCafePhoneTextField.text;//先不轉成數字
    addCafeInfoWebsite = _addCafeWebsiteTextField.text;
    addCafeInfoIntro = _addCafeIntroTextField.text;
    
    NSLog(@"%@", _addCafeIntroTextField);
    NSLog(@"%@", addCafeInfoName);

}


- (IBAction)doneAddCafe:(id)sender {
    
    PFObject *cafe = [PFObject objectWithClassName:@"Cafe"];
    cafe[@"name"] = addCafeInfoName;
    cafe[@"address"] = addCafeInfoAddress;
    //cafe[@"phone"] = addCafeInfoPhone;//先不轉成數字
    cafe[@"website"] = addCafeInfoWebsite;
    cafe[@"intro"] = addCafeInfoIntro;
    
    //這一段
//    NSData *imageData = UIImageJPEGRepresentation(addCafeImage, 0.1);
//    PFFile *imageFile = [PFFile fileWithName:@"addCafeImage.png"
//                                        data:imageData];
//    NSLog(@"%@",addCafeImage);
//    cafe[@"photo"] = imageFile;
    //還是傳不上去
    
    [cafe saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // The object has been saved.
            NSLog(@"success");
        } else {
            // There was a problem, check error.description
            NSLog(@"fail");
        }
    }];
    
}

- (IBAction) cameraButPressed:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        picker.allowsEditing = YES;
        picker.delegate = self;
        [self presentViewController:picker animated:YES completion:nil];
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary <NSString *,id> *)info {
    
    NSLog(@"info %p", info);
    addCafeImage = info[@"UIImagePickerControllerOriginalImage"];
    NSLog(@"takeCafeImage %@", info);
    [self dismissViewControllerAnimated:YES completion:nil];
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
