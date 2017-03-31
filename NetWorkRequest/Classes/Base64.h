//
//  Base64.h
//  Pods
//
//  Created by Rain on 2017/3/31.
//
//

#import <Foundation/Foundation.h>

#define __BASE64( text )        [Base64 base64StringFromText:text]
#define __TEXT( base64 )        [Base64 textFromBase64String:base64]

@interface Base64 : NSObject

/******************************************************************************
 函数名称 : + (NSString *)base64StringFromText:(NSString *)text
 函数描述 : 将文本先des加密，再base64格式字符串
 输入参数 : (NSString *)text    文本
 输出参数 : N/A
 返回参数 : (NSString *)    base64格式字符串
 备注信息 :
 ******************************************************************************/
+ (NSString *)base64StringFromText:(NSString *)text;
/******************************************************************************
 函数名称 : + (NSString *)textFromBase64String:(NSString *)base64
 函数描述 : 将加密串先base64，再解密
 输入参数 : (NSString *)base64  base64格式字符串
 输出参数 : N/A
 返回参数 : (NSString *)    文本
 备注信息 :
 ******************************************************************************/
+ (NSString *)textFromBase64String:(NSString *)base64;

+ (NSData *)dataWithBase64EncodedString:(NSString *)string;
@end
