//
//  main.m
//  OC-Block
//
//  Created by Gaoxiang Zhang on 2020/11/5.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // 带返回值带参数的block
    int (^blockWithReturnAndParam)(int) = ^int (int n) {
        NSLog(@"%d", n);
        return 0;
    };
    NSLog(@"%d", blockWithReturnAndParam(1));
    
    // 不带返回值带参数的block
    NSLog(@"-----------------------------------------");
    void (^blockWithParam)(NSString*) = ^ (NSString* param) {
        NSLog(@"%@", param);
    };
    blockWithParam(@"blockWithParam");
    
    // 带返回值不带参数的block
    NSLog(@"-----------------------------------------");
    NSString* (^blockWithReturn)(void) = ^ NSString* {
        return @"blockWithReturn";
    };
    NSLog(@"%@", blockWithReturn());
    
    // 不带返回值不带参数的block
    NSLog(@"-----------------------------------------");
    void (^block)(void) = ^{
        NSLog(@"Nothing");
    };
    block();
    
    // typedef
    NSLog(@"-----------------------------------------");
    typedef void (^typedefBlock)(NSString* err);
    typedefBlock newBlock = ^(NSString* err) {
        NSLog(@"err: %@", err);
    };
    newBlock(@"I am a error.");
}
