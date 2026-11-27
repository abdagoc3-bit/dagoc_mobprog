# dagoc_mobprog
# Dagoc, Sophia Abegail Y.
# 2024-1002154
# INF 241


Laboratory 0: Discussion

I did it again on my personal computer and encountered multiple challenges while working on this laboratory activity. First, when I was installing Flutter. It showed two issues: it was related to Chrome, and the other was related to licenses, which I already knew how to fix since Sir Robles taught us to just copy the specific line and just type 'y'. Second, when I tried to run it on the emulator, the emulator wasn't functioning properly at first so I had to turn it off and turn it on again. Lastly, I checked my README.md and realized I forgot to include something, so I had to edit it in VS Code and push the changes again.


Laboratory 1: Discussion

In 'newsfeed_card.dart', I made the post image dynamic through the use of 'hasImage'. If it has one, it loads the picture but if not, that part will just be hidden. I also set the owl image as the default in case no image path is given, and keep the placeholder box with an icon and text in case the picture doesn't load properly. Aside from that, I made separate widgets for user's avatar and the love button with the heart count, and used 'flutter_screenutil' so the sizes adjust depending on the screen. 


Laboratory 2: Discussion

The biggest challenge I ran into while working on this laboratory 2 for enhancement was getting a lot of errors when I tried running the app on an emulator. I ran "flutter analyze" to figure out what went wrong, and it turned out that the issue was just because my project folder was saved inside OneDrive. So to fix it, I was required to pause OneDrive syncing before opening the project in VS Code. After that, I ran "flutter analyze" again to make sure everything is good and would work well, and then used "flutter clean" and "flutter pub get" to reset things before finally running the app with "flutter run".
