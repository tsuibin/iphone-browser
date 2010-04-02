//
//  FixBrowserAppDelegate.m
//  FixBrowser
//
//  Created by tsui bin on 10-4-1.
//  Copyright topsvr 2010. All rights reserved.
//

#import "FixBrowserAppDelegate.h"


@implementation FixBrowserAppDelegate

@synthesize window;
@synthesize tabBarController;
@synthesize webView;
@synthesize scrollView;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    NSLog(@"11111!");
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.cazool.org/bbs"]]];
    // Add the tab bar controller's current view as a subview of the window
    [window addSubview:tabBarController.view];
}

-(IBAction)setUrlAndReload:(id)sender
{
	urlString = urlTextField.text;
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
	NSLog(urlString);
}
/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/


- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}

@end

