//
//  NSArray+ToDictionary.m
//  ArrayToDict
//
//  Created by Moshe Berman on 5/29/13.
//  Copyright (c) 2013 Moshe Berman. All rights reserved.
//

#import "NSArray+ToDictionary.h"

@implementation NSArray (ToDictionary)

- (NSDictionary *)dictionary
{
	NSMutableDictionary *dictionary = [NSMutableDictionary new];
	
	for (NSInteger i = 0; i <[self count]; i++) {
		dictionary[@(i)] = self[i];
	}
	return dictionary;
}

@end
