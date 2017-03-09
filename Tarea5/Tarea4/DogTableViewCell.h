//
//  DogTableViewCell.h
//  Tarea4
//
//  Created by Carlos Solano on 28/2/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dog;

@interface DogTableViewCell : UITableViewCell
-(void) initializeCellWithDog: (Dog *) dog ;
+(NSString *) getIdentifier;
@end
