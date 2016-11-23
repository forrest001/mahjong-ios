//
//  MGMahjongPlayer.h
//  mahjong-ios
//
//  Created by 郡司 匡弘 on 2016/11/24.
//  Copyright © 2016年 Masahiro Gunji. All rights reserved.
//

#ifndef MGMahjongPlayer_h
#define MGMahjongPlayer_h


#endif /* MGMahjongPlayer_h */

@interface MGMahjongPlayer : NSObject
@property (nonatomic, strong) NSMutableArray* tehai;
@property (nonatomic, strong) NSMutableArray* sutehai;

@property (nonatomic, assign) BOOL reach;
@property (nonatomic, assign) int shuntu;
@property (nonatomic, assign) int koutu;
@property (nonatomic, assign) int tumoCnt;
@property (nonatomic, assign) int tumoCntAfterReach;

@property (nonatomic, strong) MSMutableArray* shuntuHai;
@property (nonatomic, strong) MSMutableArray* koutuHai;


@property (nonatomic, assign) int score;
@property (nonatomic, assign) int han;
@property (nonatomic, assign) int fu;
@property (nonatomic, assign) int doraCnt;
@end
