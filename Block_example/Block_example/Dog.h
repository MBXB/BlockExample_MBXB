//
//  Dog.h
//  Block_example
//
//  Created by Oboe_b on 2017/10/7.
//  Copyright © 2017年 Oboe_b. All rights reserved.
//微博https://weibo.com/u/6342211709
//技术交流q群150731459
//微信搜索iOS编程实战
//简书地址:http://www.jianshu.com/u/a437e8f87a81

#import <Foundation/Foundation.h>

@interface Dog : NSObject

/**block :ARC使用strong 非ARC copy*/
@property(nonatomic,strong)void(^block)();//block作为属性

- (void)eat:(void(^)(NSString*))block;//block做为方法参数

- (void(^)(int))eatFood;

@end
