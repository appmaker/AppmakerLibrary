//
//  AppmakerHelper.h
//
//  Created by Bernhard Harrer on 01.10.10.
//  Copyright 2010 Appmaker e.K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIWebView.h>
#import <UIKit/UILabel.h>

@interface AppmakerHelper : NSObject {

}

+ (void)loadHTMLFileInWebView:(UIWebView *)webView file:(NSString *)filename ofType:(NSString *)type;
+ (UILabel *)addLabelInView:(UIView *)labelView inRect:(CGRect)labelRect withText:(NSString *)labelText withFont:(UIFont *)labelFont withTag:(int)labelTag withRotation:(float)labelRotation;

@end
