//
//  PrimeCustomTableViewCell.h
//  Quiz3CarlosSolano
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrimeCustomTableViewCell : UITableViewCell
-(void) setUpCellWithNumber:(NSString *)number;
+(NSString *) getIdentifier;
@end
