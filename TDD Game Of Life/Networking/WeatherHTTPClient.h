//
//  WeatherHTTPClient.h
//  Weather
//
//  Created by Felipe Marino on 2/1/17.
//  Copyright © 2017 Scott Sherwood. All rights reserved.
//

#import "AFHTTPSessionManager.h"
typedef void(^UpdateWeatherAtLocationCompletionBlock)(NSArray *shots);
@protocol WeatherHTTPClientDelegate;

@interface WeatherHTTPClient : AFHTTPSessionManager
@property (nonatomic, weak) id<WeatherHTTPClientDelegate>delegate;

+ (WeatherHTTPClient *)sharedWeatherHTTPClient;
- (instancetype)initWithBaseURL:(NSURL *)url;
- (void)updateWeatherAtLocation:(CLLocation *)location forNumberOfDays:(NSUInteger)number;

@end

@protocol WeatherHTTPClientDelegate <NSObject>

@optional
- (void)weatherHTTPClient:(WeatherHTTPClient *)client didUpdateWithWeather:(id)weather;
- (void)weatherHTTPClient:(WeatherHTTPClient *)client didFailWithError:(NSError *)error;

@end
