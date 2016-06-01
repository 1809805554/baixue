//
//  Person.h
//  创建类
//
//  Created by apple on 16/1/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
//头文件  用来声明 类的属性 和 方法
//只有声明在头文件中的方法 才能在外部函数中使用
@interface Person : NSObject
{
//成员变量
    int age;
}
//成员方法
//对象方法 -方法
-(void)setAge:(int)a;
-(int)age;
-(void)show;

//类方法 成员方法  +方法
+(void)show;

@end
