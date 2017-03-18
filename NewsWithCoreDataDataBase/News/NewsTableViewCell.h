//
//  NewsTableViewCell.h
//  News
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CDNews;

@interface NewsTableViewCell : UITableViewCell
-(void) setupCellWithNews: (CDNews *)news;
@end
