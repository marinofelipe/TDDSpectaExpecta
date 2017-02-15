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

SpecBegin(ViewController)
    __block ViewController *vc;
    beforeEach(^{
        UIStoryboard *mainsStoryboard = [UIStoryboard storyboardWithName:@"main" bundle:nil];
        UINavigationController *nav = [mainsStoryboard instantiateInitialViewController];
        vc = (ViewController*)[nav visibleViewController];
        
        UIView *view = vc.view;
        expect(view).notTo.beNil();
    });

    it(@"shoulb be an instance from the of the correct class", ^{
        expect(vc).toNot.beNil();
        expect(vc).to.beInstanceOf([ViewController class]);
    });

SpecEnd



