//
//  MenuItem.h
//  ObjectiveTrainerApp
//

//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (strong, nonatomic) NSString *menuTitle;
@property (strong, nonatomic) NSString *menuIcon;
@property (nonatomic) MenuItemScreenType screenType;

@end
