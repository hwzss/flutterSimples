

import 'package:flutter/material.dart';
import 'dart:ui';

/// 屏幕尺寸
final Size kScreenSize = MediaQueryData.fromWindow(window).size;
/// 屏幕宽
final double kScreenWidth = MediaQueryData.fromWindow(window).size.width;
/// 屏幕高
final double kScreenHeight = MediaQueryData.fromWindow(window).size.height;
/// 屏幕宽/375
final double kScreenWidthRatio = kScreenWidth/375;
/// 屏幕高/667
final double kScreenHeightRatio = kScreenHeight/667;

/// 状态栏高度 （iOS 全面屏为 44，其它为 20）
final double kStatusBarHeight = MediaQueryData.fromWindow(window).padding.top;
/// iOS 头部导航栏高度
final double kIOSTopNavHeight = 44;
/// 头部导航栏高度
final double kTopNavHeight = kIOSTopNavHeight;
/// 状态栏高度+头部导航栏高度
final double kTopBarHeight = kStatusBarHeight + kIOSTopNavHeight;
/// 底部高度 （iOS 全面屏为 34，其它为 0）
final double kBottomHeight = MediaQueryData.fromWindow(window).padding.bottom;
/// 底部导航栏高度
final double kBottomNavHeight = 49 + kBottomHeight;
/// 是否为全面屏
final bool kIfFullScreen = (kStatusBarHeight != 20);


/// 元素水平间距
const double kElementHorizontal = 20;
/// 按钮高度
const double kButtonHeight = 44;