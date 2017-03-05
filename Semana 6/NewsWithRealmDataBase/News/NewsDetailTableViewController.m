//
//  NewsDetailTableViewController.m
//  News
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "NewsDetailTableViewController.h"
#import "News.h"
#import "Category.h"

@interface NewsDetailTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *newsTitle;

@property (weak, nonatomic) IBOutlet UITextView *newsDescription;

@end

@implementation NewsDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSaveButtonNavegationController];
    
}

-(void)addSaveButtonNavegationController{
    UIBarButtonItem *save = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveNews)];
    self.navigationItem.rightBarButtonItem = save;
}

-(void)saveNews{
   /* News *news = [[News alloc] initWithTitle:self.newsTitle.text newsDescription:self.newsDescription.text date:[NSDate date]];
    [self.categorySelected.newsArray addObject:news];
    [self.navigationController popViewControllerAnimated:true];*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)hideKeyboards:(id)sender {
    [self.view endEditing:YES];
}


@end
