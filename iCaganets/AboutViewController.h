//
//  AboutViewController.h
//  Learn To Order
//
//  Created by Diego Freniche Brito on 07/05/10.
//  Copyright 2010 Freelance. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AboutViewController : UIViewController <UIWebViewDelegate> 

@property (nonatomic, strong) IBOutlet UIWebView *helpText;
@property (nonatomic, strong) IBOutlet UILabel *version;

@property (nonatomic, copy) NSString *helpFileName;


@end




