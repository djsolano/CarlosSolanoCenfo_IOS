//
//  ItemCustomTableViewCell.h
//  Quiz5CarlosSolano
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CDItems;

@interface ItemCustomTableViewCell : UITableViewCell
-(void) configureCellWithItem:(CDItems*) item;
+(NSString *) getIdentifier;
@end
