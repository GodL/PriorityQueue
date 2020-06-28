//
//  PriorityQueue.m
//  Example
//
//  Created by lihao10 on 2020/6/28.
//  Copyright © 2020 GodL. All rights reserved.
//

#import "PriorityQueue.h"

@interface PriorityQueue ()

@property (nonatomic,strong) NSMutableArray<id<Compareable>> *datas;

@end

@implementation PriorityQueue

- (NSMutableArray<id<Compareable>> *)datas {
    if (!_datas) {
        _datas = [NSMutableArray array];
        [_datas addObject:(id<Compareable>)NSNull.null];//sentinel node
    }
    return _datas;
}

- (NSInteger)count {
    return self.datas.count - 1;
}

- (void)enqueue:(id<Compareable>)data {
    [self.datas addObject:data];
    [self _up];
}

- (id)dequeue {
    if (self.count == 0) return nil;
    id data = self.datas[1];
    [self.datas exchangeObjectAtIndex:self.datas.count - 1 withObjectAtIndex:1];
    [self.datas removeLastObject];
    if (self.count > 0) {
        [self _down];
    }
    return data;
}

#pragma mark- Private
- (void)_up {
    NSInteger index = self.datas.count - 1;
    id<Compareable> data = self.datas[index];
    while (index > 1 && [data compare:self.datas[index / 2]] == NSOrderedDescending) {
        self.datas[index] = self.datas[index / 2];
        index /= 2;
    }
    self.datas[index] = data;
}

- (void)_down {
    NSInteger index = 1;
    id<Compareable> data = self.datas[index];
    while (index * 2 <= self.count - 1) {
        NSInteger child = index * 2;
        if (child < self.count - 1 && [self.datas[child + 1] compare:self.datas[child]] == NSOrderedDescending) {
            child ++;
        }
        if ([self.datas[child] compare:data] == NSOrderedDescending) {
            self.datas[index] = self.datas[child];
        }
        index = child;
    }
    self.datas[index] = data;
}

- (NSString *)description {
    return [self.datas description];
}

@end
