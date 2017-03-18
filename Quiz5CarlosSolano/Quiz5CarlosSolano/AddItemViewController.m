//
//  AddItemViewController.m
//  Quiz5CarlosSolano
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "AddItemViewController.h"
#import "CoreDataManager.h"

@interface AddItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *productNameTxt;
@property (weak, nonatomic) IBOutlet UITextField *productQuantityTxt;

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSaveButtonNavegationController];
    // Do any additional setup after loading the view.
}

-(void)addSaveButtonNavegationController{
    UIBarButtonItem *add = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveItemAction)];
    self.navigationItem.rightBarButtonItem = add;
}

-(void)saveItemAction{
    [CoreDataManager insertItemsWithName:self.productNameTxt.text quantity:self.productQuantityTxt.text];
    [self.navigationController popViewControllerAnimated:YES];
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
