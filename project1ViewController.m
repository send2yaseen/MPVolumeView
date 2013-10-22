//
//  project1ViewController.m
//  MPVolumeView
//
//  Created by Mohammed Yaseen on 21/10/13.
//  Copyright (c) 2013 Mohammed Yaseen. All rights reserved.
//

#import "project1ViewController.h"

@interface project1ViewController ()

@end

@implementation project1ViewController



- (IBAction)playMusic:(id)sender {
     [self.audioPlayer play];
    [self createAndDisplayMPVolumeView];

}
@synthesize audioPlayer;
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initializeAudioPlayer];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)initializeAudioPlayer
{
    NSError *error=nil;
   
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"Boom.mp3"];
    NSURL *url1 = [[NSURL alloc] initFileURLWithPath: path];
    //    AppDelegate *skyshare=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    //    skyshare.sharedplayer=_audioPlayer;
    self.audioPlayer=[[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:NULL];

    [self.audioPlayer setNumberOfLoops: 2];
     if (error)
     {
         NSLog(@"Error in audioPlayer: %@", [error localizedDescription]);
     } else {
        // self.audioPlayer.delegate = self;
         [self.audioPlayer prepareToPlay];
        
     }

 }
-(void) createAndDisplayMPVolumeView
{
    // Create a simple holding UIView and give it a frame
    UIView *volumeHolder = [[UIView alloc] initWithFrame: CGRectMake(30, 200, 260, 20)];
    
    // set the UIView backgroundColor to clear.
    [volumeHolder setBackgroundColor: [UIColor clearColor]];
    
    // add the holding view as a subView of the main view
    [self.view addSubview: volumeHolder];
    
    // Create an instance of MPVolumeView and give it a frame
    MPVolumeView *myVolumeView = [[MPVolumeView alloc] initWithFrame: volumeHolder.bounds];
    
    // Add myVolumeView as a subView of the volumeHolder
    [volumeHolder addSubview: myVolumeView];
}
@end

