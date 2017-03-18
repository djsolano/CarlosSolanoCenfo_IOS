//
//  CategoryCustomTableViewCell.m
//  News
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "CategoryCustomTableViewCell.h"
#import "CDCategory.h"

@interface CategoryCustomTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *categoryName;
@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;

@end

@implementation CategoryCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void) configureCellWithCategory:(CDCategory*) category{
    self.categoryName.text = category.name;
   self.categoryImageView.image = [UIImage imageNamed:category.imageName];
}

@end
