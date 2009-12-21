//
//  ImageGalleryViewController.m
//  Touch
//
//  Created by Dave Knapik on 10/12/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ImageGalleryViewController.h"
#import "ImageGalleryPhotoSource.h"
#import "MockPhotoSource.h"

@implementation ImageGalleryViewController

-(id) initWithTabBar {
	if ([self init]) {
		//this is the label on the tab button itself
		self.title = @"Listening Eye";
		
		// set the long name shown in the navigation bar at the top
		self.navigationItem.title=@"Listening Eye";
		
		self.hidesBottomBarWhenPushed = NO;
	}
	
	return self;
}

- (void)updateTableLayout {
	self.tableView.contentInset = UIEdgeInsetsMake(4, 0, 0, 0);
	self.tableView.scrollIndicatorInsets = UIEdgeInsetsZero;
	
}

- (void)viewDidLoad {
	ImageGalleryPhotoSource *imageGalleryPhotoSource = [[ImageGalleryPhotoSource alloc] init];
	self.photoSource = imageGalleryPhotoSource;
	
	self.navigationBarStyle = UIBarStyleDefault; 
	self.navigationBarTintColor	= [UIColor blackColor];
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [super dealloc];
}

@end