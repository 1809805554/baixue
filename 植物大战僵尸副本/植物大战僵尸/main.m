//
//  main.m
//  植物大战僵尸
//
//  Created by apple on 16/1/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Plant.h"
#import "Pea.h"
#import "SnowPea.h"
#import "Goast.h"
#import "Nut.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Plant *x;
//        //x 仅仅是一个指针 x=nil;
//        
//        Plant *p = [[Plant alloc]initWithName:@"x" andHurt:@"普通" andHurtN:10 andCost:10];
//        //p有了空间了 也有了成员变量了 p的 name = nil;
        
    //以下是正常内容
        Pea *p = [[Pea alloc]initWithName:@"shooter" andHurt:@"高级" andHurtN:120 andCost:100];
        SnowPea *sp = [[SnowPea alloc]initWithName:@"snowShooter" andHurt:@"中级" andHurtN:50 andCost:0];
        sp.slowN =30;
        
        Nut *nut = [[Nut alloc]initWithName:@"strongWall" andHurt:@"没有" andHurtN:0 andCost:50];
        nut.dis = 2000; //和僵尸距离
     //设定僵尸
        Goast *goast = [[Goast alloc]init];
        goast.speed = 200;
        goast.bloodValue = 2000;
        
     //开始玩游戏
        while (nut.dis>0&&goast.bloodValue>0)
        {
            NSLog(@"距离%d 僵尸血量%d",nut.dis,goast.bloodValue);
            [p shoot:goast];
            if (arc4random()%100 <10)
            {
                [sp shoot:goast];
            }
            nut.dis -= goast.speed;
            [NSThread sleepForTimeInterval:0.5];
        }
        NSLog(@"游戏结束 距离%d 僵尸血量%d",nut.dis,goast.bloodValue);
    }
    return 0;
}
