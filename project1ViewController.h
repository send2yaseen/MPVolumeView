//
//  project1ViewController.h
//  MPVolumeView
//
//  Created by Mohammed Yaseen on 21/10/13.
//  Copyright (c) 2013 Mohammed Yaseen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface project1ViewController : UIViewController

@property(nonatomic,strong)AVAudioPlayer *audioPlayer;
@property(nonatomic,weak)MPVolumeView *myVolumeView;
@end
