//
//  NumberTableViewCell.h
//  Quiz4CarlosSolano
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 quiz4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberTableViewCell : UITableViewCell
-(void) setUpCellWithNumber:(NSString *)number;
+(NSString *) getIdentifier;
@end
