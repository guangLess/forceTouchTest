//
//  ViewController.m
//  UITouchTry
//
//  Created by Guang on 11/29/15.
//  Copyright © 2015 Guang. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *previewButton;
@property (strong , nonatomic) NSArray * previewActionItems;

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];

    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable){
        [self registerForPreviewingWithDelegate:self sourceView:self.previewButton];
        
    }else {
        NSLog(@"screen is not supported");
        //maybe add an alert view;
    }

}


-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location NS_AVAILABLE_IOS(9_0)
{
    NSLog(@"peek");
    SecondViewController * secondVC = [ self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    //SecondViewController * secondVC = [SecondViewController new];
    //secondVC = previewingContext;
    secondVC.preferredContentSize = CGSizeMake(30, 30);
    previewingContext.sourceRect = self.previewButton.frame;

    return secondVC;
}

-(void)previewingContext:(id )previewingContext commitViewController: (UIViewController *)viewControllerToCommit {
 
     NSLog(@"pop");
   [self.navigationController showViewController:viewControllerToCommit sender:nil];
 
 }





//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *t = touches.anyObject;
//    
//    NSLog(@"touchesMoved : %f / %f", t.force, t.maximumPossibleForce);
//}
// */

@end
