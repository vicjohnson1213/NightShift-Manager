//
//  main.m
//  nightshift
//
//  Created by Victor Johnson on 5/25/18.
//  Copyright © 2018 Victor Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CBBlueLightClient.h"

int main(int argc, const char * argv[]) {
    NSString *argument;
    argument = (argc == 1) ? @"help" : [NSString stringWithUTF8String:argv[1]];
    
    CBBlueLightClient *client = [CBBlueLightClient new];
    BlueLightStatus status;
    
    [client getBlueLightStatus:&status];
    
    if ([argument isEqualToString:@"on"]) {
        [client setEnabled:YES];
    } else if ([argument isEqualToString:@"off"]) {
        [client setEnabled:NO];
    } else {
        if (status.enabled) {
            [client setEnabled:NO];
        } else {
            [client setEnabled:YES];
        }
    }
    
    return 0;
}
