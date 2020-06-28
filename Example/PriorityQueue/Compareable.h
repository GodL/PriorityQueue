//
//  Compareable.h
//  Example
//
//  Created by lihao10 on 2020/6/28.
//  Copyright © 2020 GodL. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Compareable <NSObject>

- (NSComparisonResult)compare:(id<Compareable>)other;

@optional

@property (nonatomic,assign) NSInteger priority;

@end

NS_ASSUME_NONNULL_END
