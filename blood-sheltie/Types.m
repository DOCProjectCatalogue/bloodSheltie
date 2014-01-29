//
// Created by Alexandre Normand on 1/8/2014.
// Copyright (c) 2014 glukit. All rights reserved.
//

#import "Types.h"

static NSDate *DEXCOM_EPOCH = nil;

@implementation Types {

}
+ (void)initialize {
    DEXCOM_EPOCH = [NSCalendarDate dateWithYear:2009 month:1 day:1 hour:0 minute:0 second:0 timeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
}

+ (NSString *)receiverCommandIdentifier:(ReceiverCommand)command {
    switch (command) {
        case Ack:
            return @"ACK";
        case EnterFirmwareUpgradeMode:
            return @"EnterFirmwareUpgradeMode";
        case EnterSambaAccessMode:
            return @"EnterSambaAccessMode";
        case EraseDatabase:
            return @"EraseDatabase";
        case IncompletePacketReceived:
            return @"IncompletePacketReceived";
        case InvalidCommand:
            return @"InvalidCommand";
        case InvalidMode:
            return @"InvalidMode";
        case InvalidParam:
            return @"InvalidParam";
        case MaxCommand:
            return @"MaxCommand";
        case MaxPossibleCommand:
            return @"MaxPossibleCommand";
        case Nak:
            return @"Nak";
        case Null:
            return @"Null";
        case Ping:
            return @"Ping";
        case ReadBatteryLevel:
            return @"ReadBatteryLevel";
        case ReadBatteryState:
            return @"ReadBatteryState";
        case ReadBlindedMode:
            return @"ReadBlindedMode";
        case ReadClockMode:
            return @"ReadClockMode";
        case ReadDatabasePageHeader:
            return @"ReadDatabasePageHeader";
        case ReadDatabasePageRange:
            return @"ReadDatabasePageRange";
        case ReadDatabasePages:
            return @"ReadDatabasePages";
        case ReadDatabasePartitionInfo:
            return @"ReadDatabasePartitionInfo";
        case ReadDeviceMode:
            return @"ReadDeviceMode";
        case ReadDisplayTimeOffset:
            return @"ReadDisplayTimeOffset";
        case ReadEnableSetUpWizardFlag:
            return @"ReadEnableSetUpWizardFlag";
        case ReadFirmwareHeader:
            return @"ReadFirmwareHeader";
        case ReadFirmwareSettings:
            return @"ReadFirmwareSettings";
        case ReadFlashPage:
            return @"ReadFlashPage";
        case ReadGlucoseUnit:
            return @"ReadGlucoseUnit";
        case ReadHardwareBoardId:
            return @"ReadHardwareBoardId";
        case ReadLanguage:
            return @"ReadLanguage";
        case ReadRTC:
            return @"ReadRTC";
        case ReadSetUpWizardState:
            return @"ReadSetUpWizardState";
        case ReadSystemTime:
            return @"ReadSystemTime";
        case ReadSystemTimeOffset:
            return @"ReadSystemTimeOffset";
        case ReadTransmitterID:
            return @"ReadTransmitterID";
        case ReceiverError:
            return @"ReceiverError";
        case ResetReceiver:
            return @"ResetReceiver";
        case ShutdownReceiver:
            return @"ShutdownReceiver";
        case WriteBlindedMode:
            return @"WriteBlindedMode";
        case WriteClockMode:
            return @"WriteClockMode";
        case WriteDisplayTimeOffset:
            return @"WriteDisplayTimeOffset";
        case WriteEnableSetUpWizardFlag:
            return @"WriteEnableSetUpWizardFlag";
        case WriteFlashPage:
            return @"WriteFlashPage";
        case WriteGlucoseUnit:
            return @"WriteGlucoseUnit";
        case WriteLanguage:
            return @"WriteLanguage";
        case WritePCParameters:
            return @"WritePCParameters";
        case WriteSetUpWizardState:
            return @"WriteSetUpWizardState";
        case WriteSystemTime:
            return @"WriteSystemTime";
        case WriteTransmitterID:
            return @"WriteTransmitterID";
    }
    return @"unknown";
}

+ (NSString *)recordTypeIdentifier:(RecordType)recordType {
    switch (recordType) {
        case Aberration:
            return @"Aberration";
        case CalSet:
            return @"CalSet";
        case EGVData:
            return @"EGVData";
        case FirmwareParameterData:
            return @"FirmwareParameterData";
        case InsertionTime:
            return @"InsertionTime";
        case ManufacturingData:
            return @"ManufacturingData";
        case MaxValue:
            return @"MaxValue";
        case MeterData:
            return @"MeterData";
        case PCSoftwareParameter:
            return @"PCSoftwareParameter";
        case ReceiverErrorData:
            return @"ReceiverErrorData";
        case ReceiverLogData:
            return @"ReceiverLogData";
        case SensorData:
            return @"SensorData";
        case UserEventData:
            return @"UserEventData";
        case UserSettingData:
            return @"UserSettingData";
    }

    return @"unknown";
}

+ (NSString *)userEventTypeIdentifier:(UserEventType)userEventType {
    switch (userEventType) {
        case Carbs:
            return @"Carbs";
        case Exercise:
            return @"Exercise";
        case Health:
            return @"Health";
        case Insulin:
            return @"Insulin";
        case UEMaxValue:
            return @"MaxValue";
        case NullType:
            return @"Null";
        default:
            return @"Unknown";
    }
}

+ (NSDate *)dateTimeFromSecondsSinceDexcomEpoch:(uint32_t)secondsSinceDexcomEpoch {
    return [[NSDate alloc] initWithTimeInterval:secondsSinceDexcomEpoch sinceDate:(NSDate *) DEXCOM_EPOCH];
}


@end