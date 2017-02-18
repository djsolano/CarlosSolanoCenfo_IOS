//
//  PrimeCustomTableViewCell.m
//  Quiz3CarlosSolano
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "PrimeCustomTableViewCell.h"

@interface PrimeCustomTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@end

@implementation PrimeCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void) setUpCellWithNumber:(NSString *)number{
    self.numberLabel.text = number;
}

+(NSString *) getIdentifier{
    return NSStringFromClass(self);
}

@end
