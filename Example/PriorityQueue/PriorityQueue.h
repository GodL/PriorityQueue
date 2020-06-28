//
//  PriorityQueue.h
//  Example
//
//  Created by lihao10 on 2020/6/28.
//  Copyright © 2020 GodL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Compareable.h"

NS_ASSUME_NONNULL_BEGIN

@interface PriorityQueue<Element> : NSObject

@property (nonatomic,assign,readonly) NSInteger count;

- (void)enqueue:(id<Compareable>)data;

- (nullable Element)dequeue;

@end

NS_ASSUME_NONNULL_END
