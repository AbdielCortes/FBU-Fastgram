# Project 3 - *Fastgram*

**Fastgram** is a basic Instagram app to post and view photos using [Parse](https://parseplatform.org/).

Time spent: **15** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User sees app icon in home screen and styled launch screen.
- [x] User can sign up to create a new account using Parse authentication.
- [x] User can log in and log out of their account.
- [x] The current signed in user is persisted across app restarts.
- [x] User can take a photo, add a caption, and post it.
- [x] User can view the last 20 posts.
- [x] User can pull to refresh the last 20 posts.
- [x] User can tap a post to view post details, including timestamp and caption.

The following **stretch** features are implemented:

- [ ] Run your app on your phone and use the camera to take the photo.
- [ ] Style the login page to look like the real Instagram login page.
- [ ] Style the feed to look like the real Instagram feed.
- [ ] User can use a tab bar to switch between all "Instagram" posts and posts published only by the user. AKA, tabs for Home Feed and Profile
- [ ] User can load more posts once he or she reaches the bottom of the feed using infinite scrolling.
- [x] Show the username and creation time for each post
- [x] After the user submits a new post, show a progress HUD while the post is being uploaded to Parse
- [ ] User Profiles:
    - Allow the logged in user to add a profile photo
    - Display the profile photo with each post
    - Tapping on a post's username or profile photo goes to that user's profile page
- [ ] User can comment on a post and see all comments for each post in the post details screen.
- [ ] User can like a post and see number of likes for each post in the post details screen.
- [ ] Implement a custom camera view


The following **additional** features are implemented:
None at the moment.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

Sign in and Log out

<img src='http://g.recordit.co/91vbAVebLG.gif' width='' alt='Sign in and Log out' />

Login

<img src='http://g.recordit.co/Tx1Q1wJZES.gif' width='' alt='Login' />

Home Feed

<img src='http://g.recordit.co/Or8M2QU1OJ.gif' width='' alt='Home Feed' />

Posting

<img src='http://g.recordit.co/8zBsZ5GrzW.gif' width='' alt='Posting' />

GIFs created with [Recordit](https://recordit.co/).

## Notes

Setting up the Parse database can be quite challenging, but one your past that step, things go pretty smoothly.

## Credits

- [Parse](https://parseplatform.org/) - open source backend
- [Parse UI](https://github.com/parse-community/Parse-SDK-iOS-OSX) - uses for easily extracting and displaying images from Parse
- [DateTools](https://github.com/MatthewYork/DateTools) - easy to use date formmating tools that can be used with NSDate.
- [MBProgressHUD](https://github.com/jdg/MBProgressHUD) - shows custom loading pop ups

## License

    Copyright 2000 Abdiel Cortes

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
