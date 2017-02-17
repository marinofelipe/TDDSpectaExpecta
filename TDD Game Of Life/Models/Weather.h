//
//  Weather.h
//  TDD Game Of Life
//
//  Created by Felipe Marino on 2/16/17.
//  Copyright © 2017 Felipe Lefevre Marino. All rights reserved.
//

@interface Weather : NSObject

@property(strong, nonatomic) NSDictionary *currentCondition;
@property(strong, nonatomic) NSArray *upcomingWeather;

- (void)getWeatherFromDict:(NSDictionary *)dict;

@end
