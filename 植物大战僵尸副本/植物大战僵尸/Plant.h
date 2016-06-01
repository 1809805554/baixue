//
//  Plant.h
//  植物大战僵尸
//
//  Created by apple on 16/1/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Goast.h"
@interface Plant : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *hurtS;
@property(nonatomic,assign)int hurtN;
@property(nonatomic,assign)int cost;

//游戏结束与否的一个表示  控制系统去判断这个标识

@property(nonatomic,assign)int dis;//植物的位置 僵尸的距离

//植物要射击一只僵尸
-(void)shoot:(Goast *)g;
-(instancetype)initWithName:(NSString*)name andHurt:(NSString *)hurtS andHurtN:(int)hurtN andCost:(int)cost;
@end
