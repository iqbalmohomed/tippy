# Pre-work - Tippy 

Tippy is a tip calculator application for iOS.

Submitted by: Iqbal Mohomed

Time spent: 2.5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/2z7vhZv.gifv' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** Xcode is a pretty advanced IDE. I'm impressed with its suggested code fix feature. That said, Swift as a language seems like it was under flux and library functions have been renamed (this breaks code samples and examples online - not something desireable for a new language). The exclamation marks around code also get a bit old quickly. That said, the suggested-fix feature has been pretty helpful with correcting too many (or too few) exclamation marks.

I imagine actions and outlets are just pointers under the hood. Actions are pointers to functions and outlets are pointers to view objects.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

Interesting question and makes me rethink my answer for the previous question where I guessed actions/outlets are probably implemented as pointers. So first .. what is a closure? One can think of it as an anonymous function with some execution context. In swift, it appears, closures encapsulate context using the self reference. Now .. lets get into how a strong reference cycle happens. Consider an object that has closure property. Clearly, the object will have a strong reference to the closure. However, the closure will also have a strong reference to its execution context (i.e. self), which is the object. Thus, one could be a in a situaiton where reference counts would never go to zero.

## License

    Copyright [2017] [Iqbal Mohomed] 

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
