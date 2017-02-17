//
//  WeatherHTTPClient.h
//  Weather
//
//  Created by Felipe Marino on 2/1/17.
//  Copyright © 2017 Scott Sherwood. All rights reserved.
//

#import "AFHTTPSessionManager.h"
#import "Weather.h"
typedef void(^UpdateWeatherAtLocationCompletionBlock)(Weather *shots);

@interface WeatherHTTPClient : AFHTTPSessionManager

+ (WeatherHTTPClient *)sharedWeatherHTTPClient;
- (instancetype)initWithBaseURL:(NSURL *)url;
- (void)updateWeatherAtLocation:(CLLocation *)location
                forNumberOfDays:(NSUInteger)number
                     completion:(UpdateWeatherAtLocationCompletionBlock)block;

@end
