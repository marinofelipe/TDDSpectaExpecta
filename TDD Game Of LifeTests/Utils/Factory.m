//
//  Factory.m
//  TDD Game Of Life
//
//  Created by Felipe Marino on 2/17/17.
//  Copyright © 2017 Felipe Lefevre Marino. All rights reserved.
//

#import "Factory.h"

@implementation Factory

+ (NSDictionary *)weatherServiceReturn {
    NSDictionary *wr = @{@"data": @{@"current_condition":@{
                                         @"weatherDesc":@{
                                                 @"value": @"Sunny"
                                          },
                                         @"weatherIconUrl": @"http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0001_sunny.png",
                                         @"temp_C": @"24",
                                         @"temp_F": @"75"
                                    },
                                 @"weather":@{
                                            @"date": @"2017-02-20",
                                            @"hourly":
                                                     @{@"tempC": @"20",
                                                       @"tempF": @"68",
                                                       @"weatherDesc":
                                                           @{@"value": @"Heavy Rain"},
                                                       @"weatherIconUrl": @"http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0034_cloudy_with_heavy_rain_night.png"
                                                       }
                                            }
                                    }
                         };
                        
    return wr;
}

@end
