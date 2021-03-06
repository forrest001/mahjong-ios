//
//  MGMahjongUtil.m
//  mahjong-ios
//
//  Created by 郡司 匡弘 on 2016/11/24.
//  Copyright © 2016年 Masahiro Gunji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGMahjongUtil.h"
#import "MGMahjongScore.h"

@implementation MGMahjongUtil

- (NSArray*) scoreTableHighRon { //[2][15]
  return  @[
  //子用
  @[@0,@0,@0,@0,@0,
    @8000, @12000, @12000, @16000, @16000, @16000,
    @24000, @24000, @24000, @32000
  ],
  //親用
  @[@0,@0,@0,@0,@0,
    @12000, @18000, @18000, @24000, @24000, @24000,
    @36000, @36000, @36000, @48000]
  ];
}

- (NSArray*) scoreTableLowRon { //[2][4][10]
  return @[
  // 子用
  @[
  // １役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @1000, @1300, @1600, @2000, @2300, @2600, @2900, @3200, @0,],
  // ２役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @2000, @2600, @3200, @3900, @4500, @5200, @5800, @6400, @7100,],
  // ３役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @3900, @5200, @6400, @7700, @8000, @8000, @8000, @8000, @8000,],
  // ４役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @7700, @8000, @8000, @8000, @8000, @8000, @8000, @8000, @8000,]
  ],
  
  // 親用
  @[
  // １役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @1500, @2000, @2400, @2900, @3400, @3900, @4400, @4800, @0,],
  // ２役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @2900, @3900, @4800, @5800, @6800, @7700, @8700, @9600, @10400,],
  // ３役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @5800, @7700, @9600, @11600, @12000, @12000, @12000, @12000, @12000,],
  // ４役, 20/30/40/50/60/70/80/90/100/110
  @[@0, @11600, @12000, @12000, @12000, @12000, @12000, @12000, @12000, @12000,]
  ]
  ];
}

- (NSArray*) yakuName { //[0][16]
  return
  @[
    @"立直",//0
    @"ダブル立直",
    @"一発",
    @"門前清自摸和",
    @"平和",
    @"断幺九",
    @"一盃口",
    @"二盃口",
    @"全帯公",
    @"純正全帯幺",
    @"混老頭",//10
    @"対々和",
    @"混一色",
    @"清一色",
    @"一気通貫",
    @"三色同順",
    @"三色同刻",
    @"七対子",
    @"三暗刻",
    @"小三元",
    @"三槓子",//20
    @"嶺上開花",
    @"搶槓",
    @"海底",
    @"役牌（東）",
    @"役牌（南）",
    @"役牌（西）",
    @"役牌（北）",
    @"役牌（白）",
    @"役牌（発）",
    @"役牌（中）",//30
    @"流し満貫",
    @"ドラ",
    @"緑一色",//33役満
    @"四暗刻",
    @"大三元",
    @"小四喜",
    @"大四喜",
    @"清老頭",
    @"字一色",
    @"国士無双",//40
    @"九蓮宝燈",
    @"四槓子",
    @"天和",
    @"地和",
    @"人和",//45
  ];
}

- (NSArray*) yakuHan {
  return
  @[
    @"1翻",
    @"2翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"3翻",
    @"2翻",
    @"3翻",
    @"2翻",
    @"2翻",
    @"3翻",
    @"6翻",
    @"2翻",
    @"2翻",
    @"2翻",
    @"2翻",
    @"2翻",
    @"4翻",
    @"2翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"1翻",
    @"満貫"
  ];
}

- (NSArray*) mangan {
  return
  @[
    @"",
    @"満貫",
    @"ハネ満",//6~
    @"倍満",//8~
    @"3倍満",//11~
    @"役満"
  ];
}

- (NSArray*) ba {
  return @[@"東",@"南",@"西",@"北"];
}

- (NSArray*) mahjongHai {
  return
  @[
    @0,@1,@2,@3,@4,@5,@6,@7,@8,@9,          //0,萬子1~8
    @0,@11,@12,@13,@14,@15,@16,@17,@18,@19, //0,筒子11~19
    @0,@21,@22,@23,@24,@25,@26,@27,@28,@29, //0,索子21~29
    @0,@31,@32,@33,@34,@35,@36,@37,         //0,東南西北白発中31~37
  ];
}

+ (MGMahjongScore*)checkYakuWithTehaibj:(NSArray*)tehai isTumo:(BOOL)isTumo {
  MGMahjongScore* score = [MGMahjongScore new];
  //立直
  //ダブル立直
  //一発
  //ツモ
  //平和
  //断么九
  //一盃口&二盃口
  //チャンタ&純チャン&混老頭
  //トイトイ
  //ホンイツ&チンイツ
  //イッツー
  //三色同順
  //七対子
  //三暗刻
  //ドラ
  return score;
}

+ (NSInteger)calculateFuWithTehai:(NSArray*)tehai isTumo:(BOOL)isTumo {
  NSInteger fu = 20;
  //面前でロンあがりの場合
  //全部順子の場合
  //刻子・槓子・雀頭による加算
  //刻子
  //雀頭
  return fu;
}

@end
