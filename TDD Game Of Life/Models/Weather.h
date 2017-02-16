//
//  Weather.h
//  TDD Game Of Life
//
//  Created by Felipe Marino on 2/16/17.
//  Copyright © 2017 Felipe Lefevre Marino. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface Data : JSONModel

@property(strong, nonatomic) NSDictionary *currentCondition;
@property(strong, nonatomic) NSDictionary *request;
@property(strong, nonatomic) NSDictionary *weather;

@end


@interface Weather : JSONModel

@property(strong, nonatomic) Data *data;

@end
