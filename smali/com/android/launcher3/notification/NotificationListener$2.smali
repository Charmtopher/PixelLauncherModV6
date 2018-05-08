.class Lcom/android/launcher3/notification/NotificationListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$2;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationFullRefresh(Ljava/util/List;)V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 128
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    .line 129
    goto :goto_0

    .line 118
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;

    .line 120
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->notificationKey:Lcom/android/launcher3/notification/NotificationKeyData;

    iget-boolean p1, p1, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->shouldBeFilteredOut:Z

    invoke-interface {v0, v1, v2, p1}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;Z)V

    .line 122
    nop

    .line 138
    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
