//
//  lecteurViewController.h
//  RizeerClientIos
//
//  Created by Youssef Amri on 09/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface lecteurViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageAlbum;
@property (strong, nonatomic) IBOutlet UIButton *playButton;
@property (strong, nonatomic) IBOutlet UIButton *pauseButton;
@property (strong, nonatomic) IBOutlet UIButton *nextMusicButton;
@property (strong, nonatomic) IBOutlet UIButton *previousMusicButton;
@property (strong, nonatomic) IBOutlet UIButton *likeButton;
@property (strong, nonatomic) IBOutlet UIButton *addPlaylistButton;
@property (strong, nonatomic) IBOutlet UIButton *rizeButton;
@property (strong, nonatomic) IBOutlet UIButton *followButton;
@property (strong, nonatomic) IBOutlet UILabel *titreMusic;
@property (strong, nonatomic) IBOutlet UIButton *detailArtistButton;
@property (strong, nonatomic) IBOutlet UISlider *avancementMusicSlider;


@end
