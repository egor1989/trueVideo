//
//  SwitchCell.m
//  CustomCell
//
//  Created by Aliksandr Andrashuk on 18.12.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ThumbnailCell.h"

@implementation ThumbnailCell

+(ThumbnailCell*) cell {
    NSArray* objects = [[NSBundle mainBundle] loadNibNamed:@"ThumbnailCell" owner:nil options:nil];
    return [objects objectAtIndex:0];
}

+(NSString*) cellID { return @"ThumbnailCell"; }

@end
