//
//  NSString+T21CommonCryptoUtils.m
//  T21Categories/NSString/CommonCryptoUtils
//
//  Created by David Arrufat on 27/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "NSString+T21CommonCryptoUtils.h"
#import "NSData+CommonCrypto.h"

@implementation NSString (T21CommonCryptoUtils)

-(NSString *)MD5String
{
    NSData *data = [[self dataUsingEncoding:NSUTF8StringEncoding] MD5Sum];
    
    const unsigned char *buf = data.bytes;
    NSMutableString *sbuf = [NSMutableString stringWithCapacity:data.length * 2];
    
    for (NSInteger i=0; i<data.length; ++i) {
        [sbuf appendFormat:@"%02lX", (unsigned long)buf[i]];
    }
    
    return sbuf;
}

@end
