//
//  RealmManager.m
//  Tarea4
//
//  Created by Carlos Solano on 9/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "RealmManager.h"
#import "Dog.h"

@implementation RealmManager

+(void)saveRealmObject:(RLMObject *) realmObject{ //al heredar de RLMObject , cualquier clase la guarda.
    // Get the default Realm
    RLMRealm *realm = [RLMRealm defaultRealm];
    // You only need to do this once (per thread)
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}

+(RLMResults*)insertDogs{
    //initWithValue es como un mapa, key es el nombre en la clase
   Dog * dog0 = [[Dog alloc] initWithValue:@{@"name" : @"Fido", @"image" : @"Fido", @"color" : @"Negro", @"location" : @"Heredia", @"age" : [NSNumber numberWithInt:3], @"contactInformation" : @"88112233"}];
    Dog * dog1 = [[Dog alloc] initWithValue:@{@"name" : @"Kami", @"image" : @"Kami", @"color" : @"Blanco", @"location" : @"San Jose", @"age" : [NSNumber numberWithInt:10], @"contactInformation" : @"dosg@mail.com"}];
    Dog * dog2 = [[Dog alloc] initWithValue:@{@"name" : @"Roy", @"image" : @"Roy", @"color" : @"Café", @"location" : @"Alajuela", @"age" : [NSNumber numberWithInt:3], @"contactInformation" : @"88112233"}];
    Dog * dog3 = [[Dog alloc] initWithValue:@{@"name" : @"Terror", @"image" : @"Terror", @"color" : @"Negro y Blanco", @"location" : @"Heredia", @"age" : [NSNumber numberWithInt:5], @"contactInformation" : @"tarea@gmail.com"}];
    Dog * dog4 = [[Dog alloc] initWithValue:@{@"name" : @"Flor", @"image" : @"Flor", @"color" : @"Blanco", @"location" : @"Heredia", @"age" : [NSNumber numberWithInt:2], @"contactInformation" : @"88112233"}];
    Dog * dog5 = [[Dog alloc] initWithValue:@{@"name" : @"Samurai", @"image" : @"Samurai", @"color" : @"Negro", @"location" : @"Guanacaste", @"age" : [NSNumber numberWithInt:1], @"contactInformation" : @"88992233"}];
    Dog * dog6 = [[Dog alloc] initWithValue:@{@"name" : @"Bob", @"image" : @"Bob", @"color" : @"Blanco", @"location" : @"Heredia", @"age" : [NSNumber numberWithInt:12], @"contactInformation" : @"88112233"}];
    Dog * dog7 = [[Dog alloc] initWithValue:@{@"name" : @"Firulai", @"image" : @"Firulai", @"color" : @"Negro", @"location" : @"Alajuela", @"age" : [NSNumber numberWithInt:3], @"contactInformation" : @"88112343"}];
    Dog * dog8 = [[Dog alloc] initWithValue:@{@"name" : @"Doggy", @"image" : @"Doggy", @"color" : @"Manchado", @"location" : @"Heredia", @"age" : [NSNumber numberWithInt:6], @"contactInformation" : @"88112233"}];
    Dog * dog9 = [[Dog alloc] initWithValue:@{@"name" : @"Liza", @"image" : @"Liza", @"color" : @"Negro", @"location" : @"Limòn", @"age" : [NSNumber numberWithInt:3], @"contactInformation" : @"88112233"}];
    
    [RealmManager saveRealmObject:dog0];
    [RealmManager saveRealmObject:dog1];
    [RealmManager saveRealmObject:dog2];
    [RealmManager saveRealmObject:dog3];
    [RealmManager saveRealmObject:dog4];
    [RealmManager saveRealmObject:dog5];
    [RealmManager saveRealmObject:dog6];
    [RealmManager saveRealmObject:dog7];
    [RealmManager saveRealmObject:dog8];
    [RealmManager saveRealmObject:dog9];
    return [RealmManager getAllDogs];//ulitizamos recursion
}

+(RLMResults*) getAllDogs{
    RLMResults<Dog *> *dogs = [Dog allObjects];
    if(dogs.count > 0){
        return dogs;
    }
    return  [RealmManager insertDogs];//ulitizamos recursion
}

@end
