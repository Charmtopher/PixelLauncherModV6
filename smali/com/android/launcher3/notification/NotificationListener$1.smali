.class Lcom/android/launcher3/notification/NotificationListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 94
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-virtual {v1}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/notification/NotificationListener;->access$200(Lcom/android/launcher3/notification/NotificationListener;[Landroid/service/notification/StatusBarNotification;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v0, "NotificationListener"

    const-string v1, "SecurityException: failed to fetch notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :goto_0
    goto :goto_1

    .line 103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationListener;->access$000(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->access$000(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 91
    goto :goto_2

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->access$000(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 88
    nop

    .line 109
    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
