//
//  AMAlertView.h
//
//  Created by Bernhard Harrer on 16.05.11.
//  Copyright 2011 Appmaker e.K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIAlertView.h>

@protocol AMAlertViewDelegate;

@interface AMAlertView : UIAlertView {
    id context;
}
@property (nonatomic, retain) id context;
@end

@protocol AMAlertViewDelegate <NSObject>

- (void)alertView:(AMAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;

@end 
