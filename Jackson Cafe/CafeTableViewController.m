//
//  CafeTableViewController.m
//  Jackson Cafe
//
//  Created by 洪駿之 on 2015/11/5.
//  Copyright © 2015年 洪駿之. All rights reserved.
//

#import "CafeTableViewController.h"
#import "CafeDetailViewController.h"

@interface CafeTableViewController ()



@end

@implementation CafeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //CafeDetailViewController *CafeDetailTableVC = (CafeDetailViewController*)self.presentedViewController;
    CafeDetailViewController *CafeDetailTableVC = [self.storyboard instantiateViewControllerWithIdentifier:@"CafeDetailViewControllerID"];
    
    CafeDetailTableVC.cafeDetailNameTextField.text = self.name;
    NSLog(@"CafeTableVC.name %@", self.name);
    NSLog(@"_cafeDetailNameTextField %@", CafeDetailTableVC.cafeDetailNameTextField);
    
    //    _cafeDetailAddressTextField = CafeTableVC.address;
    //    _cafeDetailPhoneTextField = CafeTableVC.phone;
    //    _cafeDetailWebsiteTextField = CafeTableVC.website;
    //    _cafeDetailIntroTextField = CafeTableVC.intro;

    
    
    [self.tableView reloadData];
}

//刪除整個不會
- (IBAction)deleteCafeButPressed:(id)sender {
    
//    PFQuery *query = [PFQuery queryWithClassName:@"Cafe"];
//    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
//        for(PFObject *cafe in objects) {
//            PFFile *name = cafe[@"name"];
//            _name = [NSMutableString stringWithFormat:@"%@", name];
//            //cell.nameLabel.text = [NSMutableString stringWithFormat:@"%@", name];//錯誤語法
//            
//        ];
//    }

    
    
}


- (void) viewWillAppear:(BOOL)animated {



}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CafeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CAFE_CELL_ID" forIndexPath:indexPath];
    PFQuery *query = [PFQuery queryWithClassName:@"Cafe"];
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        for(PFObject *cafe in objects) {
            PFFile *name = cafe[@"name"];
            _name = [NSMutableString stringWithFormat:@"%@", name];
            //cell.nameLabel.text = [NSMutableString stringWithFormat:@"%@", name];//錯誤語法
            
            PFFile *address = cafe[@"address"];
            _address = [NSMutableString stringWithFormat:@"%@", address];
            //cell.addressLabel.text = [NSMutableString stringWithFormat:@"%@", address];//錯誤語法
            
            cell.nameLabel.text = _name;
            cell.addressLabel.text = _address;
            //cell.imageView.image = _image;//錯誤語法
            
            
            PFFile *photo = cafe[@"photo"];
            NSLog(@"url %@", photo.url);
            
            [photo getDataInBackgroundWithBlock:^(NSData * _Nullable data, NSError * _Nullable error) {
                if(error == nil) {
                    _image = [[UIImage alloc] initWithData:data];
                    cell.imageView.image = _image;
                }
            }];}
        
        }];
    
    
        
    // Configure the cell...

    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
