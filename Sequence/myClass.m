//
//  myClass.m
//  Sequence
//
//  Created by Наташа on 22.04.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "myClass.h"
#import "CategoryName.h"

@implementation myClass
-(void)sum{
    NSString* sum = [_arr valueForKeyPath:@"@sum.self"];
    NSLog(@"The sum of array elements - %@",sum);
}

@end

@implementation myClass (myCategory)
-(NSArray *)sortAscending{
    _arr=[_arr sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    return _arr;
}
-(NSInteger *)findSeq{
    int counter=1;
    int curr=counter;
    for (int i=0; i<_arr.count-1; i++) {
        int firstElement=[[_arr objectAtIndex:i] intValue];
        int secondElement = [[_arr objectAtIndex:i+1] intValue];
        if (firstElement+1==secondElement) {
            counter++;
        }else{
            counter=1;
        }
        if (counter > curr) {
            curr=counter;
        }
    }
    NSLog(@"The number of elements in sequence - %d",curr);
    return curr;
}
@end

