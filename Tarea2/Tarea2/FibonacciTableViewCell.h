//
//  FibonacciTableViewCell.h
//  Tarea2
//
//  Created by Carlos Solano on 21/2/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FibonacciTableViewCell : UITableViewCell
-(void)configureCellWithNumber:(NSString*) number;
+(NSString*) getIdentifier;
@end
