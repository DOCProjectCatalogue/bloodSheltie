//
// Created by Alexandre Normand on 1/9/2014.
// Copyright (c) 2014 glukit. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EncodingUtils : NSObject

+(uint16_t) crc16:(NSData *)packet withOffset:(uint16_t)offset andLength:(uint16_t)length;
+(NSData *) dataFromHexString: (NSString*)hexString;
+(uint16_t) getPacketCrc16:(NSData *)packet;
+(NSString *) bytesToString:(Byte *)bytes withSize:(size_t)size;
@end