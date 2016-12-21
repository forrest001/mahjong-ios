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
@property (nonatomic, strong) NSMutableArray* tehai;      //手牌
@property (nonatomic, strong) NSMutableArray* sutehai;    //捨て牌
@property (nonatomic, assign) BOOL reach;                 //立直したか
@property (nonatomic, assign) int shuntu;                 //順子
@property (nonatomic, assign) int koutu;                  //刻子
@property (nonatomic, assign) int tumoCnt;                //何回ツモったか
@property (nonatomic, assign) int tumoCntAfterReach;      //立直後のツモの回数

@property (nonatomic, strong) MSMutableArray* shuntuHai;  //順子の牌
@property (nonatomic, strong) MSMutableArray* koutuHai;   //刻子の牌


@property (nonatomic, assign) int score;                  //点数
@property (nonatomic, assign) int han;                    //翻
@property (nonatomic, assign) int fu;                     //符
@property (nonatomic, assign) int doraCnt;                //ドラ数
@end
