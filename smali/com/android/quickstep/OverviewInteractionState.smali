.class public Lcom/android/quickstep/OverviewInteractionState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/android/quickstep/OverviewInteractionState; = null

.field private static final MSG_SET_BACK_BUTTON_VISIBLE:I = 0xc9

.field private static final MSG_SET_PROXY:I = 0xc8

.field private static final MSG_SET_SWIPE_UP_ENABLED:I = 0xca

.field private static final SWIPE_UP_SETTING_NAME:Ljava/lang/String; = "swipe_up_to_switch_apps_enabled"

.field private static final TAG:Ljava/lang/String; = "OverviewFlags"


# instance fields
.field private mBackButtonVisible:Z

.field private final mBgHandler:Landroid/os/Handler;

.field private mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mOnSwipeUpSettingChangedListener:Ljava/lang/Runnable;

.field private mSwipeUpEnabled:Z

.field private final mSwipeUpSettingObserver:Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mBackButtonVisible:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mSwipeUpEnabled:Z

    .line 91
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$OverviewInteractionState$j9cvcxLwTdHZmfJdn7vbeqVDrmE;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$OverviewInteractionState$j9cvcxLwTdHZmfJdn7vbeqVDrmE;-><init>(Lcom/android/quickstep/OverviewInteractionState;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mUiHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/-$$Lambda$OverviewInteractionState$lUCjlXPvcc5dI6thv7Aq9QPgFjM;

    invoke-direct {v2, p0}, Lcom/android/quickstep/-$$Lambda$OverviewInteractionState$lUCjlXPvcc5dI6thv7Aq9QPgFjM;-><init>(Lcom/android/quickstep/OverviewInteractionState;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mBgHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;

    iget-object v1, p0, Lcom/android/quickstep/OverviewInteractionState;->mUiHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;-><init>(Lcom/android/quickstep/OverviewInteractionState;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mSwipeUpSettingObserver:Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;

    .line 96
    iget-object p1, p0, Lcom/android/quickstep/OverviewInteractionState;->mSwipeUpSettingObserver:Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewInteractionState$SwipeUpGestureEnabledSettingObserver;->register()V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/android/quickstep/OverviewInteractionState;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/quickstep/OverviewInteractionState;->mSwipeUpEnabled:Z

    return p1
.end method

.method private applyFlags()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mSwipeUpEnabled:Z

    if-eqz v0, :cond_2

    .line 149
    iget-boolean v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mBackButtonVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x7

    .line 154
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/OverviewInteractionState;->mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {v1, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setInteractionState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "OverviewFlags"

    const-string v2, "Unable to update overview interaction flags"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/quickstep/OverviewInteractionState;
    .locals 2

    .line 58
    sget-object v0, Lcom/android/quickstep/OverviewInteractionState;->INSTANCE:Lcom/android/quickstep/OverviewInteractionState;

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 60
    new-instance v0, Lcom/android/quickstep/OverviewInteractionState;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/quickstep/OverviewInteractionState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/quickstep/OverviewInteractionState;->INSTANCE:Lcom/android/quickstep/OverviewInteractionState;

    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/quickstep/-$$Lambda$OverviewInteractionState$QjvJRsHSD02woBsyrz783sSx2jY;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$OverviewInteractionState$QjvJRsHSD02woBsyrz783sSx2jY;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/OverviewInteractionState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/quickstep/OverviewInteractionState;->INSTANCE:Lcom/android/quickstep/OverviewInteractionState;

    return-object p0
.end method

.method private handleBgMessage(Landroid/os/Message;)Z
    .locals 3

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/quickstep/OverviewInteractionState;->mSwipeUpEnabled:Z

    .line 128
    iget-object p1, p0, Lcom/android/quickstep/OverviewInteractionState;->mOnSwipeUpSettingChangedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/android/quickstep/OverviewInteractionState;->mOnSwipeUpSettingChangedListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 124
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/quickstep/OverviewInteractionState;->mBackButtonVisible:Z

    .line 125
    goto :goto_0

    .line 121
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p1, p0, Lcom/android/quickstep/OverviewInteractionState;->mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 122
    nop

    .line 133
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/OverviewInteractionState;->applyFlags()V

    .line 134
    return v2

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUiMessage(Landroid/os/Message;)Z
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mBgHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 115
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/android/quickstep/OverviewInteractionState;
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/android/quickstep/OverviewInteractionState;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/OverviewInteractionState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$j9cvcxLwTdHZmfJdn7vbeqVDrmE(Lcom/android/quickstep/OverviewInteractionState;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewInteractionState;->handleUiMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$lUCjlXPvcc5dI6thv7Aq9QPgFjM(Lcom/android/quickstep/OverviewInteractionState;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewInteractionState;->handleBgMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isSwipeUpGestureEnabled()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mSwipeUpEnabled:Z

    return v0
.end method

.method public setBackButtonVisible(Z)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void
.end method

.method public setOnSwipeUpSettingChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/quickstep/OverviewInteractionState;->mOnSwipeUpSettingChangedListener:Ljava/lang/Runnable;

    .line 139
    return-void
.end method

.method public setSystemUiProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/quickstep/OverviewInteractionState;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method
