//
//  HttpHelper.h
//  Pods
//
//  Created by Rain on 2017/3/31.
//
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "SBJSon5.h"
typedef void(^SuccessResponseBlock)(NSDictionary *dict);
typedef void(^FailureResponseBlock)(NSString *errorCode);

@interface NetWorkRequest : NSObject

+ (void)post:(NSString *)url params:(NSDictionary *)params success:(SuccessResponseBlock)successBlock failure:(FailureResponseBlock)failBlock;

@end
