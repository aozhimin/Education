//
//  HomeViewController.m
//  Education
//
//  Created by dev-aozhimin on 16/2/19.
//  Copyright © 2016年 com.aozhimin. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "DetailViewController.h"
#import "UIStoryboard+Helper.h"

static NSString * const navigationTitleText = @"在外留学";

@interface HomeViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (copy, nonatomic) NSArray *sidArray;
@property (copy, nonatomic) NSArray *videoArray;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = navigationTitleText;
    [self loadData];
}

- (void)loadData {
    [[DataManager shareManager] getSIDArrayWithURLString:@"http://c.m.163.com/nc/video/home/0-10.html"
                                                 success:^(NSArray *sidArray, NSArray *videoArray) {
                                                     self.sidArray =[NSArray arrayWithArray:sidArray];
                                                     self.videoArray = [NSArray arrayWithArray:videoArray];
                                                     [self.tableView reloadData];
                                                     NSLog(@"sidArray = %@",sidArray);
                                                 }
                                                  failed:^(NSError *error) {
                                                      
                                                  }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.videoArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 250;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
//    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(videoPreviewTapped:)];
//    [cell.videoPreviewImageView addGestureRecognizer:gesture];
    cell.model = [self.videoArray objectAtIndex:indexPath.row];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
        VideoModel *video = [self.videoArray objectAtIndex:indexPath.row];
    DetailViewController *vc = [UIStoryboard storyboardName:Storyboard_Home viewControllerWithIdentifier:@"detailViewController"];
    vc.videoModel = video;
    [self.navigationController pushViewController:vc animated:YES];

}

//- (void)videoPreviewTapped:(UITapGestureRecognizer *)gesture {
//    UIView *view = gesture.view;
//    [self performSegueWithIdentifier:@"seguePushDetail" sender:nil];
//
//}

@end
