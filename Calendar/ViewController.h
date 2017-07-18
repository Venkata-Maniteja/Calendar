//
//  ViewController.h
//  Calendar
//
//  Created by venkata on 2017-07-18.
//  Copyright © 2017 venkata. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TapkuLibrary/TapkuLibrary.h"
#import "curry.h"
@class DetailViewController;

@interface ViewController : TKTableViewController

@property (nonatomic,strong) NSArray *data;
@property (nonatomic,strong) DetailViewController *detailViewController;

@end

