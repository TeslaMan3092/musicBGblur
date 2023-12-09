#import <Foundation/Foundation.h>
#import "bgbRootListController.h"

@implementation bgbRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
