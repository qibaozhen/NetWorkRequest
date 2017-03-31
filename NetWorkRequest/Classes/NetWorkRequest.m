//
//  HttpHelper.m
//  Pods
//
//  Created by Rain on 2017/3/31.
//
//

#import "NetWorkRequest.h"
#import "Base64.h"

@implementation NetWorkRequest

+ (void)post:(NSString *)url params:(NSDictionary *)params success:(SuccessResponseBlock)successBlock failure:(FailureResponseBlock)failBlock
{
    SBJson5Writer *writer = [[SBJson5Writer alloc] init];
    NSString *json = [writer stringWithObject:params];
    NSString *encrypJson=__BASE64(json);
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer=[AFHTTPRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager.requestSerializer setTimeoutInterval:10];
    //证书模式
    manager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    manager.securityPolicy.allowInvalidCertificates = NO;
    [manager.securityPolicy setValidatesDomainName:NO];

    [manager POST:url parameters:@{@"params":encrypJson, } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        if (successBlock) {
            NSString *str=[[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
            
            str=__TEXT(str);//default is encrpt
            
            NSDictionary *dictOne = [NSJSONSerialization JSONObjectWithData:[str dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"->请求成功 \n->请求的接口 %@ \n->请求参数 %@ \n->返回结果 %@",url,params,dictOne);
            successBlock(dictOne);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failBlock) {
            NSLog(@"->请求失败 \n->请求的接口 %@ \n->请求参数 %@ \n->请求失败原因 %@",url,params,error);
            failBlock(@"-99");
        }
    }];
}

@end
