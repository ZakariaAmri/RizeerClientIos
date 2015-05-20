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
    NSTimer *sliderTimer;
}
- (IBAction)avncer:(id)sender {
    [theAudio stop];
    [theAudio setCurrentTime:self.avancementMusicSlider.value];
    [theAudio prepareToPlay];
    [theAudio play];
}
- (IBAction)dragenter:(id)sender {
    [theAudio stop];
    [theAudio setCurrentTime:self.avancementMusicSlider.value];
    [theAudio prepareToPlay];
    [theAudio play];
}

- (IBAction)playMusic:(id)sender {
    // id music 55576064e1f8949fb913135b userID c60210e2-8db5-4eed-a68d-650d33215fee
    // music 123
    /*
    if (theAudio == nil) {
        // Recherche de la music
        NSString *url = @"http://localhost:9000/listenMusic/";
        url = [url stringByAppendingString:@"c60210e2-8db5-4eed-a68d-650d33215fee"];
        url = [url stringByAppendingString:@"/"];
        url = [url stringByAppendingString:@"123"];
     
        //NSURL *music = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"01-sofiane-echec_et_mat" ofType:@"mp3"]];
        NSURL *music = [NSURL URLWithString:url];
        NSLog(@"%@",music);
        //Initialisation du lecteur
        theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:music error:nil];
        //Initialisation du volume
        theAudio.volume = 4;
        //Réglage de la barre d'avancement
        duree = theAudio.duration ;
        sliderTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(valuechange:) userInfo:nil repeats:YES];
        self.avancementMusicSlider.maximumValue = theAudio.duration;
        self.avancementMusicSlider.value = 0;
        NSLog(@"maximum value : %f / current Value : %f",self.avancementMusicSlider.maximumValue,self.avancementMusicSlider.value);
        [self.avancementMusicSlider addTarget:self action:@selector(changeTime:) forControlEvents:UIControlEventValueChanged];
        [theAudio play];
        self.avancementMusicSlider.value = theAudio.currentTime;
    }else
        [theAudio play];
     
     */
    if (theAudio == nil){
    NSString *url = @"http://localhost:9000/listenMusic/";
    url = [url stringByAppendingString:@"c60210e2-8db5-4eed-a68d-650d33215fee"];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:@"123"];
    NSString* resourcePath = url; //your url
    NSData *_objectData = [NSData dataWithContentsOfURL:[NSURL URLWithString:resourcePath]];
    NSError *error;
        NSLog(@"%@",url);
    theAudio = [[AVAudioPlayer alloc] initWithData:_objectData error:&error];
    theAudio.numberOfLoops = 0;
    theAudio.volume = 1.0f;
    [theAudio prepareToPlay];
    
    
        NSLog(@"%@", [error description]);
        duree = theAudio.duration ;
        sliderTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(valuechange:) userInfo:nil repeats:YES];
        self.avancementMusicSlider.maximumValue = theAudio.duration;
        self.avancementMusicSlider.value = 0;
        NSLog(@"maximum value : %f / current Value : %f",self.avancementMusicSlider.maximumValue,self.avancementMusicSlider.value);
        [self.avancementMusicSlider addTarget:self action:@selector(changeTime:) forControlEvents:UIControlEventValueChanged];
        [theAudio play];
        self.avancementMusicSlider.value = theAudio.currentTime;
    }else
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

- (void)updateSlider {
    // Update the slider about the music time
    self.avancementMusicSlider.value = theAudio.currentTime;
}

- (IBAction)changeTime:(id)sender {
    [theAudio stop];
    [theAudio setCurrentTime:self.avancementMusicSlider.value];
    [theAudio prepareToPlay];
    [theAudio play];
}
- (IBAction)valuechange:(id)sender {
    self.avancementMusicSlider.value = theAudio.currentTime;
}
/*
- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
    // Music completed
    if (flag) {
        [sliderTimer invalidate];
    }

}
*/
- (void)viewDidLoad {
    [super viewDidLoad];
//[self.avancementMusicSlider addTarget:self action:@selector(valuechange:)forControlEvents:UIControlEventValueChanged];
    
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
