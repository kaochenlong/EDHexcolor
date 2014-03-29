A category for UIColor that can use Hex color code with UIColor Class.

if you use cocoapods:

    pod 'EDHexColor'

or else just copy the *.h and *.m to your project.

Usage:

just import the category, and:

    UIColor* theColor = [UIColor colorWithHexString:@"#3a93d8"];

or:

    UIColor* theColor = [UIColor colorWithHexString:@"#3a93d8" withAlpha:0.5];

both `#3a93d8` or `3a93d8` would be ok :)

Eddie Kao,

eddie@digik.com.tw
