//
//  SCCustomizableButton.m
//  StickyCollectionView
//
//  Created by Marin Borisov on 07.12.15.
//  Copyright © 2015 Marin Borisov. All rights reserved.
//

#import "SCCustomizableButton.h"

@interface SCCustomizableButton()
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, assign) IBInspectable CGFloat horizontalPadding;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@end

@implementation SCCustomizableButton

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (self.borderWidth) {
        self.layer.masksToBounds = YES;
        self.layer.borderWidth = self.borderWidth;
    }
    self.layer.cornerRadius = self.cornerRadius;
    self.layer.borderColor = self.borderColor.CGColor;
}

- (CGSize) intrinsicContentSize {
    CGSize contentSize = [super intrinsicContentSize] ;
    contentSize.width += self.horizontalPadding * 2 ;
    return contentSize ;
}

@end
