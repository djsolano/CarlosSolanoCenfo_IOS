#import "CDDog.h"
#import <MagicalRecord/MagicalRecord.h>
@interface CDDog ()

// Private interface goes here.

@end

@implementation CDDog

// Custom logic goes here.
+(id) createDogWithName:(NSString *)name image:(NSString *)image color:(NSString *) color location:(NSString*) location age:(NSString*)age contactInformation:(NSString*)contactInformation{
    CDDog *dog = [CDDog MR_createEntity];
    dog.name = name;
    dog.image = image;
    dog.color = color;
    dog.location = location;
    dog.age = age;
    dog.contactInformation = contactInformation;
    return dog;
}
@end
