.class public Lcom/android/quickstep/TaskSystemShortcut$Pin;
.super Lcom/android/quickstep/TaskSystemShortcut;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 214
    const v0, 0x7f020038

    const v1, 0x7f0c0099

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/TaskSystemShortcut;-><init>(II)V

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$Pin;->mHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method static synthetic lambda$getOnClickListener$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    .line 234
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 236
    :try_start_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return-void

    .line 237
    :catch_0
    move-exception p0

    .line 238
    const-string p1, "TaskSystemShortcut"

    const-string p2, "Failed to start screen pinning: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_0
    return-void
.end method

.method public static synthetic lambda$getOnClickListener$1(Lcom/android/quickstep/TaskSystemShortcut$Pin;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V
    .locals 1

    .line 233
    new-instance p3, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$hWIdn00sCsRznD3WJhILU0CGvPQ;

    invoke-direct {p3, p1, p2}, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$hWIdn00sCsRznD3WJhILU0CGvPQ;-><init>(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;)V

    .line 242
    iget-object p1, p0, Lcom/android/quickstep/TaskSystemShortcut$Pin;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p3, p1}, Lcom/android/quickstep/views/TaskView;->launchTask(ZLjava/util/function/Consumer;Landroid/os/Handler;)V

    .line 243
    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 2

    .line 221
    invoke-static {p1}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    .line 222
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 223
    return-object v0

    .line 225
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    return-object v0

    .line 228
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    return-object v0

    .line 232
    :cond_2
    new-instance v0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;-><init>(Lcom/android/quickstep/TaskSystemShortcut$Pin;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;)V

    return-object v0
.end method
