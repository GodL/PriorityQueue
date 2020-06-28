//
//  TestModel.m
//  Example
//
//  Created by lihao10 on 2020/6/28.
//  Copyright © 2020 GodL. All rights reserved.
//

#import "TestModel.h"

@implementation TestModel

@synthesize priority;

- (NSComparisonResult)compare:(id<Compareable>)other {
    return [@(self.priority) compare:@(other.priority)];
}

- (NSString *)description {
    return [[@"test === " stringByAppendingString:@(self.priority).stringValue] stringByAppendingFormat:@"time = %f",self.time];
}

@end
