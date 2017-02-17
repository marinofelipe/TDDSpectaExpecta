//
//  Weather.m
//  TDD Game Of Life
//
//  Created by Felipe Marino on 2/16/17.
//  Copyright © 2017 Felipe Lefevre Marino. All rights reserved.
//

#import "Weather.h"

@implementation Weather

- (void)getWeatherFromDict:(NSDictionary *)dict {
    NSDictionary *data = dict[@"data"];
    NSArray *cc = data[@"current_condition"];
    self.currentCondition = cc[0];
    
    self.upcomingWeather = data[@"weather"];
}

@end
