//
//  HomeViewController.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/25/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "HomeViewController.h"
#import "UIViewController+LMSideBarController.h"
#import "RealmManager.h"
#import "Constants.h"
@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property RLMResults * userArray;
@property RLMResults * productsArray;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addMenuButton];
    self.productsArray = [RealmManager getAllObjectsByType:PRODUCT_OBJECT_TYPE];
    self.userArray = [RealmManager getAllObjectsByType:USER_OBJECT_TYPE];
    self.infoLabel.text = [NSString stringWithFormat:@"Total users: %lu - Total products: %lu",(unsigned long)self.productsArray.count,(unsigned long)self.userArray.count];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showMenu:(id)sender {
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
}

-(void) addMenuButton{
    UIImage *image = [[UIImage imageNamed:@"btn_left_menu"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(menuAction)];
    self.navigationItem.leftBarButtonItem = addButton;
}

-(void) menuAction{
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
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
