
@interface CALayer (Private)
@property (nonatomic, assign, readwrite, setter=is_setBlurRadius:) CGFloat is_blurRadius;
@end

@interface MRUControlCenterViewController : UIViewController
@property (nonatomic, strong) UIImageView *artworkViewCC;
@end

@interface SBCoverSheetPrimarySlidingViewController : UIViewController
@property (nonatomic, strong) UIImageView *artworkViewLSBG;
@end



CGFloat lsblur;
CGFloat ccblur;
BOOL cconoff;
BOOL lsonoff;