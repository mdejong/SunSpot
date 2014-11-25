//
//  ViewController.m
//  SunSpot
//
//  Created by Mo DeJong on 11/23/14.
//  Copyright (c) 2014 helpurock software. All rights reserved.
//

#import "ViewController.h"

#import <AVKit/AVKit.h>

#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (nonatomic, retain) AVPlayerViewController *avPlayerViewcontroller;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = self.view;
    
    NSString *resourceName = @"SunSpot_1080p_main.m4v";
    
    NSString* movieFilePath = [[NSBundle mainBundle] pathForResource:resourceName ofType:nil];
    NSAssert(movieFilePath, @"movieFilePath is nil");
    
    NSURL *fileURL = [NSURL fileURLWithPath:movieFilePath];
    
    AVPlayerViewController *playerViewController = [[AVPlayerViewController alloc] init];
    
    playerViewController.player = [AVPlayer playerWithURL:fileURL];
    
    self.avPlayerViewcontroller = playerViewController;
    
    [self resizePlayerToViewSize];
    
    [view addSubview:playerViewController.view];
 
    view.autoresizesSubviews = TRUE;
    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(mediaIsPreparedToPlayDidChange:)
//                                                 name:MPMediaPlaybackIsPreparedToPlayDidChangeNotification
//                                               object:player];
//    
//    [player prepareToPlay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) resizePlayerToViewSize
{
    CGRect frame = self.view.frame;
    
    NSLog(@"frame size %d, %d", (int)frame.size.width, (int)frame.size.height);
    
    self.avPlayerViewcontroller.view.frame = frame;
    
//    self.moviePlayer.view.center = self.moviePlayer.view.center;
}

/*

- (void) mediaIsPreparedToPlayDidChange:(NSNotification*)notification
{
    CGRect frame = self.view.frame;
    
    NSLog(@"frame size %d, %d", (int)frame.size.width, (int)frame.size.height);
    
    self.moviePlayer.view.frame = frame;
    
    self.moviePlayer.view.center = self.moviePlayer.view.center;
    
    [self.moviePlayer play];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    CGRect frame = self.view.frame;
    
    NSLog(@"frame rotation size %d, %d", (int)frame.size.width, (int)frame.size.height);
    
    self.moviePlayer.view.frame = frame;
    
    self.moviePlayer.view.center = self.moviePlayer.view.center;
}

*/
 
@end
