//
//  FibonacciTableViewCell.m
//  Tarea2
//
//  Created by Carlos Solano on 21/2/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "FibonacciTableViewCell.h"

@interface FibonacciTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end

@implementation FibonacciTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureCellWithNumber:(NSString*) number {
    self.numberLabel.text = number;
}

+(NSString*) getIdentifier{
    return NSStringFromClass(self);
}

@end
