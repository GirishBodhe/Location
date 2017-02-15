//
//  CamaraViewController.m
//  Abhi_locater
//
//  Created by Girish Bodhe on 15/02/17.
//
//

#import "CamaraViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface CamaraViewController ()

@end

@implementation CamaraViewController
- (void)loadView {
    GMSPanoramaView *panoView = [[GMSPanoramaView alloc] initWithFrame:CGRectZero];
    self.view = panoView;
    
    [panoView moveNearCoordinate:CLLocationCoordinate2DMake(-33.732, 150.312)];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadView];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
