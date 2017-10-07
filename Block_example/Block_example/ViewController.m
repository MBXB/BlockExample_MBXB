//
//  ViewController.m
//  Block_example
//
//  Created by Oboe_b on 2017/10/7.
//  Copyright © 2017年 Oboe_b. All rights reserved.
//微博https://weibo.com/u/6342211709
//技术交流q群150731459
//微信搜索iOS编程实战
//简书地址:http://www.jianshu.com/u/a437e8f87a81

#import "ViewController.h"
#import "Dog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self block_property];
    [self block_parameter];
    [self block_returnValue];
}
//bclok作为对象的属性
- (void)block_property{
    Dog *dog = [[Dog alloc]init];
    void(^block_MBXB)() = ^(){
        NSLog(@"狗狗不可以随便拉粑粑");
    };
    dog.block = block_MBXB;
    dog.block();
}
//block作为方法的参数
- (void)block_parameter{
    Dog *dog = [[Dog alloc]init];
    [dog eat:^(NSString *food) {
        NSLog(@"狗狗吃%@,吃了一大盆",food);
    }];
}
//block作为返回值
- (void)block_returnValue{
    Dog *dog = [[Dog alloc]init];
    dog.eatFood(200);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
