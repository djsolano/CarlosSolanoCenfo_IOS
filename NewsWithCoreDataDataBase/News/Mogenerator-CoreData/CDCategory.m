#import "CDCategory.h"
#import <MagicalRecord/MagicalRecord.h>

@interface CDCategory ()

// Private interface goes here.

@end

@implementation CDCategory

// Custom logic goes here.
+(id)insertCategoryWithName:(NSString*) name imageName:(NSString *) imageName order:(NSInteger) order{
    CDCategory *category = [CDCategory MR_createEntity];
    category.name = name;
    category.imageName = imageName;
    category.orderValue = order;
    return category;
}

@end
