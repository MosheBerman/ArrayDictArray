ArrayDictArray
==============

A pair of categories that can encode an NSArray as an NSDictionary and back again.

Setting It Up:
---
Just drop the categories folder into your project and then `#import ArrayDictArray.h` where you want to use it.

What it does:
---

Once you've imported the header, you'll find that `NSArray` now has a method called `dictionary` and that `NSDictionary` has a method called `array`.

NSArray to NSDictionary
---
The `dictionary` takes the recieving `NSArray` instance and copies the objects in it into a dictionary. Each item's index becomes the key. Keys in the new dictionary are instances of `NSNumber`. An `NSMutableDictionary` is returned.

NSDictionary to NSArray
---
The `array` method takes the recieving `NSDictionary` instance and copies the objects in it into an array. This assumes that the dictionary's keys are sequential `NSNumber` objects, presumably the result of calling `dictionary` on an `NSArray`. The behavior for any other kind of key is undefined. An `NSMutableArray` instance is returned.
