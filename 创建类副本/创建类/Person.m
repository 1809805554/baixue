    //
//  Person.m
//  创建类
//
//  Created by apple on 16/1/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Person.h"
//实现文件 主要用来实现头文件中声明的方法
@implementation Person
//对象方法 -方法
-(void)setAge:(int)a
{
    age = a;
}
-(int)age
{
    return age;
}
//显示age值
-(void)show
{
    printf("%d\n",age);
}
//类方法 成员方法  +方法
+(void)show
{
    printf("我是谁\n");
    //类方法不能够直接访问 成员变量或者是成员方法
    Person *person=[[Person alloc]init];
    [person setAge:10];
    
}
@end
