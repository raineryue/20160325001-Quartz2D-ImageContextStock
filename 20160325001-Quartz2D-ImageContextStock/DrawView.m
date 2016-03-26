//
//  DrawView.m
//  20160325001-Quartz2D-ImageContextStock
//
//  Created by Rainer on 16/3/25.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

/**
 *  采用上下文栈来描述图形
 */
- (void)drawRect:(CGRect)rect {
    // 1.获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 保存上下文状态(这里是一个最纯洁的上下文状态)
    CGContextSaveGState(context);
    
    // 第一条线
    // 2.将建并描述路径
    // 2.1.创建一个贝赛尔路径
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    
    // 2.2.描述路径
    [bezierPath moveToPoint:CGPointMake(10, 125)];
    [bezierPath addLineToPoint:CGPointMake(240, 125)];
    
    // 2.3.设置上下文状态
    [[UIColor redColor] set];
    CGContextSetLineWidth(context, 10);
    
    // 3.将路径添加到上下文中
    CGContextAddPath(context, bezierPath.CGPath);
    
    // 4.渲染上下文
    CGContextStrokePath(context);
    
    // 第二条线
    // 恢复上下文状体（恢复之前保存的那个最纯洁的上下文状态）
    CGContextRestoreGState(context);
    
    // 1.创建一个贝赛尔路径
    bezierPath = [UIBezierPath bezierPath];
    
    // 2.描述路径
    [bezierPath moveToPoint:CGPointMake(125, 10)];
    [bezierPath addLineToPoint:CGPointMake(125, 240)];
    
    // 3.将路径添加到上下文
    CGContextAddPath(context, bezierPath.CGPath);
    
    // 4.渲染上下文
    CGContextStrokePath(context);
}

/**
 *  采用基本上下文来画图形
 */
- (void)strokeWithBasic {
    // 1.获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 第一条线
    // 2.创建一个贝赛尔路径
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    
    // 2.1.描述路径
    [bezierPath moveToPoint:CGPointMake(10, 125)];
    [bezierPath addLineToPoint:CGPointMake(240, 125)];
    
    // 2.2.设置上下文的样式
    [[UIColor redColor] set];
    CGContextSetLineWidth(context, 10);
    
    // 3.把路径添加到上下文
    CGContextAddPath(context, bezierPath.CGPath);
    
    // 4.渲染上下文
    CGContextStrokePath(context);
    
    // 第二条线
    // 2.创建一个贝赛尔路径
    bezierPath = [UIBezierPath bezierPath];
    
    // 2.1.描述路径
    [bezierPath moveToPoint:CGPointMake(125, 10)];
    [bezierPath addLineToPoint:CGPointMake(125, 240)];
    
    // 2.2.设置上下文的样式
    [[UIColor blackColor] set];
    CGContextSetLineWidth(context, 1);
    
    // 3.把路径添加到上下文
    CGContextAddPath(context, bezierPath.CGPath);
    
    // 4.渲染上下文
    CGContextStrokePath(context);

}

@end
