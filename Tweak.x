@import UIKit;
#import "tweak.h"

void preferencesChanged(){
	NSDictionary *prefs = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.nightwind.prefbundleexampleprefs"];

	cconoff = (prefs && [prefs objectForKey:@"ccbgimgenon"] ? [[prefs valueForKey:@"ccbgimgenon"] boolValue] : YES ); // PSSwitchCell
    lsonoff = (prefs && [prefs objectForKey:@"lsbgimgenon"] ? [[prefs valueForKey:@"lsbgimgenon"] boolValue] : YES ); // PSSwitchCell
    lsblur = (prefs && [prefs objectForKey:@"lsimageblurslider"] ? [[prefs valueForKey:@"lsimageblurslider"] floatValue] : 10 ); // PSSliderCell
    ccblur = (prefs && [prefs objectForKey:@"ccimageblurslider"] ? [[prefs valueForKey:@"ccimageblurslider"] floatValue] : 10 ); // PSSliderCell
}

%ctor{
	preferencesChanged();

	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)preferencesChanged, CFSTR("com.nightwind.prefbundleexampleprefs-updated"), NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}

%hook MRUControlCenterViewController

- (void)viewDidLoad {

    if(cconoff == true){
        %orig;

         if (self.artworkViewCC) {
            self.artworkViewCC.layer.is_blurRadius = ccblur;
        }
    } else{
        %orig;
    } 
}
%end

%hook SBCoverSheetPrimarySlidingViewController

- (void)viewDidLoad {
    if(lsonoff == true){
        %orig;
        if (self.artworkViewLSBG) {
            self.artworkViewLSBG.layer.is_blurRadius = lsblur;
        }
    }else{
        %orig;
    }
}
%end
