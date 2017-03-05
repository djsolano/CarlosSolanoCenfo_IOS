//
//  News.m
//  News
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "News.h"

@interface News ()
@property (nonatomic,strong) NSString * title;
@property (nonatomic,strong) NSString * newsDescription;
@property (nonatomic,strong) NSDate * date;
@end

@implementation News
-(id) initWithTitle:(NSString*) title newsDescription:(NSString*) newsDescription date:(NSDate*)date{
    if(self = [super init]){
        _title = title;
        _newsDescription = newsDescription;
        _date = date;
    }
    return self;
}
@end
