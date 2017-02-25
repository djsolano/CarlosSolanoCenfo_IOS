//
//  NumberTableViewCell.m
//  Quiz4CarlosSolano
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 quiz4. All rights reserved.
//

#import "NumberTableViewCell.h"

@interface NumberTableViewCell ()
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation NumberTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setUpCellWithNumber:(NSString *)number{
    self.resultLabel.text = number;
}

+(NSString *) getIdentifier{
    return NSStringFromClass(self);
}

@end
