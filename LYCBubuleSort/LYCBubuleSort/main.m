//
//  main.m
//  LYCBubuleSort
//
//  Created by YouchengLi on 2017/6/22.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test : NSObject

@end

@implementation Test

- (void)bubleSortObjectiveC
{
    //注释
    NSLog(@"注释");
    int a[100],i,n;
    //输入n个数
    scanf("%d",&n);
    for (i = 0; i < n; i++) {
        scanf("%d",&a[i]);
    }
    
    NSMutableArray *mArray = [NSMutableArray array];
    for (i = 0; i < n; i++) {
        [mArray addObject:[NSNumber numberWithInt:a[i]]];
    }
    
    //算法部分
    for (NSInteger i = 0; i < mArray.count; i++) {
        for (NSInteger j = 0; j < mArray.count - i - 1; j++) {
            if ([mArray[j] integerValue] < [mArray[j + 1] integerValue]) {
                [mArray exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
            }
        }
    }
    
    NSLog(@"array = %@",mArray);

}

- (void)bubleSortC
{
    int a[100],i,j,t,n;
    //输入n个数
    scanf("%d",&n);
    for (i = 0; i < n; i++) {
        scanf("%d",&a[i]);
    }
    
    //算法部分
    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - i - 1; j++) {
            if (a[j] < a[j+1]) {//从大到小
                t = a[j];
                a[j] = a[j + 1];
                a[j + 1] = t;
            }
        }
    }
    
    //输出
    for (i = 0; i < n; i++) {
        printf("%d ",a[i]);
    }
    printf("\n");
    
    getchar();
    getchar();
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Test *test = [[Test alloc] init];
        [test bubleSortObjectiveC];
    }
    return 0;
}





