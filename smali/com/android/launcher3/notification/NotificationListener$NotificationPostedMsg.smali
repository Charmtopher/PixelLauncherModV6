.class Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final notificationKey:Lcom/android/launcher3/notification/NotificationKeyData;

.field final packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field final shouldBeFilteredOut:Z

.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 237
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-static {p2}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 239
    invoke-static {p2}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->notificationKey:Lcom/android/launcher3/notification/NotificationKeyData;

    .line 240
    invoke-static {p1, p2}, Lcom/android/launcher3/notification/NotificationListener;->access$400(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->shouldBeFilteredOut:Z

    .line 241
    return-void
.end method
