//
//  News.h
//  News
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject
@property (readonly) NSString * title;
@property (readonly) NSString * newsDescription;
@property (readonly) NSDate * date;
-(id) initWithTitle:(NSString*) title newsDescription:(NSString*) newsDescription date:(NSDate*)date;
@end
