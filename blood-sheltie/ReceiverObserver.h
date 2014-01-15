//
//  ReceiverObserver.h
//  blood-sheltie
//
//  Created by Alexandre Normand on 11/19/2013.
//  Copyright (c) 2013 glukit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReceiverEvent.h"

@protocol ReceiverObserver <NSObject>
-(void) receiverPlugged: (ReceiverEvent *) event;
-(void) receiverUnplugged: (ReceiverEvent *) event;
-(void) syncStarted: (ReceiverEvent *) event;
-(void) errorReadingReceiver: (ReceiverEvent *) event;
-(void) syncProgress: (ReceiverEvent* ) event;
@end