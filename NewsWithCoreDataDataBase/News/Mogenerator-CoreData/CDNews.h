#import "_CDNews.h"
@class CDCategory;
@interface CDNews : _CDNews
// Custom logic goes here.
+(id)insertNewsWithTitle:(NSString*)newsTitle newsDescription:(NSString*)newsDescription category:(CDCategory*)category;
@end
