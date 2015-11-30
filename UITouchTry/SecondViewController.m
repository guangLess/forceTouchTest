//
//  SecondViewController.m
//  UITouchTry
//
//  Created by Guang on 11/29/15.
//  Copyright © 2015 Guang. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(NSArray <id <UIPreviewActionItem>> *)previewActionItems
//{
//    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"action1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"action1 selected.");
//    }];
//    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"action2" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"action1 selected.");
//    }];
//    UIPreviewAction *action3_1 = [UIPreviewAction actionWithTitle:@"action3-1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"action1 selected.");
//    }];
//    UIPreviewAction *action3_2 = [UIPreviewAction actionWithTitle:@"action3-2" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"action1 selected.");
//    }];
//    UIPreviewActionGroup *action3 = [UIPreviewActionGroup actionGroupWithTitle:@"action3" style:UIPreviewActionStyleDestructive actions:@[action3_1, action3_2]];
//    
//    return @[action1, action2, action3];
//}


-(NSArray <id <UIPreviewActionItem>> *)previewActionItems // what does this mean
{

    UIPreviewAction * actA = [UIPreviewAction actionWithTitle:@"A" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"action A selected");
    }];
    UIPreviewAction * actB = [UIPreviewAction actionWithTitle:@"B" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"action B selected");
    }];

    return @[actA,actB];
}

@end
