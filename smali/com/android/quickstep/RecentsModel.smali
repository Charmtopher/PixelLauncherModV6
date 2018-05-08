.class public Lcom/android/quickstep/RecentsModel;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/android/quickstep/RecentsModel;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAssistDataListeners:Ljava/util/ArrayList;

.field private final mCachedAssistData:Landroid/util/SparseArray;

.field private mClearAssistCacheOnStackChange:Z

.field private final mContext:Landroid/content/Context;

.field private mLastLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

.field private mLastLoadPlanId:I

.field private final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private final mPreloadTasksInBackground:Z

.field private final mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

.field private mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mTaskChangeId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mCachedAssistData:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mAssistDataListeners:Ljava/util/ArrayList;

    .line 87
    iput-boolean v1, p0, Lcom/android/quickstep/RecentsModel;->mClearAssistCacheOnStackChange:Z

    .line 92
    iput-object p1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    .line 94
    const-string v0, "activity"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 96
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsModel;->mPreloadTasksInBackground:Z

    .line 97
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    new-instance v8, Lcom/android/quickstep/RecentsModel$1;

    iget-object v4, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0010

    .line 101
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v2, 0x7f0d0011

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/RecentsModel$1;-><init>(Lcom/android/quickstep/RecentsModel;Landroid/content/Context;III)V

    iput-object v8, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 114
    iput v1, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    .line 115
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/RecentsModel;->loadTasks(ILjava/util/function/Consumer;)I

    .line 116
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/quickstep/RecentsModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 117
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;
    .locals 2

    .line 61
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/quickstep/RecentsModel;

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 63
    new-instance v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsModel;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/quickstep/RecentsModel;

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/quickstep/-$$Lambda$RecentsModel$rpZwGbzmm_8iDmpR9nLZpbXBWE4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/-$$Lambda$RecentsModel$rpZwGbzmm_8iDmpR9nLZpbXBWE4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/quickstep/RecentsModel;

    return-object p0
.end method

.method static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$loadTasks$1(Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 0

    .line 137
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$loadTasks$2(Lcom/android/quickstep/RecentsModel;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;ILjava/util/function/Consumer;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/quickstep/RecentsModel;->mLastLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 151
    iput p2, p0, Lcom/android/quickstep/RecentsModel;->mLastLoadPlanId:I

    .line 153
    if-eqz p3, :cond_0

    .line 154
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static synthetic lambda$loadTasks$3(Lcom/android/quickstep/RecentsModel;IILjava/util/function/Consumer;)V
    .locals 4

    .line 144
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    .line 147
    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;II)V

    .line 149
    iget-object p1, p0, Lcom/android/quickstep/RecentsModel;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/quickstep/-$$Lambda$RecentsModel$eCIpmjyPaNRHj2iYjydHcwF4Xp8;-><init>(Lcom/android/quickstep/RecentsModel;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;ILjava/util/function/Consumer;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public static synthetic lambda$preloadAssistData$4(Lcom/android/quickstep/RecentsModel;ILandroid/os/Bundle;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mCachedAssistData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsModel;->mClearAssistCacheOnStackChange:Z

    .line 245
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mAssistDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    :goto_0
    if-ge p2, v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mAssistDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel$AssistDataListener;

    invoke-interface {v1, p1}, Lcom/android/quickstep/RecentsModel$AssistDataListener;->onAssistDataReceived(I)V

    .line 246
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public addAssistDataListener(Lcom/android/quickstep/RecentsModel$AssistDataListener;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mAssistDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method public getAssistData(I)Landroid/os/Bundle;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mCachedAssistData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1
.end method

.method public getLastLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mLastLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    return-object v0
.end method

.method public getRecentsTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v0
.end method

.method public isLoadPlanValid(I)Z
    .locals 1

    .line 209
    iget v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadTasks(ILjava/util/function/Consumer;)I
    .locals 3

    .line 131
    iget v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    .line 134
    iget v1, p0, Lcom/android/quickstep/RecentsModel;->mLastLoadPlanId:I

    iget v2, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    if-ne v1, v2, :cond_1

    .line 135
    if-eqz p2, :cond_0

    .line 136
    iget-object p1, p0, Lcom/android/quickstep/RecentsModel;->mLastLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 137
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v2, Lcom/android/quickstep/-$$Lambda$RecentsModel$rZAN1-eRHSYycmOWL-UzK9dzJ1Q;

    invoke-direct {v2, p2, p1}, Lcom/android/quickstep/-$$Lambda$RecentsModel$rZAN1-eRHSYycmOWL-UzK9dzJ1Q;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return v0

    .line 142
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;-><init>(Lcom/android/quickstep/RecentsModel;IILjava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 158
    return v0
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 163
    iget p1, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    .line 164
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    .line 168
    iget v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    .line 169
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;)V

    .line 226
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setVisible(Z)V

    .line 227
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 2

    .line 173
    iget v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskChangeId:I

    .line 175
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsModel;->mClearAssistCacheOnStackChange:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mCachedAssistData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void

    .line 179
    :cond_0
    iput-boolean v1, p0, Lcom/android/quickstep/RecentsModel;->mClearAssistCacheOnStackChange:Z

    .line 181
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 6

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 186
    iget-boolean v1, p0, Lcom/android/quickstep/RecentsModel;->mPreloadTasksInBackground:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/RecentsModel;->checkCurrentUserId(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 194
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v3, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 196
    const/4 v4, -0x1

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iput v1, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 197
    const/4 v1, 0x2

    iput v1, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 198
    iput v1, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 200
    iput-boolean v1, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 201
    iput-boolean v1, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 202
    new-instance v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;-><init>()V

    .line 203
    iget-object v5, p0, Lcom/android/quickstep/RecentsModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    .line 204
    iget-object v5, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v2, v1, v5, v4, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;II)V

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 206
    return-void

    .line 188
    :cond_2
    :goto_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 230
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setVisible(Z)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 235
    return-void
.end method

.method public preloadAssistData(ILandroid/os/Bundle;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;-><init>(Lcom/android/quickstep/RecentsModel;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method public removeAssistDataListener(Lcom/android/quickstep/RecentsModel$AssistDataListener;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mAssistDataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public setSystemUiProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/quickstep/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 218
    return-void
.end method
