// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDog.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface CDDogID : NSManagedObjectID {}
@end

@interface _CDDog : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CDDogID *objectID;

@property (nonatomic, strong, nullable) NSString* age;

@property (nonatomic, strong, nullable) NSString* color;

@property (nonatomic, strong, nullable) NSString* contactInformation;

@property (nonatomic, strong, nullable) NSString* image;

@property (nonatomic, strong, nullable) NSString* location;

@property (nonatomic, strong, nullable) NSString* name;

@end

@interface _CDDog (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveAge;
- (void)setPrimitiveAge:(nullable NSString*)value;

- (nullable NSString*)primitiveColor;
- (void)setPrimitiveColor:(nullable NSString*)value;

- (nullable NSString*)primitiveContactInformation;
- (void)setPrimitiveContactInformation:(nullable NSString*)value;

- (nullable NSString*)primitiveImage;
- (void)setPrimitiveImage:(nullable NSString*)value;

- (nullable NSString*)primitiveLocation;
- (void)setPrimitiveLocation:(nullable NSString*)value;

- (nullable NSString*)primitiveName;
- (void)setPrimitiveName:(nullable NSString*)value;

@end

@interface CDDogAttributes: NSObject 
+ (NSString *)age;
+ (NSString *)color;
+ (NSString *)contactInformation;
+ (NSString *)image;
+ (NSString *)location;
+ (NSString *)name;
@end

NS_ASSUME_NONNULL_END
