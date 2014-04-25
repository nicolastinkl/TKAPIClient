TKAPIClient
===========



Yes, Cocoapods saves you all kinds of time. Let's say you have some internal libraries that you want to keep private, but want to manage and share with your coworkers similar to your open source projects.
Enter Private Cocoapods. All backed by GitHub.
This is pretty straight forward if you've done local cocoapods before.
First off, we need to create our own podspec repository. You can keep this private or public, it is up to you. Even if the podspec repository is public, the source files from each podspec will come from other github repositories, whereby you can manage the appropriate access from there.
I keep a local spec repo outside of the ~/.cocoapods directory for development. Whenever cocoapods syncs from github, it'll pull down everything you need as long as its tagged appropriately. Tagging is an important part when working with cocoapods.
Create a new local cocoapods repository, and push it up to github. You know the routine:
mkdir ~/Documents/Private-Cocoapodstouch README.mdgit initgit add README.mdgit commit -m "initial commit"git remote add origin https://github.com/username/Private-Cocoapods.gitgit push -u origin master
Now, lets add this repo to the cocoapods repo list. This is the magic trick:
pod repo add Private-Cocoapods https://github.com/username/Private-Cocoapods.git
Now your new private podspec repo will be used anytime you do a pod install.
Cocoapods spec repository is an organized file/folder structure. It is important you adhere to the versioning and folder structure so that tagging with git works as intended.  
You will need to become familiar with creating a podspec and updating it with the correct information. For example, the s.source line will need to point to the appropriate private repo.
mkdir /Documents/Private-Cocoapods/PrivateLibrarymkdir PrivateLibrary/0.0.1cd PrivateLibrary/0.0.1pod spec create PrivateLibrary
You'll notice a PrivateLibrary.podspec. You will need to edit this file now.
Tag the private library so cocoapods knows what to do.
cd /path/sourcecode/PrivateLibrary
Add github as a remote if you haven't yet, and make sure your have the right files uploaded.
git remote add origin https://github.com/username/PrivateLibrary.gitgit push -u origin master
Add the tag to match your podspec in spec repo.
git tag -a 0.0.1 -m 'version 0.0.1'git push origin 0.0.1
That should do it. Make sure you have your cocoapods spec repo synced on github and everything should work out great. Have fun.

