In this tutorial, I'll walk you step by step on how to add auto update framework [Sparkle](https://sparkle-project.org) in your macOS app

If you are already familiar with macOS app release and why Sparkle is needed, then you can skip next section and start [here](#gettingStarted).

#Why Sparkle?#

To answer this, let's rewind back a bit. So you had an idea about a macOS app. You researched and found no perfect app (solution) exists that solves the problem and you decide to solve by building the perfect app. You burn midnight oil and finally comes up with a build of an app, which is in a state that you are not *too* [embarrassed](https://www.businessinsider.com/the-iterate-fast-and-release-often-philosophy-of-entrepreneurship-2009-11) to showcase to the world. You ship your first version.

Post shipping is when work truly begins. User downloads your app and provide their feedback. A cycle begins which starts by listening to user's feedback, incorporating them and shipping second version. And third and fourth and it continues. In this cycle a very critical element is how to provide new versions to users. One way to do it is via Apple's Mac app store. While it's great option (no hosting fees, no monthly storage and bandwidth fees especially if your app is free and app is auto updated with new versions) but it comes with mandatory requirements, for e.g. Sandbox should be enabled etc., that one needs to implement in their app and which may not allow your app to work in a way that you think provide best experience. So only option left is hosting it outside of mac app store. How do you then provide new versions of your app to users?

This is where [Sparkle](https://sparkle-project.org) comes in. *Sparkle is an easy-to-use software update framework for macOS applications.*

One should always have auto update framework in their app starting with first release lest you will be in my shoes 😔. *Shameless plug:* I released [EasyFinder](https://www.easyfinderapp.com) and hosted it outside of mac app store. To provide peace of mind to users and of course assurance to macOS Gatekeeper ☺️ so that it let EasyFinder run, EasyFinder has been dev signed and [notarized](https://developer.apple.com/documentation/security/notarizing_your_app_before_distribution) by apple. It doesn't have an auto update framework and so I cannot provide new versions to users seamlessly. Second version of [EasyFinder](https://www.easyfinderapp.com) will again be a new launch on [Product Hunt](https://www.producthunt.com/posts/easyfinder), something one may not want unless it's a mega update. Thankfully second version of EasyFinder will bring a whole bunch of new experience and features which warrants a hard launch instead of a soft launch. So in my experience, I would **strongly** advise to add auto update feature in your macOS app starting with first release.



# Getting Started <a name="gettingStarted"></a>

Enough said and like promised at the start, I will take you step by step on how to setup Sparkle framework in your macOS app and last but not least, configure it so that apple agrees to notarize it 😎. Yes, Sparkle needs to be dev signed or else your app will not be accepted for notarization. Why should we notarize? More on this later.

We will add and configure Sparkle to an existing macOS menu bar app. Go ahead and [download]() the project, build and run it. If everything goes well you should see a ￼Star in your menu bar 👇
![Menu bar icon](https://thepracticaldev.s3.amazonaws.com/i/xcr9x1z02c5e1nmw80mh.png)

Click on the star and you will see the first version of the app. Nothing too fancy. 












