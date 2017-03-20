//
//  CoreDataManager.m
//  Tarea4
//
//  Created by Carlos Solano on 3/19/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "CoreDataManager.h"
#import "CDDog.h"
#import <MagicalRecord/MagicalRecord.h>

@implementation CoreDataManager

+(void) saveContext {
    [[NSManagedObjectContext MR_defaultContext]MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError * error) {
        if (contextDidSave) {
            NSLog(@"You successfully saved your context.");
        }
        else if (error){
            NSLog(@"Error saving context: %@",error.description);
        }
    }];
}

+(NSArray *)getAllDogs{
    NSArray * dogs = [CDDog MR_findAll];
    if(dogs.count > 0){
        return dogs;
    }
    return [CoreDataManager insertDogs];
}



+(NSArray*) insertDogs{
    
  [CDDog createDogWithName:@"Fido" image:@"Fido" color:@"Negro" location:@"Heredia" age:@"5" contactInformation:@"88112233"];
   [CDDog createDogWithName:@"Kami" image:@"Kami" color:@"Blanco" location:@"San Jose" age:@"5" contactInformation:@"dosg@mail.com"];
     [CDDog createDogWithName:@"Roy" image:@"Roy" color:@"Café" location:@"Alajuela" age:@"5" contactInformation:@"88114433"];
    [CDDog createDogWithName:@"Terror" image:@"Terror" color:@"Negro y Blanco" location:@"Cartago" age:@"5" contactInformation:@"88112255"];
    [CDDog createDogWithName:@"Flor" image:@"Flor" color:@"Cafè" location:@"Puntarenas" age:@"5" contactInformation:@"albergue@mail.com"];
      [CDDog createDogWithName:@"Samurai" image:@"Samurai" color:@"Negro" location:@"San Jose" age:@"5" contactInformation:@"77112233"];
     [CDDog createDogWithName:@"Bob" image:@"Bob" color:@"Blanco" location:@"Limon" age:@"5" contactInformation:@"87892233"];
     [CDDog createDogWithName:@"Firulai" image:@"Firulai" color:@"Dorado" location:@"Heredia" age:@"5" contactInformation:@"firu@mail.com"];
    [CDDog createDogWithName:@"Doggy" image:@"Doggy" color:@"Negro" location:@"Alajuela" age:@"5" contactInformation:@"22112233"];
    [CDDog createDogWithName:@"Liza" image:@"Liza" color:@"Negro" location:@"Heredia" age:@"5" contactInformation:@"55332233"];

    [CoreDataManager saveContext];//Sin esto.El contexto no se guarda en disco solo en memoria, asi que si vuelvo a ejecutar, empieza todo en vacio. Aqui se hacen todas las operaciones que se hagan antes, no importa que sean de varios objetos.
    return [CoreDataManager getAllDogs];
}

@end
