//
//  ListOfPoisViewController.h
//  SevillApp
//
//  Created by Diego Freniche Brito on 28/11/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PayPal.h"

@interface ItemListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)loadJsonFromServer:(id)sender;

@end
