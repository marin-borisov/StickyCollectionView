//
//  SCPrimerCollectionViewCell.m
//  StickyCollectionView
//
//  Created by Marin Borisov on 13/01/16.
//  Copyright © 2016 Marin Borisov. All rights reserved.
//

#import "SCPrimerCollectionViewCell.h"

@interface SCPrimerCollectionViewCell()
@property (weak, nonatomic) IBOutlet UILabel *lessonLabel;
@end

@implementation SCPrimerCollectionViewCell
- (void)setLesson:(NSString *)lesson {
    self.lessonLabel.text = lesson;
}
@end
