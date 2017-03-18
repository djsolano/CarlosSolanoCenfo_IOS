//
//  RealmManager.m
//  News
//
//  Created by Estudiantes on 4/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "RealmManager.h"
#import "Category.h"

@implementation RealmManager

+(RLMResults*)insertCategories{
//initWithValue es como un mapa, key es el nombre en la clase
    Category * category1 = [[Category alloc] initWithValue:@{@"name" : @"Sucesos", @"imageName" : @"incident"}];
    Category * category2 = [[Category alloc] initWithValue:@{@"name" : @"Deportes", @"imageName" : @"sports"}];
    Category * category3 = [[Category alloc] initWithValue:@{@"name" : @"Tecnología", @"imageName" : @"technology"}];
    Category * category4 = [[Category alloc] initWithValue:@{@"name" : @"Economía", @"imageName" : @"economy"}];
    [RealmManager saveRealmObject:category1];
    [RealmManager saveRealmObject:category2];
    [RealmManager saveRealmObject:category3];
    [RealmManager saveRealmObject:category4];
    return [RealmManager getAllCategories];//ulitizamos recursion
    
    
}

+(void)saveRealmObject:(RLMObject *) realmObject{ //al heredar de RLMObject , cualquier clase la guarda.
    // Get the default Realm
    RLMRealm *realm = [RLMRealm defaultRealm];
    // You only need to do this once (per thread)
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}

+(Category*)createCategoryWithName:(NSString*)name imageName:(NSString*) imageName{
    //esta es otra manera de crear objetos en realm.
    Category * category = [[Category alloc] init];
    category.name = name;
    category.imageName = imageName;
    return category;
}

+(RLMResults*) getAllCategories{
    RLMResults<Category *> *categories = [Category allObjects];
    if(categories.count > 0){
        return categories;
    }
    return  [RealmManager insertCategories];//ulitizamos recursion
}

+(Category*) getCategoryWithName:(NSString*)name{
    // Query using an NSPredicate , esto se usa para busqueda en core data y realm para filtrar
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"name = %@",name];// con solo un = ya hace la comparacion
    RLMResults<Category *> *categories = [Category objectsWithPredicate:pred];
    if(categories.count > 0){
        return categories.firstObject;
    }
    return nil;
}

+(void)createNewsWithTitle:(NSString*)title newsDescription:(NSString*)newsDescription category:(Category*)category{
    News * news = [News new];
    news.date = [NSDate date];
    news.title = title;
    news.newsDescription = newsDescription;
    [RealmManager saveRealmObject:news];
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [category.news addObject:news];
    [realm commitWriteTransaction];
}

@end
