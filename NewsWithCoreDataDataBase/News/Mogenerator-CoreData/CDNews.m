#import "CDNews.h"
#import "CDCategory.h"
@interface CDNews ()

// Private interface goes here.

@end

@implementation CDNews

// Custom logic goes here.
+(id)insertNewsWithTitle:(NSString*)newsTitle newsDescription:(NSString*)newsDescription category:(CDCategory*)category{
    CDNews *news = [CDNews new];
    news.date = [NSDate date];
    news.newsTitle = newsTitle;
    news.newsDescription = newsDescription;
    news.category = category;
    return news;
}

@end
