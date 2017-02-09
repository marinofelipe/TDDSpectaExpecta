//
//  AppDelegateSpec.m
//  TDD Game Of Life
//
//  Created by Felipe Marino on 2/9/17.
//  Copyright © 2017 Felipe Lefevre Marino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#define EXP_SHORTHAND //setup shorthand to prevent writing expectations with the prefix EXP_expect
#import <Expecta/Expecta.h>
#import "AppDelegate.h"

SpecBegin(AppDelegate)
describe(@"AppDelegate", ^{
    
    __block UIApplication *myUIApplication;
    __block AppDelegate* appDelegate;
    
    beforeEach(^{
        
        myUIApplication = [UIApplication sharedApplication];
        appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    });
    
    it(@"willResignActive", ^{
        [appDelegate applicationWillResignActive:myUIApplication];
    });
    
    it(@"didEnterBackground", ^{
        [appDelegate applicationDidEnterBackground:myUIApplication];
    });
    
    it(@"willEnterForeground", ^{
        [appDelegate applicationWillEnterForeground:myUIApplication];
    });
    
    it(@"didBecomeActive", ^{
        [appDelegate applicationDidBecomeActive:myUIApplication];
    });
    
    it(@"willTerminate", ^{
        [appDelegate applicationWillTerminate:myUIApplication];
    });
});
SpecEnd

