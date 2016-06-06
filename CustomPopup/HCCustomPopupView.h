//
//  CustomPopupView.h
//
//  Created by HAO WANG on 8/3/15.
//  Copyright (c) 2015 HAO WANG. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  The defaul iOS alert view does not allow too much customization. This class helps if you want to put your own custom view inside an alert popup. It retains necessary animation for the standard popup
 */
@interface HCCustomPopupView : UIView

/**
 *  Container within the dialog (place your ui elements here)
 */
@property (nonatomic, strong) UIView *contentView;

/**
 *  show the popup
 */
- (void)show;

/**
 *  dismiss the popup
 */
- (void)dismiss;

/**
 *  dismiss the popup with a complete block
 *
 *  @param complete
 */
- (void)dismissWithComplete:(void (^)())complete;

/**
 *  initialization method with the content view
 *
 *  @param contentView the content view which you want to show in the popup
 *
 *  @return an initialized popup view object
 */
- (id)initWithContentView:(UIView *)contentView;

@end
