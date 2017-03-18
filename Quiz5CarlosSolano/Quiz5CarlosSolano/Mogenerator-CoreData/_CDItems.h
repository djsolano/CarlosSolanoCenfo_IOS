// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDItems.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface CDItemsID : NSManagedObjectID {}
@end

@interface _CDItems : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CDItemsID *objectID;

@property (nonatomic, strong, nullable) NSDate* creationDate;

@property (nonatomic, strong, nullable) NSString* productName;

@property (nonatomic, strong, nullable) NSString* productQuantity;

@end

@interface _CDItems (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(nullable NSDate*)value;

- (nullable NSString*)primitiveProductName;
- (void)setPrimitiveProductName:(nullable NSString*)value;

- (nullable NSString*)primitiveProductQuantity;
- (void)setPrimitiveProductQuantity:(nullable NSString*)value;

@end

@interface CDItemsAttributes: NSObject 
+ (NSString *)creationDate;
+ (NSString *)productName;
+ (NSString *)productQuantity;
@end

NS_ASSUME_NONNULL_END
