//
//  NewsTableViewCell.h
//  News
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class News;

@interface NewsTableViewCell : UITableViewCell
-(void) setupCellWithNews: (News *)news;
@end
