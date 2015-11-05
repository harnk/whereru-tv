//
//  ViewController.m
//  WhereRUTV
//
//  Created by Scott Null on 10/31/15.
//  Copyright © 2015 Scott Null. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)doButtonOne:(id)sender {
    UIAlertController *alertOne = [UIAlertController
                                   alertControllerWithTitle:@"Join Map Group?" message:@"When you create a new map group other WhereRU app users can join it. You just need to tell them the name of your map group. Remember, anyone can join any map group, so if you want your group to be private, create a unique map group name that others would not guess." preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *joinButton = [UIAlertAction actionWithTitle:@"Join" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [alertOne dismissViewControllerAnimated:YES completion:nil];
    }];
    UIAlertAction *cancelButton = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [alertOne dismissViewControllerAnimated:YES completion:nil];
    }];

    [alertOne addAction:cancelButton];
    [alertOne addAction:joinButton];
    
    [self presentViewController:alertOne animated:YES completion:nil];

}

-(IBAction)doButtonTwo:(id)sender {
    
}

-(IBAction)doButtonThree:(id)sender {
    
}

#pragma mark -
#pragma mark UITableView Delegate

- (int)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
//    NSDate *object = self.objects[indexPath.row];
    cell.textLabel.text = @"Hey tvOS here I am";
    return cell;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
