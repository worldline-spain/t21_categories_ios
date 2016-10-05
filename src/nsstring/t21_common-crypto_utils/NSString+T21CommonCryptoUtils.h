//
//  NSString+T21CommonCryptoUtils.h
//  T21Categories/NSString/CommonCryptoUtils
//
//  Created by David Arrufat on 27/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

@interface NSString (T21CommonCryptoUtils)

/**
 * @return The current string md5 encoded using the CommonCrypto pod
 */
- (NSString *)MD5String;

@end
