//
//  ViewControllerSpec.m
//  TDD Game Of Life
//
//  Created by Felipe Marino on 2/15/17.
//  Copyright © 2017 Felipe Lefevre Marino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#define EXP_SHORTHAND //setup shorthand to prevent writing expectations with the prefix EXP_expect
#import <Expecta/Expecta.h>
#import "OCMock.h"
#import "ViewController.h"
#import "WeatherHTTPClient.h"

SpecBegin(ViewController)
    __block ViewController *vc;

    beforeEach(^{
        UIStoryboard *mainsStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UINavigationController *nav = [mainsStoryboard instantiateInitialViewController];
        vc = (ViewController*)[nav visibleViewController];
        
        UIView *view = vc.view;
        expect(view).notTo.beNil();
    });

    it(@"should be an instance from the of the correct class", ^{
        expect(vc).toNot.beNil();
        expect(vc).to.beInstanceOf([ViewController class]);
    });

    it(@"should have and outlet for the tableView", ^{
        expect(vc.tableView).toNot.beNil();
    });

    it(@"should have a datasource wired in the tableView", ^{
        expect(vc.tableView.dataSource).toNot.beNil();
    });

    it(@"should have a delegate wired on the tableView", ^{
        expect(vc.tableView.delegate).toNot.beNil();
    });

    describe(@"load weather data", ^{
        __block id _mockWeatherHTTPClient;
        
        beforeEach(^{
            _mockWeatherHTTPClient = [OCMockObject mockForClass:[WeatherHTTPClient class]];
            vc.weatherHTTPClient  = _mockWeatherHTTPClient;
        });
        
    });

SpecEnd



