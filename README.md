# GeoQ iOS SDK

The GeoQ SDK framework allows you to install the GeoQ framework on iOS projects, enabling the use of GeoQ inside your app.
To enable GeoQ, contact GeoQ team to get your APIKEY to personalize your installation

---

## iOS SDK installation

In your ApplicationDelegate.swift file: 

import GEOQSDK

GeoQManager.sharedManager()?.registerDevice(appKey: "YOURAPIKEY", andPlatform: "https://services.geoq.es", trackingActive: true, completion: { (identifier) in
        })
        

## Legal Permissions

To ask for granted permissions to GeoQ, use the methods:
GeoQManager.sharedManager()?.getUserPermission("PERMISSION", completion: { (permission) in  
})
            
It returns the associated value to the permission. Permissions available are:
- permissionTracking: indicates if user has granted GeoQ location tracking.
- permissionNotifications: indicates if user has granted GeoQ to send push notifications.
- permissionRevoke: indicates if user has revoked access to GeoQ.

Values returned by GeoQ can be (always string types):
- “true”: user has granted permission
- “false”: user has denied permission
- “no-response”: user hasn’t answered to permission grant
- “”: this permission hasn’t been activated in GeoQ.

To modify permissions
GeoQManager.sharedManager()?.setUserPermission(permission: "PERMISSION", value: true, completion: { (result) in
})
            
## Push Notifications

To send push notifications token to GeoQ:

func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        GeoQManager.sharedManager()?.setDataNotificationsToken(deviceToken: deviceToken, completion: { (result) in
        })
}
    
To handle GeoQ notifications (others won't be handled by GeoQ):

func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        guard let arrUserInfo = notification.request.content.userInfo as? [String: AnyObject] else { return }
        GeoQManager.sharedManager()?.handlePushNotification(userInfo: arrUserInfo)
        // custom code to handle push while app is in the foreground
        }
    
func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        guard let arrUserInfo = response.notification.request.content.userInfo as? [String: AnyObject] else { return }
        GeoQManager.sharedManager()?.handlePushNotification(userInfo: arrUserInfo)
        }

---

[See our docs on the GeoQ website](http://services.geoq.es/content/documentation/geoq/api-es/download.html) for a detailed step-by-step guide on installation.
