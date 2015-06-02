# String-SideBasedTrimming
Trims a String(or NSString) in iOS on a certain side

This file is written in Swift.  You will need to write `#import "XXX-Swift.h"` into your .m file if you're programming in Objective-C

###Methods
`func stringByStrippingPaddingOffSide(side: StringSide) -> String`

* This is the main method.  It will trim the string on whichever StringSide you provide. (See below for accepted values)

###Values

`StringSide`

* `Left` (`StringSideLeft`):
	* The left side of the string

* `Right` (`StringSideRight`):
	* The right side of the string