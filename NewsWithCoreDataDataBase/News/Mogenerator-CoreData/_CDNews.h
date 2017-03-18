// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDNews.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class CDCategory;

@interface CDNewsID : NSManagedObjectID {}
@end

@interface _CDNews : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CDNewsID *objectID;

@property (nonatomic, strong, nullable) NSDate* date;

@property (nonatomic, strong, nullable) NSString* newsDescription;

@property (nonatomic, strong, nullable) NSString* newsTitle;

@property (nonatomic, strong, nullable) CDCategory *category;

@end

@interface _CDNews (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSDate*)primitiveDate;
- (void)setPrimitiveDate:(nullable NSDate*)value;

- (nullable NSString*)primitiveNewsDescription;
- (void)setPrimitiveNewsDescription:(nullable NSString*)value;

- (nullable NSString*)primitiveNewsTitle;
- (void)setPrimitiveNewsTitle:(nullable NSString*)value;

- (CDCategory*)primitiveCategory;
- (void)setPrimitiveCategory:(CDCategory*)value;

@end

@interface CDNewsAttributes: NSObject 
+ (NSString *)date;
+ (NSString *)newsDescription;
+ (NSString *)newsTitle;
@end

@interface CDNewsRelationships: NSObject
+ (NSString *)category;
@end

NS_ASSUME_NONNULL_END
