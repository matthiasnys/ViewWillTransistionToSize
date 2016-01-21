# ViewWillTransistionToSize
ViewWillTransistionToSize bug

Summary:
the viewWillTransitionToSize is not called on viewcontrollers in a navigationcontroller except the top most one when resizing in splitscreen. The viewWillTransition is called when you go from half to 3/4th of a view. If you go back to half then only the most top (visible) viewcontroller receives the event. Expected behaviour would be that all viewcontrollers in the stack receive that event when a resize is taking place. A potential fix is commented out in the demo project in the file "MyNavigationController". this is by updating the frame of every viewcontrollers view in the stack. If we do this the viewWillTransistionToSize is called on every viewcontroller on every resize.

Steps to Reproduce:
1) Open the App (full screen!)
2) Tap Push
3) Tap push on the red viewcontroller too.
4)  a red viewcontroller with title 2 should be visible.
6) Use a random app (for example Clock) in splitscreen and drag it half
7) Clear the Xcode device log
8) Drag to 3/4 (the red app)
9) the console displays 2 viewwillTransistion one on the controller with title 1 and one on the viewcontroller with title 2
10) Drag back to half/half
11) the console displays only 1 viewwillTransistion on the viewcontroller with title 2 (toplevel viewcontroller)

Expected Results:
This event should be triggered on both viewcontrollers when going in every direction

Actual Results:
A == first size
B == Second size
A -> B -> A => Only triggers viewwillTransistion on the visible viewcontroller because the others view is not updated!

Version:
9.2 (13C75)

Notes:


Configuration:
iPad Pro

Attachments:
'ViewWillTransistionToSize.zip' was successfully uploaded.

https://openradar.appspot.com/radar?id=6163047114604544
