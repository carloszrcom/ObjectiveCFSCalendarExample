//
//  ViewController.m
//  ObjectiveCFSCalendarExample
//
//  Created by Carlos ZR on 8/4/22.
//

#import "ViewController.h"
#import "VistaDosVC.h"

@interface ViewController () <SecondViewControllerDelegate>
@end

@implementation ViewController

// MARK: - LIFECYCLE

- (void)viewDidLoad {
    [super viewDidLoad];
}

// MARK: - ACTIONS

- (IBAction)irVistaDos:(id)sender {
    
    VistaDosVC *destination = [[UIStoryboard storyboardWithName:@"VistaDos" bundle:nil] instantiateViewControllerWithIdentifier:@"VistaDos"];
    destination.delegate = self;
    destination.data = @"DATOS DE PRUEBA";
    [self presentViewController:destination animated:YES completion:nil];
    
    // IR A VISTA DOS
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"VistaDos" bundle:nil];
//    UIViewController *vistaDosVC = [storyboard instantiateViewControllerWithIdentifier:@"VistaDos"];
//    [self presentViewController:vistaDosVC animated:true completion:^{}];
}

// MARK: - PROTOCOL

- (void)dataFromController:(nonnull NSString *)data {
    NSLog(@"DATA --> %@", data);
}

@end
