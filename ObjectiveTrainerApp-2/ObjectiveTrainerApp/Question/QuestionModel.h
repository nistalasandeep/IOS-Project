//
//  QuestionModel.h
//  ObjectiveTrainerApp
//


#import <Foundation/Foundation.h>

@interface QuestionModel : NSObject

@property (strong, nonatomic) NSMutableArray *easyQuestions;
@property (strong, nonatomic) NSMutableArray *mediumQuestions;
@property (strong, nonatomic) NSMutableArray *hardQuestions;

- (NSMutableArray *)getQuestions:(QuizQuestionDifficulty)difficulty;

@end
