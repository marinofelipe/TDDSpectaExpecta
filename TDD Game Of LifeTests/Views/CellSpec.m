//
//  CellSpec.m
//  TDD Game Of Life
//
//  Created by Felipe Marino on 1/10/17.
//  Copyright © 2017 Felipe Lefevre Marino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#define EXP_SHORTHAND //setup shorthand to prevent writing expectations with the prefix EXP_expect
#import <Expecta/Expecta.h>
#import "OCMock.h"
#import "Cell.h"

SpecBegin(Cell)
describe(@"Cell", ^{
    it(@"is dead on creation", ^{
        Cell *cell = [[Cell alloc] init];
        
        expect([cell isAlive]).to.equal(NO);
    });
});

describe(@"Cell", ^{
    it(@"is alive on load", ^{
        Cell *cell = [Cell new];
        [cell load];
        expect(cell.alive).to.equal(YES);
    });
});

SpecEnd
