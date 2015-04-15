//
//  lecteurViewController.m
//  RizeerClientIos
//
//  Created by Youssef Amri on 09/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import "lecteurViewController.h"

@interface lecteurViewController ()

@end

@implementation lecteurViewController {
    AVAudioPlayer* theAudio;
    int duree;
}

- (IBAction)playMusic:(id)sender {
    if (theAudio == nil) {
    NSURL *music = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"01-sofiane-echec_et_mat" ofType:@"mp3"]];
    NSLog(@"%@",music);
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:music error:nil];
    theAudio.volume = 4;
        duree = theAudio.duration ;
    }
    self.avancementMusicSlider.maximumValue = theAudio.duration;
    self.avancementMusicSlider.value = 0;
    NSLog(@"maximum value : %f / current Value : %f",self.avancementMusicSlider.maximumValue,self.avancementMusicSlider.value);
    [theAudio play];
}
- (IBAction)pauseMusic:(id)sender {
    [theAudio pause];
}
- (IBAction)nextMusic:(id)sender {
}
- (IBAction)prevMusic:(id)sender {
}
- (IBAction)likeMusic:(id)sender {
}
- (IBAction)ajouterAPlaylist:(id)sender {
}
- (IBAction)rizeArtist:(id)sender {
}
- (IBAction)followArtist:(id)sender {
}
- (IBAction)voirArtist:(id)sender {
}
/*
- (IBAction)changeTime:(id)sender {
    self.avancementMusicSlider.value = (int)sender;
    NSLog(@"current value :%f || on changetime",self.avancementMusicSlider.value);
     //[[NSNotificationCenter defaultCenter] postNotificationName:@"changeTime" object: self.avancementMusicSlider];
}*/
- (IBAction)valuechange:(id)sender {
    // CMTime newTime = CMTimeMakeWithSeconds(self.avancementMusicSlider.value * durationSeconds, theaudio.currentTime.timescale);
    //[theAudio seekToTime:newTime];
    //CMTime newTime = CMTimeMakeWithSeconds(<#Float64 seconds#>, <#int32_t preferredTimeScale#>)
    //self.avancementMusicSlider.value = self.avancementMusicSlider.//theAudio.currentTime;
    // [self.avancementMusicSlider reloadInputViews];
    // NSLog(@"Cureent valueee : %f", self.avancementMusicSlider.value);
    
}




- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
