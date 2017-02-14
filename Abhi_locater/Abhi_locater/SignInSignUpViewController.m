//
//  SignInSignUpViewController.m
//  Abhi_locater
//
//  Created by Abhijit Sapkal on 15/02/17.
//
//

#import "SignInSignUpViewController.h"
#import "SignInViewController.h"
#import "SignUpViewController.h"
@interface SignInSignUpViewController ()

@end

@implementation SignInSignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)signIn:(id)sender {
    
[self performSegueWithIdentifier:@"signIn" sender:sender];
    
}
- (IBAction)signUp:(id)sender {

    [self performSegueWithIdentifier:@"signUp" sender:sender];


}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"signIn"]) {
        
        // Get destination view
        SignInViewController *vc = [segue destinationViewController];
        
        // Get button tag number (or do whatever you need to do here, based on your object
      
    }
    if ([[segue identifier] isEqualToString:@"signUp"]) {
        
        // Get destination view
      SignUpViewController *vc = [segue destinationViewController];
        
    }

    
}

@end
