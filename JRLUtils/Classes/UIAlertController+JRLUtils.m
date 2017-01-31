////////////////////////////////////////////////////////////////////////////
//
// Created by Roger Lee on 31/01/2017.
// Copyright (c) 2017 JRLee Pty Ltd. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

#import "UIAlertController+JRLUtils.h"

@implementation UIAlertController (JRLUtils)

#pragma mark - Public

+ (instancetype)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle inView:(UIView*)view actions:(NSArray *)actions {
    
    return [self alertWithTitle:title message:message preferredStyle:preferredStyle inView:view offset:CGPointMake(-10, 50) actions:actions];
}

+ (instancetype)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle inView:(UIView*)view offset:(CGPoint)point actions:(NSArray *)actions {
    
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title
                                                                              message:message
                                                                       preferredStyle:preferredStyle];
    
    for (UIAlertAction *action in actions) {
        [alertController addAction:action];
    }
    
    [alertController setModalPresentationStyle:UIModalPresentationPopover];
    UIPopoverPresentationController *popoverController = [alertController
                                                          popoverPresentationController];
    popoverController.sourceView = view;
    popoverController.sourceRect = CGRectOffset([view bounds],point.x,point.y);
    popoverController.permittedArrowDirections = 0;
    
    return alertController;
}


@end
