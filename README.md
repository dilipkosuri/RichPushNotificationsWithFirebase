# RichPushNotificationsWithFirebase
Push notifications using Swift

This project contains the following configuration.

1. Firebase integration in the application using swift package manager - the following was performed.

Adding the Package: 
Now, you’ll use Swift Package Manager to add the Firebase dependency to your project. 
In Xcode, select File ▸ Swift Packages ▸ Add Package Dependency…. 
In the Choose Package Repository pop-up, enter https://github.com/firebase/firebase-ios-sdk.git.

2. Dependency for the application with respect to the service extension is added with the help of Swift package manager. The alternate option is via using cocoapods

The following are the prerequisites in completing this flow:

1. Firebase account (google user account)
2. Apple developer account ( for creation of bundle identifier, app id and team id) and also for creation of ** APNS key 
3. Creation of an app in Firebase. It requires APNS key id, team id and app id (bundle identifier).


Useful tip:

*** NotificationServiceExtension can be intercepted via xcode debugger by attaching the PID debug flow to the service extension target rather than the main target.


Useful articles:
https://www.raywenderlich.com/8277640-push-notifications-tutorial-for-ios-rich-push-notifications
https://www.raywenderlich.com/11395893-push-notifications-tutorial-getting-started
https://www.raywenderlich.com/20201639-firebase-cloud-messaging-for-ios-push-notifications
https://github.com/FirebaseExtended/flutterfire/issues/4133
https://stackoverflow.com/questions/57446642/how-to-add-notification-service-extension-for-firebase/57844206
https://firebase.google.com/docs/cloud-messaging/ios/send-image
https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/ModifyingNotifications.html
https://stackoverflow.com/questions/38343645/firebasemessaging-module-not-found-using-cocoapods-ios
https://stackoverflow.com/questions/38343645/firebasemessaging-module-not-found-using-cocoapods-ios
https://developer.apple.com/documentation/usernotifications/unnotificationserviceextension/1648229-didreceive
https://stackoverflow.com/questions/48217757/not-receiving-push-notifications-from-firebase
https://developer.apple.com/forums/thread/674620
https://stackoverflow.com/questions/39663315/ios-10-dont-call-notification-service-extension
https://firebase.googleblog.com/2021/10/push-notification-delivery-insights.html
https://stackoverflow.com/questions/39663903/ios10-unnotificationserviceextension-not-called
https://github.com/firebase/quickstart-ios/issues/70#issuecomment-280182095
https://stackoverflow.com/questions/39663903/ios10-unnotificationserviceextension-not-called
https://github.com/OneSignal/OneSignal-Flutter-SDK/issues/53
https://www.strv.com/blog/app-extensions-introduction-to-notification-service-engineering
