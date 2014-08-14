//
//  ColorView.m
//  Notifications
//
//  Created by Efrén Reyes Torres on 8/14/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(changeColor:)
                                                     name:@"ChangeColorNotification"
                                                   object:nil];
    }
    return self;
}

- (void)changeColor:(NSNotification *)notification {
    NSString *colorName = [NSString stringWithFormat:@"%@Color", notification.object];
    self.backgroundColor = [[UIColor class] performSelector:NSSelectorFromString(colorName)];
    NSLog(@"Change color %@", colorName);
}


@end
