//
//  ViewController.h
//  TDD Game Of Life
//
//  Created by Felipe Lefevre Marino on 27/12/16.
//  Copyright © 2016 Felipe Lefevre Marino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherHTTPClient.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate>

@property(nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) WeatherHTTPClient *weatherHTTPClient;

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *myLocation;
@property (strong, nonatomic) Weather *weather;

@end

