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
	
	//	Sort the keys numerically
	NSArray *keys = [[self allKeys] sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
		NSNumber *n1 = obj1;
		NSNumber *n2 = obj2;
		
		return [n1 compare:n2];
	}];
	
	//	Add each item to the end of the array
	for (NSInteger i =0 ; i < [keys count]; i++)
	{
		[array addObject:self[keys[i]] ];
	}
	return array;
}
@end
