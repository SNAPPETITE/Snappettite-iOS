# Snappettite iOS Application
iOS Application for Snappettite.
# Installation instructions 
1. Please install [Cocoapods](https://cocoapods.org).
2. Then run

   ```
   $ pod install
   ```

3. This should create a xcworkspace file. Please open that instead of the normal xcodeproj file.

   ```
   $ open Snappettite-iOS.xcworkspace
   ```

4. Start developing!

# Quick "Gotchas"
1. If another person adds a new package to the Podfile, you will need to run

   ```
   $ pod install
   ```

   To install the added library.
2. If you would like to update your libraries to a newer version run

   ```
   $ pod update
   ```

3. Run these commands in the ```/path/to/Snappettite-iOS/``` directory.
4. When running these commands, don't type the ```$``` symbol. So you should type ```pod install``` instead of ```$ pod install```. (The ```$``` is there to indicate the command prompt.)
5. The .storyboard files are very hard to merge with. Please be careful when working on those, you may want to consider creating [multiple storyboards](http://www.newventuresoftware.com/blog/organizing-xcode-projects-using-multiple-storyboards/) for a large application.
6. Make sure you use asset bundling. When multiple people are working within the same bundle and have merge issues, really really bad things happen.

# Git Issues?
If you have a merge conflict or some git trouble, please email one of the CA's immediately! We don't want progress to be hindered because GitHub got in the way.
