//
//  DogDetailTableViewController.h
//  Tarea4
//
//  Created by Carlos Solano on 2/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dog;

@interface DogDetailTableViewController : UITableViewController
@property (strong,nonatomic) Dog * selectedDog;
@end
