//
//  ProductTableViewCell.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/26/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "ProductTableViewCell.h"
#import "Product.h"
#import "User.h"

@interface ProductTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *productNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *carrierLabel;
@property (weak, nonatomic) IBOutlet UILabel *trackingLabel;
@property (weak, nonatomic) IBOutlet UILabel *clientLabel;
@property (weak, nonatomic) IBOutlet UILabel *poundsLabel;
@property (weak, nonatomic) IBOutlet UIView *poundsView;

@end

@implementation ProductTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupCellWithProduct:(Product*)product{
    self.productNameLabel.text = product.productTitle;
    self.carrierLabel.text = product.courier;
    self.trackingLabel.text = product.trackingNumber;
    self.clientLabel.text = product.user.name;
    self.poundsLabel.text = [NSString stringWithFormat:@"%d LB",product.pounds];
    self.poundsView.layer.borderColor =  [UIColor blackColor].CGColor;
    self.poundsView.layer.borderWidth= 1.0;
    self.poundsView.layer.cornerRadius=3;
    [self.poundsView setClipsToBounds:YES];
}

@end
