//
//  ViewController.h
//  TDD Game Of Life
//
//  Created by Felipe Lefevre Marino on 27/12/16.
//  Copyright © 2016 Felipe Lefevre Marino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) IBOutlet UITableView *tableView;

@end

