//
//  MenuModel.m
//  ObjectiveTrainerApp
//

//

#import "MenuModel.h"
#import "MenuItem.h"

@implementation MenuModel

- (NSArray *)getMenuItems
{
    NSMutableArray *menuItemArray = [[NSMutableArray alloc] init];
    
    MenuItem *item1 = [[MenuItem alloc] init];
    item1.menuTitle = @"Easy Questions";
    item1.menuIcon = @"EasyMenuIcon";
    item1.screenType = ScreenTypeQuestion;
    [menuItemArray addObject:item1];
    
    MenuItem *item2 = [[MenuItem alloc] init];
    item2.menuTitle = @"Medium Questions";
    item2.menuIcon = @"MediumMenuIcon";
    item2.screenType = ScreenTypeQuestion;
    [menuItemArray addObject:item2];
    
    MenuItem *item3 = [[MenuItem alloc] init];
    item3.menuTitle = @"Hard Questions";
    item3.menuIcon = @"HardMenuIcon";
    item3.screenType = ScreenTypeQuestion;
    [menuItemArray addObject:item3];
    
    MenuItem *item4 = [[MenuItem alloc] init];
    item4.menuTitle = @"Statistics";
    item4.menuIcon = @"StatsMenuIcon";
    item4.screenType = ScreenTypeStats;
    [menuItemArray addObject:item4];
    
    MenuItem *item5 = [[MenuItem alloc] init];
    item5.menuTitle = @"About";
    item5.menuIcon = @"AboutMenuIcon";
    item5.screenType = ScreenTypeAbout;
    [menuItemArray addObject:item5];
    
        return menuItemArray;
}

@end
