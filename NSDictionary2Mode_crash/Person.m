//
//  Person.m
//  NSDictionary2Mode_crash
//
//  Created by wbder on 15/12/30.
//  Copyright © 2015年 wbder. All rights reserved.
//

#import "Person.h"

@interface Person()
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* address;
@property int age;
@end

@implementation Person

-(instancetype) initWithDict: (NSDictionary*) dict
{
    if (self = [super init])
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}


-(void) setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"%s,key: %@,value: %@",__func__,key,value);
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"<%@,%p> -- {name: %@,address: %@,age: %d}",self.class,self,self.name,self.address,self.age];
}
@end
