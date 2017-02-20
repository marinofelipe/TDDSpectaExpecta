//
//  ViewController.m
//  TDD Game Of Life
//
//  Created by Felipe Lefevre Marino on 27/12/16.
//  Copyright © 2016 Felipe Lefevre Marino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self updateWeather];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager requestWhenInUseAuthorization];
}

#pragma mark - Network call
//- (void)updateWeather {
//    self.weatherHTTPClient = [WeatherHTTPClient sharedWeatherHTTPClient];
//    
//    self.weatherHTTPClient updateWeatherAtLocation:self.new forNumberOfDays:2 completion:^(Weather *weather) {
//        
//    }
//}

#pragma mark - TABLE VIEW METHODS
#pragma mark - Delegate
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 50.0;
//}

#pragma mark - Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [UITableViewCell new];
    return cell;
}

#pragma mark - CLLocationManager Delegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation *newLocation = [locations lastObject];
    
    if ([newLocation.timestamp timeIntervalSinceNow] > 300) {
        return;
    }
    
    self.myLocation = newLocation;
    [self.locationManager stopUpdatingLocation];
    
    [self.weatherHTTPClient updateWeatherAtLocation:newLocation forNumberOfDays:2 completion:^(Weather *weather) {
        self.weather = weather;
        [self.tableView reloadData];
    }];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    UIAlertView *errorAlert = [[UIAlertView alloc]
                               initWithTitle:@"Error"
                               message:@"Failed to Get Your Location"
                               delegate:nil
                               cancelButtonTitle:@"OK"
                               otherButtonTitles:nil];
    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error"
//                                                                    message:@"failed to Get Your Location"
//                                                             preferredStyle:UIAlertControllerStyleAlert];
//    [alert ];
    
    [errorAlert show];
}

@end
