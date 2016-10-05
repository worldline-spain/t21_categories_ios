//
//  NSDate+T21StringUtils.h
//  MyApp
//
//  Created by Juan Carlos Castellet Fernandez on 15/2/16.
//  Copyright © 2016 Tempos21. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kISO8601Format;
extern NSString *const kRFC1123Format;

#pragma mark - Apple default formats

extern NSString *const kDefaultShortFormat;
extern NSString *const kSpanishDefaultShortFormat;

extern NSString *const kDefaultMediumFormat;
extern NSString *const kSpanishDefaultMediumFormat;

extern NSString *const kDefaultLongFormat;
extern NSString *const kSpanishDefaultLongFormat;

extern NSString *const kDefaultFullFormat;
extern NSString *const kSpanishDefaultFullFormat;

@interface NSDate (T21StringUtils)

#pragma mark - String components
- (NSString *)getDayString;
- (NSString *)getMonthString;

#pragma mark - String to date
+ (NSDate *)getDateFromString:(NSString *)stringDate withFormat:(NSString *)format;
+ (NSDate *)getDateFromISO08601String:(NSString *)stringDate;
+ (NSDate *)getDateFromRFC1123String:(NSString *)stringDate;

#pragma mark - Date to string
- (NSString *)getStringWithFormat:(NSString *)format;
- (NSString *)getStringWithISO8601Format;
- (NSString *)getStringWithRFC1123Format;

@end