//
//  DetailViewController.m
//  StreamDialog
//
//  Created by Mike on 24.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

-(IBAction)playMovie:(id)sender  
{  
    UIButton *playButton = (UIButton *) sender;   
    
    NSString *filepath   =   [[NSBundle mainBundle] pathForResource:@"big-buck-bunny-clip" ofType:@"m4v"];  
    NSURL    *fileURL    =   [NSURL fileURLWithPath:filepath];  
    moviePlayerController = [[MPMoviePlayerViewController alloc] initWithContentURL:fileURL];  
    
    [[NSNotificationCenter defaultCenter] addObserver:self  
                                             selector:@selector(moviePlaybackComplete:)  
                                                 name:MPMoviePlayerPlaybackDidFinishNotification  
                                               object:moviePlayerController];  
    
    [moviePlayerController.view setFrame:CGRectMake(playButton.frame.origin.x,   
                                                    playButton.frame.origin.y,   
                                                    playButton.frame.size.width,   
                                                    playButton.frame.size.height)];  
    
    [self.view addSubview:moviePlayerController.view];  
    //moviePlayerController.fullscreen = YES;  
    
    //    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Icon.png"]];
    //    image.frame = CGRectMake(0, 0, 30, 30);
    //    [moviePlayerController.view addSubview:image];
    UILabel *label = [[UILabel alloc] init];
    label.text = @"text";
    label.frame = CGRectMake(10, 150, 40, 150);
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor whiteColor];
    [moviePlayerController.view addSubview:label];
    
//    NSTimer * hTimer=[NSTimer scheduledTimerWithTimeInterval:6.0
//                                                      target:self
//                                                    selector:@selector(moveImage)
//                                                    userInfo:nil
//                                                     repeats:YES];
    
    NSTimer *videoTime=[NSTimer scheduledTimerWithTimeInterval:1.0
                                                      target:self
                                                    selector:@selector(videoTimeController)
                                                    userInfo:nil
                                                     repeats:YES];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Car2Garage2IsOpen1.png"]];
    
    [moviePlayerController.moviePlayer play]; 
}  

- (void) videoTimeController{
//    switch ((int)moviePlayerController.moviePlayer.currentPlaybackTime) {
//        case 2:
//            
//        default:
//            break;
//    }  ;   
    image.frame = CGRectMake(moviePlayerController.moviePlayer.currentPlaybackTime*10, 200, 150, 70);
    [moviePlayerController.view addSubview:image];
}

- (void) moveImage{
    image.frame = CGRectMake(100, 200, 90, 150);
    [moviePlayerController.view addSubview:image];
}

- (void)moviePlaybackComplete:(NSNotification *)notification  
{  
    moviePlayerController = [notification object];  
    [[NSNotificationCenter defaultCenter] removeObserver:self   
                                                    name:MPMoviePlayerPlaybackDidFinishNotification   
                                                  object:moviePlayerController];  
    
    [moviePlayerController.view removeFromSuperview];     
} 

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
