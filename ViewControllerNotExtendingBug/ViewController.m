#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIViewController *childViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"nav"];
    UIView *childView = childViewController.view;
    UIView *parentView = self.view;

    [self addChildViewController:childViewController];
    [parentView addSubview:childView];

    childView.translatesAutoresizingMaskIntoConstraints = NO;
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(childView)]];
    [parentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(childView)]];
    
    [childViewController didMoveToParentViewController:self];
}

@end
