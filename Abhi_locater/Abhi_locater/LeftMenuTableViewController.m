//
//  LeftMenuTableViewController.m
//  Abhi_locater
//
//  Created by Girish Bodhe on 14/02/17.
//
//

#import "LeftMenuTableViewController.h"
#import "SWRevealViewController.h"
#import "HotelTableViewController.h"

@interface LeftMenuTableViewController ()<SWRevealViewControllerDelegate>

@property(nonatomic,strong)NSMutableArray *displayMenu;

@end

@implementation LeftMenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    self.displayMenu = [[NSMutableArray alloc]init];
    
    [self.displayMenu addObject:@"Events"];
    [self.displayMenu addObject:@"About Us"];
    [self.displayMenu addObject:@"Sign Out"];
    [self.displayMenu addObject:@"Log In"];
    [self.displayMenu addObject:@"Sign Up"];
        
        
    
    NSLog(@"Left Menu.. %@", self.displayMenu);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.displayMenu count];

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [_displayMenu objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor colorWithRed:106 / 255.0 green:82 / 255.0 blue:178 / 255.0  alpha:0.001];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
        if (indexPath.row==0) {
            [self performSegueWithIdentifier:@"Event" sender:self];
//        }else if (indexPath.row==1) {
//            
//             [self performSegueWithIdentifier:@"Event1" sender:self];
//        }
//        else if (indexPath.row==2) {
//            [self performSegueWithIdentifier:@"Event2" sender:self];
//        }else if (indexPath.row == 4)
//        {
//            [self performSegueWithIdentifier:@"Event3" sender:self];
//        }else
//        {
//          
//            [self performSegueWithIdentifier:@"Event4" sender:self];
        
        }
//        else
//        {
//            if (indexPath.row == 3 && [[self.displayMenu objectAtIndex:indexPath.row] isEqualToString: @"Sign Out"]) {
//                
//                NSError *error = nil;
//                [[FIRAuth auth] signOut:&error];
//                if (!error) {
//                    
//                    NSLog(@"SignOut");
//                    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"PE_Event_iPhone" bundle: nil];
//                    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"PE_SignUp_SignInViewController"];
//                    [self presentViewController:vc animated:YES completion:nil];
//                    
//                    
//                    
//                }else
//                    NSLog(@"Error..");
//                
//                
//            }
    
            
   
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
    
    

        
        
        
        
    
   
    
}

@end
