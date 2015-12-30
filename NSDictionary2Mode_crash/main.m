//
//  main.m
//  NSDictionary2Mode_crash
//
//  Created by wbder on 15/12/30.
//  Copyright © 2015年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"hangzhou",@"address",[NSNumber numberWithInt:10],@"age" ,@"男",@"sex",nil];
        
        Person *person = [[Person alloc] initWithDict:dict];
        NSLog(@"%@",person);
        
        
        
    }
    return 0;
}
