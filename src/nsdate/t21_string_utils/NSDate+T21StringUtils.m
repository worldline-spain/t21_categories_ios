//
//  NSDate+T21StringUtils.m
//  MyApp
//
//  Created by Juan Carlos Castellet Fernandez on 15/2/16.
//  Copyright © 2016 Tempos21. All rights reserved.
//

#import "NSDate+T21StringUtils.h"
#import "NSDateFormatter+T21CommonUtils.h"

NSString *const kISO8601Format                 = @"yyyy-MM-dd'T'HH:mm:ss'Z'"; // 2016-02-15T11:39:26Z
NSString *const kRFC1123Format                 = @"EEE',' dd MMM yyyy HH':'mm':'ss z"; // Mon, 15 Feb 2016 11:39:26 GMT

#pragma mark - Apple default formats

NSString *const kDefaultShortFormat            = @"M/d/yy"; // 2/15/16
NSString *const kSpanishDefaultShortFormat     = @"d/M/yy"; // 15/2/16

NSString *const kDefaultMediumFormat           = @"MMM dd, yyyy"; // Feb 15, 2016
NSString *const kSpanishDefaultMediumFormat    = @"dd MMM yyyy"; // 15 feb 2016

NSString *const kDefaultLongFormat           = @"MMMM dd, yyyy"; // February 15, 2016
NSString *const kSpanishDefaultLongFormat    = @"dd 'de' MMMM 'de' yyyy"; // 15 de febrero de 2016

NSString *const kDefaultFullFormat           = @"EEEE, MMMM dd, yyyy"; // Monday, February 15, 2016
NSString *const kSpanishDefaultFullFormat    = @"EEEE, dd 'de' MMMM 'de' yyyy"; // lunes, 15 de febrero de 2016

@implementation NSDate (T21StringUtils)

#pragma mark - String components

- (NSString *)getDayString
{
    NSDateFormatter *df = [[NSDateFormatter alloc] initWithCurrentLocale];
    [df setDateStyle:NSDateFormatterLongStyle];
    [df setTimeStyle:NSDateFormatterNoStyle];

    NSDateComponents *dayComponents = [NSDateComponents new];
    
    NSDateComponents *dateComponents = [self getDateComponents];
    [dayComponents setDay:dateComponents.day];
    [dayComponents setMonth:dateComponents.month];
    [dayComponents setYear:dateComponents.year];
    
    return [df stringFromDate:[[NSCalendar currentCalendar] dateFromComponents:dayComponents]];
}

- (NSString *)getMonthString
{
    NSDateFormatter *df = [[NSDateFormatter alloc] initWithCurrentLocale];
    [df setTimeZone:[NSTimeZone systemTimeZone]];
    
    NSDateComponents *dateComponents = [self getDateComponents];
    
    return df.monthSymbols[dateComponents.month-1];
}

- (NSDateComponents *)getDateComponents
{
    NSCalendar *sysCalendar = [NSCalendar currentCalendar];
    unsigned int unitFlags = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitSecond | NSCalendarUnitWeekday;
    NSDateComponents * dateComponents = [sysCalendar components:unitFlags fromDate:self];
    return dateComponents;
}

#pragma mark - String to date

+ (NSDate *)getDateFromString:(NSString *)stringDate withFormat:(NSString *)format
{
    if (stringDate) {
        NSDateFormatter *df = [[NSDateFormatter alloc] initWithCurrentLocale];
        [df setDateFormat:format];
        return [df dateFromString:stringDate];
    }
    return nil;
}

+ (NSDate *)getDateFromISO08601String:(NSString *)stringDate
{
    NSArray *formatsToTry = @[ @"yyyy-MM-dd'T'HH:mm.ss.SSS'Z'",
                               @"yyyy-MM-dd'T'HH:mm:ss'Z'",
                               @"yyyy-MM-dd HH:mm:ss ZZZ",
                               @"yyyy-MM-dd HH:mm:ss Z",
                               @"yyyy-MM-dd HH:mm:ss",
                               @"yyyy-MM-dd" ];
    
    NSDate *result = nil;
    for (NSString *format in formatsToTry) {
        result = [self getDateFromString:stringDate withFormat:format];
        if (result) break;
    }
    
    return result;
}

+ (NSDate *)getDateFromRFC1123String:(NSString *)stringDate
{
    if (stringDate) {
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        df.locale = [NSLocale localeWithLocaleIdentifier:@"en_US"];
        df.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT"]; //Normally, the RFC1123 format strings come in GMT+0000
        [df setDateFormat:kRFC1123Format];
        
        return [df dateFromString:stringDate];
    }
    return nil;
}

#pragma mark - Date to string

- (NSString *)getStringWithFormat:(NSString *)format
{
    NSDateFormatter *df = [[NSDateFormatter alloc] initWithCurrentLocale];
    [df setDateFormat:format];
    
    return [df stringFromDate:self];
}

- (NSString *)getStringWithISO8601Format
{
    return [self getStringWithFormat:kISO8601Format];
}

- (NSString *)getStringWithRFC1123Format
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.locale = [NSLocale localeWithLocaleIdentifier:@"en_US"];
    df.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT"]; //Normally, the RFC1123 format strings come in GMT+0000
    [df setDateFormat:kRFC1123Format];
    
    return  [df stringFromDate:self];
}

+ (void)formatTest
{
    NSDate *date = [NSDate date];
    NSLog(@"%@", date);
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setLocale:[NSLocale localeWithLocaleIdentifier:@"en_US"]];
   
    df.dateStyle = NSDateFormatterShortStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);
    
    df.dateStyle = NSDateFormatterMediumStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);
    
    df.dateStyle = NSDateFormatterLongStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);
    
    df.dateStyle = NSDateFormatterFullStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);

    [df setLocale:[NSLocale localeWithLocaleIdentifier:@"es_ES"]];

    df.dateStyle = NSDateFormatterNoStyle;
    df.timeStyle = NSDateFormatterNoStyle;
    NSLog(@"%@", [df stringFromDate:date]);
    
    df.dateStyle = NSDateFormatterShortStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);
    
    df.dateStyle = NSDateFormatterMediumStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);
    
    df.dateStyle = NSDateFormatterLongStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);
    
    df.dateStyle = NSDateFormatterFullStyle;
    df.timeStyle = NSDateFormatterShortStyle;
    NSLog(@"%@", [df stringFromDate:date]);
}

@end