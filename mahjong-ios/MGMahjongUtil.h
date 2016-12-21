//
//  MGMahjongUtil.h
//  mahjong-ios
//
//  Created by 郡司 匡弘 on 2016/11/24.
//  Copyright © 2016年 Masahiro Gunji. All rights reserved.
//

#ifndef MGMahjongUtil_h
#define MGMahjongUtil_h
#import "MGMahjongScore.h"


#endif /* MGMahjongUtil_h */

@interface MGMahjongUtil : NSObject

//@property (nonatomic, assign) NSInteger

+ (MGMahjongScore*)checkYakuWithTehaibj:(NSArray*)tehai isTumo:(BOOL)isTumo;
+ (NSInteger)calculateFuWithTehai:(NSArray*)tehai isTumo:(BOOL)isTumo;
+ (void)checkAgariWithTehai;


@end
