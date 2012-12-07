//
//  AboutViewController.m
//  Learn To Order
//
//  Created by Diego Freniche Brito on 07/05/10.
//  Copyright 2010 Freelance. All rights reserved.
//

#import "AboutViewController.h"
#import "VersionUtil.h"

@implementation AboutViewController

@synthesize helpText= _helpText;
@synthesize version = _version;

@synthesize helpFileName = _helpFileName;


#pragma mark -
#pragma mark View methods

-(void)viewDidLoad {
    [super viewDidLoad];
        
    
	self.helpText.delegate = self;
    self.helpFileName = @"About";
	// http://iPhoneIncubator.com/blog/windows-views/uiwebview-revisited
	NSString *path = [[NSBundle mainBundle] pathForResource:self.helpFileName ofType:@"html"];
	NSFileHandle *readHandle = [NSFileHandle fileHandleForReadingAtPath:path];
	
	NSString *htmlString = [[NSString alloc] initWithData: 
							[readHandle readDataToEndOfFile] encoding:NSUTF8StringEncoding];
	
	self.helpText.backgroundColor = [UIColor clearColor];
	self.helpText.scalesPageToFit = NO;
    [self.helpText setFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height-44)];
	
	NSString *path2 = [[NSBundle mainBundle] bundlePath];
	NSURL *baseURL = [NSURL fileURLWithPath:path2];
	[self.helpText loadHTMLString:htmlString baseURL:baseURL];
	
	self.version.text = [VersionUtil versionAsString];
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
    self.helpText = nil;
	self.version = nil;
}



// http://stackoverflow.com/questions/2532453/force-a-webview-link-to-launch-safari

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType; 
{
    NSURL *requestURL =[ request URL ]; 
    if ( ( [ [ requestURL scheme ] isEqualToString: @"http" ] || [ [ requestURL scheme ] isEqualToString: @"https" ] || [ [ requestURL scheme ] isEqualToString: @"mailto" ]) 
        && ( navigationType == UIWebViewNavigationTypeLinkClicked ) ) { 
        return ![ [ UIApplication sharedApplication ] openURL: requestURL ]; 
    } 
    return YES; 
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
}
@end
