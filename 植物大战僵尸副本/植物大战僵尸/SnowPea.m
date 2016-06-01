//
//  SnowPea.m
//  植物大战僵尸
//
//  Created by apple on 16/1/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "SnowPea.h"

@implementation SnowPea
-(void)shoot:(Goast *)g
{
    [super shoot:g];
    g.speed -= self.slowN;
}
@end
