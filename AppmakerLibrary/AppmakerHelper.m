//
//  AppmakerHelper.m
//
//  Created by Bernhard Harrer on 01.10.10.
//  Copyright 2010 Appmaker e.K. All rights reserved.
//

#import "AppmakerHelper.h"
#define degreesToRadian(x) (M_PI * (x) / 180.0)

@implementation AppmakerHelper

/**
 Loads a HTML File in the given WebView
 @author Bernhard Harrer
 @since 2010-10-04
 @param UIWebView webView The webview
 @param NSString filename the name of the html file
 @param NSString type the type of the file
 */
+(void)loadHTMLFileInWebView:(UIWebView *)webView file:(NSString *)filename ofType:(NSString *)type
{
	if(filename != nil){
		NSString *filePath = [[NSBundle mainBundle] pathForResource:filename ofType:type];
		NSData *html = [[NSData alloc] initWithContentsOfFile:filePath];
		NSString *path = [[NSBundle mainBundle] bundlePath];
		NSURL *baseURL = [NSURL fileURLWithPath:path];

		[webView loadData:html MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:baseURL];
		[html release];
	}
}

+ (UILabel *)addLabelInView:(UIView *)labelView inRect:(CGRect)labelRect withText:(NSString *)labelText withFont:(UIFont *)labelFont withTag:(int)labelTag withRotation:(float)labelRotation
{
	
	UILabel *label = [[[UILabel alloc] initWithFrame:labelRect] autorelease];
	[label setTag:labelTag];
	[label setFont:labelFont];
	[label setText:labelText];
	[label setBackgroundColor:[UIColor clearColor]];
	if(labelRotation != 0){
		label.transform = CGAffineTransformMakeRotation(degreesToRadian(labelRotation));
	}
	[labelView addSubview:label];
	return label;
	
	
}


@end
