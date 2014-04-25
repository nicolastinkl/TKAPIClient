//
//  TKAPIManager.m
//  TKAPIClient
//
//  Created by tinkl on 24/4/14.
//  Copyright (c) 2014 ___TINKL___. All rights reserved.
//

#import "TKAPIManager.h"
#import <JSONKit.h>
#import <AFNetworking.h>

@implementation TKAPIManager


- (void) dosomethings
{
    NSString * stringjson = [@"{}" JSONString];
    NSLog(@"stringjson :%@",stringjson);
}
@end
