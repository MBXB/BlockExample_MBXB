//
//  Dog.m
//  Block_example
//
//  Created by Oboe_b on 2017/10/7.
//  Copyright © 2017年 Oboe_b. All rights reserved.
//微博https://weibo.com/u/6342211709
//技术交流q群150731459
//微信搜索iOS编程实战
//简书地址:http://www.jianshu.com/u/a437e8f87a81

#import "Dog.h"

@implementation Dog
- (void)eat:(void(^)(NSString*))block{
    block(@"狗粮");
}
- (void(^)(int))eatFood{
    return ^(int food){
        NSLog(@"狗狗吃了狗粮%d斤",food);
    };
}
@end
