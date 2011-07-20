//
//  AMAlertView.m
//
//  Created by Bernhard Harrer on 16.05.11.
//  Copyright 2011 Appmaker e.K. All rights reserved.
//

#import "AMAlertView.h"


@implementation AMAlertView

@synthesize context;

- (void)dealloc {
    [context release];
    [super dealloc];
}
@end
