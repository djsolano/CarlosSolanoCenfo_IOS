//
//  DogTableViewCell.m
//  Tarea4
//
//  Created by Carlos Solano on 28/2/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "DogTableViewCell.h"
#import "Dog.h"

@interface DogTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *dogName;
@property (weak, nonatomic) IBOutlet UIImageView *dogImage;

@end

@implementation DogTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) initializeCellWithDog: (Dog *) dog {
    self.dogName.text = dog.name;
    self.dogImage.image = [UIImage imageNamed:dog.image];
}

+(NSString *) getIdentifier{
    return NSStringFromClass(self.class);
}

@end
