//
//  ViewController.m
//  leanCloudapp
//
//  Created by lvzhanxiang on 16/3/12.
//  Copyright © 2016年 lvzhanxiang. All rights reserved.
//

#import "ViewController.h"
#import <CDChatManager.h>
#import "ChatViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClick:(id)sender {
    [[CDChatManager manager]openWithClientId:@"Tom" callback:^(BOOL succeeded, NSError *error) {
        [[CDChatManager manager]fetchConversationWithOtherId:@"Jerry" callback:^(AVIMConversation *conversation, NSError *error) {
            ChatViewController * chat = [[ChatViewController alloc]initWithConversation:conversation];
            [self presentViewController:chat animated:YES completion:nil]
            ;}]
        ;}];
}

@end
