//
//  ItemCustomTableViewCell.m
//  Quiz5CarlosSolano
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "ItemCustomTableViewCell.h"
#import "CDItems.h"

@interface ItemCustomTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *productQuantity;
@property (weak, nonatomic) IBOutlet UILabel *creationDate;

@end

@implementation ItemCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) configureCellWithItem:(CDItems*) item{
    self.productName.text = item.productName;
    self.productQuantity.text = item.productQuantity;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    self.creationDate.text = [NSString stringWithFormat:@"%@",[formatter stringFromDate:item.creationDate]];
}

+(NSString *) getIdentifier{
    return NSStringFromClass(self);
}

@end
