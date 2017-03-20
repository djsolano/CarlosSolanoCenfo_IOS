// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDog.m instead.

#import "_CDDog.h"

@implementation CDDogID
@end

@implementation _CDDog

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CDDog" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CDDog";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CDDog" inManagedObjectContext:moc_];
}

- (CDDogID*)objectID {
	return (CDDogID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic age;

@dynamic color;

@dynamic contactInformation;

@dynamic image;

@dynamic location;

@dynamic name;

@end

@implementation CDDogAttributes 
+ (NSString *)age {
	return @"age";
}
+ (NSString *)color {
	return @"color";
}
+ (NSString *)contactInformation {
	return @"contactInformation";
}
+ (NSString *)image {
	return @"image";
}
+ (NSString *)location {
	return @"location";
}
+ (NSString *)name {
	return @"name";
}
@end

