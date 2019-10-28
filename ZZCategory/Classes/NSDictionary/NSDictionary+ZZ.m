//
//  NSDictionary+ZZ.m
//  AFNetworking
//
//  Created by laixian on 2019/10/19.
//

#import "NSDictionary+ZZ.h"

@implementation NSDictionary (ZZ)
- (NSString *)stringValueForKey:(NSString *)key
{
    if (key.length == 0) return nil;
    NSObject * value = [self valueForKey:key];
    if ([value isKindOfClass:NSNumber.class]) {
        return [(NSNumber *)value stringValue];
    }
    return (NSString *)value;
}
@end
