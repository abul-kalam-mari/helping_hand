
Helping Hand is basically a collections of useful code snippets to save your time in development
process. Every project contains these basic code snippets and I was tired of writting it again and
again so I made a repo for everyone to take advantage of it and boost their production.

## Features
-> Event Dialogs: Error, Warning, Success & Info
-> Timestamp formation extension showing from seconds to years: i.e 1m ago | 1day ago
-> Spacing extensions: To add desire spacing both horizontally and vertically


## Getting started

Add this plugin with this command '''flutter pub add helping_hand'''

## Usage

To add horizontal spacing in your widget tree:

```dart
16.width
```
To add vertical spacing in your widget tree:
```dart
16.height
```
To get time elasped with short labels:
```dart
DateTime now=DateTime.now();
now.timeElasped();
```
To get time elasped with full labels:
```dart
DateTime now=DateTime.now();
now.timeElasped(showFullLabels:true);
```
If you want to show Alert dialogs or Snackbar dialogs then here is an example:
```dart
HelpingHand.showError(message:"This is an error",context:context);
```
You can show error, warning, info and success dialog. Here context is your buildContext of widget tree. If you are using Getx then you can have it like this:
```dart
HelpingHand.showError(message:"This is an error",context:Get.context!);
```
## Additional information

Everyone is welcome to include useful code snippets so that we can increase our speed during development. Accepting pull requests on the repo.

Feel free to contact me by paying me a visit on my website:
<a href='https://abulkalam.dev'>abulkalam.dev</a>