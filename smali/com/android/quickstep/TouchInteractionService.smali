.class public Lcom/android/quickstep/TouchInteractionService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final EDGE_NAV_BAR:I = 0x100

.field private static final TAG:Ljava/lang/String; = "TouchInteractionService"

.field private static sConnected:Z

.field private static final sMotionEventNames:Landroid/util/SparseArray;

.field private static sRemoteUiThread:Landroid/os/HandlerThread;


# instance fields
.field private mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mBackgroundThreadChoreographer:Landroid/view/Choreographer;

.field private mEventQueue:Lcom/android/quickstep/MotionEventQueue;

.field private mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mMainThreadChoreographer:Landroid/view/Choreographer;

.field private mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private final mMyBinder:Landroid/os/IBinder;

.field private final mNoOpTouchConsumer:Lcom/android/quickstep/TouchConsumer;

.field private mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

.field private mOverviewInteractionState:Lcom/android/quickstep/OverviewInteractionState;

.field private mRecentsModel:Lcom/android/quickstep/RecentsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 65
    sput-object v0, Lcom/android/quickstep/TouchInteractionService;->sMotionEventNames:Landroid/util/SparseArray;

    const-string v2, "ACTION_DOWN"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/android/quickstep/TouchInteractionService;->sMotionEventNames:Landroid/util/SparseArray;

    const-string v2, "ACTION_UP"

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/android/quickstep/TouchInteractionService;->sMotionEventNames:Landroid/util/SparseArray;

    const-string v2, "ACTION_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sput-boolean v3, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Lcom/android/quickstep/TouchInteractionService$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TouchInteractionService$1;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    .line 155
    sget-object v0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;->INSTANCE:Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mNoOpTouchConsumer:Lcom/android/quickstep/TouchConsumer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/TouchInteractionService;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->setupTouchConsumer(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/MotionEventQueue;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    return-object p0
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/quickstep/TouchInteractionService;->sMotionEventNames:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/quickstep/TouchInteractionService;Lcom/android/systemui/shared/recents/ISystemUiProxy;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsModel;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewInteractionState;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewInteractionState:Lcom/android/quickstep/OverviewInteractionState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    return-object p0
.end method

.method private getCurrentTouchConsumer(IZLandroid/view/VelocityTracker;)Lcom/android/quickstep/TouchConsumer;
    .locals 12

    .line 221
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 223
    if-nez v4, :cond_0

    if-nez p2, :cond_0

    .line 224
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mNoOpTouchConsumer:Lcom/android/quickstep/TouchConsumer;

    return-object p1

    .line 225
    :cond_0
    if-nez p2, :cond_3

    iget-object p2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v0, v0, Lcom/android/quickstep/OverviewCommandHelper;->overviewComponent:Landroid/content/ComponentName;

    .line 226
    invoke-virtual {p2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    if-nez p3, :cond_2

    .line 230
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p3

    .line 232
    :cond_2
    move-object v11, p3

    new-instance p2, Lcom/android/quickstep/OtherActivityTouchConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    iget-object p3, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v6, p3, Lcom/android/quickstep/OverviewCommandHelper;->overviewIntent:Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    .line 234
    invoke-virtual {p3}, Lcom/android/quickstep/OverviewCommandHelper;->getActivityControlHelper()Lcom/android/quickstep/ActivityControlHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    iget-object v9, p0, Lcom/android/quickstep/TouchInteractionService;->mBackgroundThreadChoreographer:Landroid/view/Choreographer;

    move-object v2, p2

    move-object v3, p0

    move v10, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/quickstep/OtherActivityTouchConsumer;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/quickstep/RecentsModel;Landroid/content/Intent;Lcom/android/quickstep/ActivityControlHelper;Lcom/android/launcher3/MainThreadExecutor;Landroid/view/Choreographer;ILandroid/view/VelocityTracker;)V

    .line 232
    return-object p2

    .line 227
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getOverviewConsumer()Lcom/android/quickstep/TouchConsumer;

    move-result-object p1

    return-object p1
.end method

.method private getOverviewConsumer()Lcom/android/quickstep/TouchConsumer;
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewCommandHelper;->getActivityControlHelper()Lcom/android/quickstep/ActivityControlHelper;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Lcom/android/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object v1

    .line 242
    if-nez v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mNoOpTouchConsumer:Lcom/android/quickstep/TouchConsumer;

    return-object v0

    .line 245
    :cond_0
    new-instance v2, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;

    invoke-direct {v2, v0, v1}, Lcom/android/quickstep/TouchInteractionService$OverviewTouchConsumer;-><init>(Lcom/android/quickstep/ActivityControlHelper;Lcom/android/launcher3/BaseDraggingActivity;)V

    return-object v2
.end method

.method private initBackgroundChoreographer()V
    .locals 2

    .line 378
    sget-object v0, Lcom/android/quickstep/TouchInteractionService;->sRemoteUiThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "remote-ui"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 380
    sput-object v0, Lcom/android/quickstep/TouchInteractionService;->sRemoteUiThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 382
    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/quickstep/TouchInteractionService;->sRemoteUiThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$k7qQihrvDzN2K5DqycNFu9xhre0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$k7qQihrvDzN2K5DqycNFu9xhre0;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public static isConnected()Z
    .locals 1

    .line 160
    sget-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    return v0
.end method

.method public static synthetic lambda$initBackgroundChoreographer$2(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    .line 383
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mBackgroundThreadChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/MotionEvent;)V
    .locals 0

    .line 155
    return-void
.end method

.method public static synthetic lambda$setupTouchConsumer$1(Lcom/android/quickstep/TouchInteractionService;ILcom/android/quickstep/TouchConsumer;Landroid/view/VelocityTracker;)Lcom/android/quickstep/TouchConsumer;
    .locals 0

    .line 210
    nop

    .line 211
    invoke-interface {p2}, Lcom/android/quickstep/TouchConsumer;->forceToLauncherConsumer()Z

    move-result p2

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->getCurrentTouchConsumer(IZLandroid/view/VelocityTracker;)Lcom/android/quickstep/TouchConsumer;

    move-result-object p1

    return-object p1
.end method

.method private setupTouchConsumer(I)V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    invoke-virtual {v0}, Lcom/android/quickstep/MotionEventQueue;->reset()V

    .line 207
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    invoke-virtual {v0}, Lcom/android/quickstep/MotionEventQueue;->getConsumer()Lcom/android/quickstep/TouchConsumer;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lcom/android/quickstep/TouchConsumer;->deferNextEventToMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Lcom/android/quickstep/MotionEventQueue;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mMainThreadChoreographer:Landroid/view/Choreographer;

    new-instance v3, Lcom/android/quickstep/DeferredTouchConsumer;

    new-instance v4, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;-><init>(Lcom/android/quickstep/TouchInteractionService;ILcom/android/quickstep/TouchConsumer;)V

    invoke-direct {v3, v4}, Lcom/android/quickstep/DeferredTouchConsumer;-><init>(Lcom/android/quickstep/DeferredTouchConsumer$DeferredTouchProvider;)V

    invoke-direct {v1, v2, v3}, Lcom/android/quickstep/MotionEventQueue;-><init>(Landroid/view/Choreographer;Lcom/android/quickstep/TouchConsumer;)V

    iput-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    .line 212
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    invoke-virtual {p1}, Lcom/android/quickstep/MotionEventQueue;->deferInit()V

    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/android/quickstep/MotionEventQueue;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mMainThreadChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 215
    invoke-direct {p0, p1, v2, v3}, Lcom/android/quickstep/TouchInteractionService;->getCurrentTouchConsumer(IZLandroid/view/VelocityTracker;)Lcom/android/quickstep/TouchConsumer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/quickstep/MotionEventQueue;-><init>(Landroid/view/Choreographer;Lcom/android/quickstep/TouchConsumer;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    .line 217
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 201
    const-string p1, "TouchInteractionService"

    const-string v0, "Touch service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 176
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 177
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 178
    invoke-static {p0}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    .line 179
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 180
    new-instance v0, Lcom/android/quickstep/OverviewCommandHelper;

    invoke-direct {v0, p0}, Lcom/android/quickstep/OverviewCommandHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    .line 181
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mMainThreadChoreographer:Landroid/view/Choreographer;

    .line 182
    new-instance v0, Lcom/android/quickstep/MotionEventQueue;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mMainThreadChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mNoOpTouchConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/MotionEventQueue;-><init>(Landroid/view/Choreographer;Lcom/android/quickstep/TouchConsumer;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mEventQueue:Lcom/android/quickstep/MotionEventQueue;

    .line 183
    invoke-static {p0}, Lcom/android/quickstep/OverviewInteractionState;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/OverviewInteractionState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewInteractionState:Lcom/android/quickstep/OverviewInteractionState;

    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    .line 189
    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->initBackgroundChoreographer()V

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewCommandHelper;->onDestroy()V

    .line 195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    .line 196
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 197
    return-void
.end method
