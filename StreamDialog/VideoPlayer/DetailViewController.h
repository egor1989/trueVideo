//
//  DetailViewController.h
//  StreamDialog
//
//  Created by Mike on 24.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h> 

@interface DetailViewController : UIViewController{
    MPMoviePlayerViewController *moviePlayerController;
    UIImageView *image;
}

-(IBAction)playMovie:(id)sender;  

@end
