//
//  CustomPopupView.h
//
//  Created by HAO WANG on 8/3/15.
//  Copyright (c) 2015 HAO WANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCCustomPopupView : UIView

@property (nonatomic, retain) UIView *containerView; // Container within the dialog (place your ui elements here)
@property (nonatomic, retain) UIView *dialogView;    // Dialog's container view

@property (nonatomic, strong) UIView *contentView;

- (void)show;
- (void)dismiss;
- (void)dismissWithComplete:(void (^)())complete;

- (id)initWithContentView:(UIView *)contentView;

@end
