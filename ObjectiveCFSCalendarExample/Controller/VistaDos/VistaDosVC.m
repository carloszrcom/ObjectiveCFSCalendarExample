//
//  VistaDosVC.m
//  ObjectiveCFSCalendarExample
//
//  Created by Carlos ZR on 11/4/22.
//

#import "VistaDosVC.h"
#import "FSCalendar.h"



@interface VistaDosVC () <FSCalendarDataSource, FSCalendarDelegate, FSCalendarDelegateAppearance>

@property (weak, nonatomic) IBOutlet FSCalendar *calendar;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (strong, nonatomic) NSString *selectedDate;
@property (strong, nonatomic) NSDateFormatter *formatter;


@end

@implementation VistaDosVC

// MARK: - LIFECYCLE

- (void)viewDidLoad {
    [super viewDidLoad];
    [self style];
}

// MARK: - FUNCTIONS

- (void)style {
    self.calendar.appearance.selectionColor = UIColor.orangeColor;
}

// MARK: - ACTIONS

// VOLVER A VISTA UNO
- (IBAction)accept:(id)sender {
    if (_delegate) {
        [self dismissViewControllerAnimated:true completion:^{
            [self.delegate dataFromController:self.selectedDate];
        }];
    }
}

// MARK: - FSCALENDAR DELEGATE AND DATASOURCE

- (void)calendar:(FSCalendar *)calendar boundingRectWillChange:(CGRect)bounds animated:(BOOL)animated {
    // Do other updates here
    [self.view layoutIfNeeded];
}

- (void)calendar:(FSCalendar *)calendar didSelectDate:(NSDate *)date atMonthPosition:(FSCalendarMonthPosition)monthPosition {
    
    // CAMBIAR FORMATO DE FECHA
    
    self.formatter = [[NSDateFormatter alloc] init];
    self.formatter.dateFormat = @"dd/MM/yyyy";
    
    self.selectedDate = [self.formatter stringFromDate:date];
//    NSLog(@"Date is %@", self.selectedDate);
    
    self.myLabel.text = _selectedDate;
}




@end
