//
//
//  Created by Diego Freniche Brito on 28/11/12.
//  Copyright (c) 2012 Diego Freniche Brito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PayPal.h"
#import "ShopItem.h"

typedef enum PaymentStatuses {
	PAYMENTSTATUS_SUCCESS,
	PAYMENTSTATUS_FAILED,
	PAYMENTSTATUS_CANCELED,
} PaymentStatus;

@interface ItemDetailViewController : UIViewController <PayPalPaymentDelegate> {
@private
	UITextField *preapprovalField;
	CGFloat y;
	BOOL resetScrollView;
	PaymentStatus status;
}

@property (weak, nonatomic) IBOutlet UIImageView *thumbImage;
@property (weak, nonatomic) IBOutlet UITextView *shortDescription;

@property (strong, nonatomic) ShopItem *item;
@property (weak, nonatomic) IBOutlet UILabel *itemTotal;


@end
