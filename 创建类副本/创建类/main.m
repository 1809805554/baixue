//
//  main.m
//  创建类
//
//  Created by apple on 16/1/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
//导入头文件  这里要注意 "自己写的文件" <系统提供的库文件>
//搜寻路径
//" " 先搜寻自己写文件 再接着库文件
//< > 仅仅搜寻库文件的
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * xiaoMing = [[Person alloc]init];
        [xiaoMing setAge:10];
        [xiaoMing show];
        
        //类方法如何调用 类来调用
        [Person show];
        
    }
    return 0;
}
