//
//  VistaDosVC.h
//  ObjectiveCFSCalendarExample
//
//  Created by Carlos ZR on 11/4/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//@class VistaDosVC;

@protocol SecondViewControllerDelegate <NSObject>
@required
- (void)dataFromController:(NSString *)data;
@end


// DECLARACIÓN DEL PROTOCOLO. PROTOCOLO PARA PASAR DATOS A VISTA UNO.
//@protocol VistaDosVCDelegate <NSObject>
//- (void)addItemViewController:(VistaDosVC *)controller didFinishEnteringItem:(NSString *)item;
//@end

@interface VistaDosVC : UIViewController

@property (nonatomic, retain) NSString *data;
@property (nonatomic, weak) id<SecondViewControllerDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
