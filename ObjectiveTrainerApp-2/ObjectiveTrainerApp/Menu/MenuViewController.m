//
//  MenuViewController.m
//  ObjectiveTrainerApp
//


#import "MenuViewController.h"
#import "SWRevealViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Set self as the data source and delegate for the table view
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Fetch the menu items
    self.menuItems = [[[MenuModel alloc] init] getMenuItems];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Table View Delegate Methods

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menuItems.count;
}

- (float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Retrieve cell
    NSString *cellIdentifier = @"MenuItemCell";
    UITableViewCell *menuCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // Get menu item that it's asking for
    MenuItem *item = self.menuItems[indexPath.row];
    
    // Get image view
    UIImageView *iconImageView = (UIImageView *)[menuCell viewWithTag:2];
    UILabel *menuItemTitle = (UILabel *)[menuCell viewWithTag:1];
    
    
    // Set menu item text and icon
    menuItemTitle.text = item.menuTitle;
    iconImageView.image = [UIImage imageNamed:item.menuIcon];
    
    return menuCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Check which item was tapped
    MenuItem *item = self.menuItems[indexPath.row];
    
    switch (item.screenType) {
        case ScreenTypeQuestion:
            // Go to question screen
            [self performSegueWithIdentifier:@"GoToQuestionsSegue" sender:self];
            break;
            
        case ScreenTypeStats:
            // Go to stats screen
            [self performSegueWithIdentifier:@"GoToStatsSegue" sender:self];
            break;
            
                default:
            break;
    }
}

#pragma mark Segue Methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Set the front view controller to be the destination one
    [self.revealViewController setFrontViewController:segue.destinationViewController];
    
    // Slide the front view controller back into place
    [self.revealViewController revealToggleAnimated:YES];
}

@end
