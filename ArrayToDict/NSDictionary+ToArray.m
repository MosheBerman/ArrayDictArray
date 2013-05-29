//
//  NSDictionary+ToArray.m
//  ArrayToDict
//
//  Created by Moshe Berman on 5/29/13.
//  Copyright (c) 2013 Moshe Berman. All rights reserved.
//

#import "NSDictionary+ToArray.h"

@implementation NSDictionary (ToArray)

//
//	Convert a dictionary with numbered indices to an array
//

- (NSArray *)array
{
	NSMutableArray *array = [NSMutableArray new];
	
	NSArray *keys = [[self allKeys] sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
		NSNumber *n1 = obj1;
		NSNumber *n2 = obj2;
		
		return [n1 compare:n2];
	}];
	
	for (NSInteger i =0 ; i < [keys count]; i++) {
		array[i] = self[keys[i]];
	}
	return array;
}
@end
