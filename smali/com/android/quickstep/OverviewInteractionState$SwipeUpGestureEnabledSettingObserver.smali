.class Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/quickstep/OverviewInteractionState;


# direct methods
.method constructor <init>(Lcom/android/quickstep/OverviewInteractionState;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->this$0:Lcom/android/quickstep/OverviewInteractionState;

    .line 165
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 166
    iput-object p2, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->mHandler:Landroid/os/Handler;

    .line 167
    iput-object p3, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->mResolver:Landroid/content/ContentResolver;

    .line 168
    return-void
.end method

.method private getValue()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "swipe_up_to_switch_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 178
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 179
    iget-object p1, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xca

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object p1, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->getValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 181
    return-void
.end method

.method public register()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "swipe_up_to_switch_apps_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->this$0:Lcom/android/quickstep/OverviewInteractionState;

    invoke-direct {p0}, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->getValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quickstep/OverviewInteractionState;->access$002(Lcom/android/quickstep/OverviewInteractionState;Z)Z

    .line 174
    return-void
.end method
