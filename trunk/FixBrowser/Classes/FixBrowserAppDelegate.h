//
//  FixBrowserAppDelegate.h
//  FixBrowser
//
//  Created by tsui bin on 10-4-1.
//  Copyright topsvr 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FixBrowserAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
	UIWebView *webView;
	UIScrollView *scrollView;
	UITextField *urlTextField;
	NSString *urlString;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UITextField *urlTextField;
-(IBAction)setUrlAndReload:(id)sender;

@end
