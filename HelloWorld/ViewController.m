//
//  ViewController.m
//  HelloWorld
//
//  Created by Mark Willett on 13/09/2016.
//  Copyright © 2016 Mark Willett. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel *messageLabel;
@property (nonatomic, strong) IBOutlet UITextField *inputField;

@end

@implementation ViewController

-(IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Mark";
    NSString *message;
    
    if([yourName length] == 0){
        yourName = @"World";
    }
    
    if([yourName isEqualToString:myName]){
        message = [NSString stringWithFormat:@"Hello %@, we have the same name!", yourName];
    } else {
        message = [NSString stringWithFormat:@"Hello %@", yourName];
    }
    
    self.messageLabel.text = message;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
