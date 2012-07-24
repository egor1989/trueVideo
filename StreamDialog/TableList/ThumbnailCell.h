//
//  SwitchCell.h
//  CustomCell
//
//  Created by Aliksandr Andrashuk on 18.12.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThumbnailCell : UITableViewCell
{
    IBOutlet UIImageView *thumbnail;
    IBOutlet UILabel *videoLabel;
    
}

+(ThumbnailCell*)cell;
+(NSString*) cellID;

@end
