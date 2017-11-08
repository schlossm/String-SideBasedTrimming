# String-SideBasedTrimming
Trims a String in Swift on a given side.

This file is written in Swift 4, which requires Xcode 9+.

### Methods

#### `strippingPadding(off:, paddingCharacter: default) -> String`
Given a side (and a padding character [defaults to "0"]), this method will return a new string with all instances of `paddingCharacter` removed from the given side.  This will not affect instances of `paddingCharacter` in between other characters.

### Enums

`Side`

* `beginning`:
	* The beginning of the string

* `end`:
	* The end of the string
