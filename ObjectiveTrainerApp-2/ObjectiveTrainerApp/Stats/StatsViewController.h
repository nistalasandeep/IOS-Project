//
//  StatsViewController.h
//  ObjectiveTrainerApp
//


#import <UIKit/UIKit.h>

@interface StatsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *totalQuestionsLabel;
@property (weak, nonatomic) IBOutlet UILabel *easyQuestionsStats;
@property (weak, nonatomic) IBOutlet UILabel *mediumQuestionsStats;
@property (weak, nonatomic) IBOutlet UILabel *hardQuestionsStats;

@end
