// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDItems.m instead.

#import "_CDItems.h"

@implementation CDItemsID
@end

@implementation _CDItems

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CDItems" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CDItems";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CDItems" inManagedObjectContext:moc_];
}

- (CDItemsID*)objectID {
	return (CDItemsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic creationDate;

@dynamic productName;

@dynamic productQuantity;

@end

@implementation CDItemsAttributes 
+ (NSString *)creationDate {
	return @"creationDate";
}
+ (NSString *)productName {
	return @"productName";
}
+ (NSString *)productQuantity {
	return @"productQuantity";
}
@end

