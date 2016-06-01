//
//  Plant.m
//  植物大战僵尸
//
//  Created by apple on 16/1/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Plant.h"
//类 它本身没有空间 只有它创建的对象 才有空间 才有成员变量 才有对象方法
@implementation Plant
-(void)shoot:(Goast *)g
{
    //这里表示 植物射击 僵尸 僵尸血量下降
    //这里的self 谁调用shoot: 这个方法 self就是谁
    g.bloodValue -= self.hurtN;

}
-(instancetype)initWithName:(NSString*)name andHurt:(NSString *)hurtS andHurtN:(int)hurtN andCost:(int)cost
{
    self = [super init];
    if (self) {
        _name = name;
        _hurtS=hurtS;
        _hurtN=hurtN;
        _cost =cost;
    }
    return self;
}
@end
