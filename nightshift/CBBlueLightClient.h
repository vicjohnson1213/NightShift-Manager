//
//  CBBlueLightClient.h
//  nightshift
//
//  Created by Victor Johnson on 5/25/18.
//  Copyright © 2018 Victor Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

// Partial header for CBBlueLightClient in private CoreBrightness API
@interface CBBlueLightClient : NSObject

typedef struct {
    int hour;
    int minute;
} Time;

typedef struct {
    Time fromTime;
    Time toTime;
} Schedule;

typedef struct {
    BOOL active;
    BOOL enabled;
    BOOL sunSchedulePermitted;
    int mode;
    Schedule schedule;
    unsigned long long disableFlags;
} BlueLightStatus;

- (BOOL)setEnabled:(BOOL)enabled;
- (BOOL)getBlueLightStatus:(BlueLightStatus *)status;

@end
