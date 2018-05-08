.class public Lcom/android/systemui/shared/system/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE_SYSTEM_WINDOWS_REASON_RECENTS:Ljava/lang/String; = "recentapps"

.field private static final TAG:Ljava/lang/String; = "ActivityManagerWrapper"

.field private static final sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;


# instance fields
.field private final mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    .line 85
    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 86
    return-void
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 194
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 1

    .line 89
    sget-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public cancelRecentsAnimation(Z)V
    .locals 2

    .line 270
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->cancelRecentsAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-void

    .line 271
    :catch_0
    move-exception p1

    .line 272
    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed to cancel recents animation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    return-void
.end method

.method public cancelWindowTransition(I)V
    .locals 4

    .line 407
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->cancelTaskWindowTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const-string v1, "ActivityManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to cancel window transition for task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    return-void
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$6;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 384
    return-void
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 1

    .line 178
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 181
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 183
    :goto_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    return-object p2

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    return-object p1
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 98
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 100
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 2

    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-object p1

    .line 134
    :catch_0
    move-exception p1

    .line 135
    const-string p2, "ActivityManagerWrapper"

    const-string v0, "Failed to get recent tasks"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 116
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 122
    :catch_0
    move-exception p1

    .line 123
    return-object v0
.end method

.method public getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 1

    .line 144
    nop

    .line 146
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    const-string p2, "ActivityManagerWrapper"

    const-string v0, "Failed to retrieve task snapshot"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 151
    new-instance p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p2, p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V

    return-object p2

    .line 153
    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    return-object p1
.end method

.method public isLockToAppActive()Z
    .locals 2

    .line 437
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    return v0
.end method

.method public isScreenPinningActive()Z
    .locals 3

    .line 418
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    return v0
.end method

.method public isScreenPinningEnabled()Z
    .locals 3

    .line 428
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    const-string v1, "lock_to_app_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->addListener(Landroid/app/IActivityManager;Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 357
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeTask(I)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$7;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 400
    return-void
.end method

.method public showVoiceSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .locals 2

    .line 448
    const-string v0, "voiceinteraction"

    .line 449
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    .line 450
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    return v1

    .line 454
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 455
    :catch_0
    move-exception p1

    .line 456
    return v1
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 1

    .line 342
    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 343
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 p1, 0x1

    return p1

    .line 345
    :catch_0
    move-exception p1

    .line 346
    const/4 p1, 0x0

    return p1
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 6

    .line 296
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 299
    if-nez p2, :cond_0

    .line 300
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 302
    :cond_0
    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 311
    :cond_1
    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 303
    :cond_2
    if-nez p3, :cond_3

    if-eqz p4, :cond_1

    .line 305
    :cond_3
    if-nez p2, :cond_4

    .line 306
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 308
    :cond_4
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 309
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    goto :goto_0

    .line 311
    :goto_1
    nop

    .line 315
    iget-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    new-instance p3, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-virtual {p2, p3}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 335
    return-void
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 7

    .line 283
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V

    .line 285
    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/system/AssistDataReceiver;Lcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 2

    .line 207
    nop

    .line 208
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 209
    :try_start_0
    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/AssistDataReceiver;)V

    goto :goto_0

    .line 253
    :catch_0
    move-exception p1

    goto :goto_1

    .line 218
    :cond_0
    move-object v1, v0

    .line 219
    :goto_0
    if-eqz p3, :cond_1

    .line 220
    new-instance v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V

    .line 244
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2, p1, v1, v0}, Landroid/app/IActivityManager;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V

    .line 245
    if-eqz p4, :cond_2

    .line 246
    new-instance p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$3;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$3;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Ljava/util/function/Consumer;)V

    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_2
    return-void

    .line 253
    :goto_1
    nop

    .line 254
    if-eqz p4, :cond_3

    .line 255
    new-instance p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$4;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$4;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Ljava/util/function/Consumer;)V

    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_3
    return-void
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->removeListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 367
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
