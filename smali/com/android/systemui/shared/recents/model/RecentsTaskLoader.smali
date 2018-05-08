.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final SVELTE_DISABLE_CACHE:I = 0x2

.field public static final SVELTE_DISABLE_LOADING:I = 0x3

.field public static final SVELTE_LIMIT_CACHE:I = 0x1

.field public static final SVELTE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecentsTaskLoader"


# instance fields
.field private final mActivityInfoCache:Landroid/util/LruCache;

.field private final mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

.field private mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

.field private mDefaultTaskBarBackgroundColor:I

.field private mDefaultTaskViewBackgroundColor:I

.field private final mHighResThumbnailLoader:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

.field private final mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

.field private final mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

.field private final mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

.field private final mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

.field private final mMaxIconCacheSize:I

.field private final mMaxThumbnailCacheSize:I

.field private mNumVisibleTasksLoaded:I

.field private mSvelteLevel:I

.field private final mTempCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

.field private final mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    .line 75
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    .line 85
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 96
    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 97
    iput p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 98
    iput p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    .line 101
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result p2

    .line 102
    new-instance p3, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p4

    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-direct {p3, p4, v0, v1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/os/Looper;Z)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 104
    new-instance p3, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-direct {p3}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    .line 105
    new-instance p3, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {p3, p4, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 106
    new-instance p3, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {p3, p2, p4}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 107
    new-instance p3, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {p3, p2, p4}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 109
    new-instance p3, Landroid/util/LruCache;

    invoke-direct {p3, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 111
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createNewIconLoader(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)Lcom/android/systemui/shared/recents/model/IconLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    .line 112
    new-instance p1, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/shared/recents/model/-$$Lambda$vKccogRiJjM5FBa4zs196J3w_Fs;

    invoke-direct {v0, p4}, Lcom/android/systemui/shared/recents/model/-$$Lambda$vKccogRiJjM5FBa4zs196J3w_Fs;-><init>(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;-><init>(Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/shared/recents/model/IconLoader;Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$OnIdleChangedListener;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    return-object p0
.end method

.method private stopLoader()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->stop()V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 404
    return-void
.end method


# virtual methods
.method public createNewIconLoader(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)Lcom/android/systemui/shared/recents/model/IconLoader;
    .locals 1

    .line 118
    new-instance v0, Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)V

    return-object v0
.end method

.method public deleteTaskData(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 202
    if-eqz p2, :cond_0

    .line 203
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_0
    return-void
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    monitor-enter p0

    .line 407
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RecentsTaskLoader"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Icon Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 412
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Thumbnail Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 414
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Temp Thumbnail Cache"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1

    .line 377
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    return p1

    .line 380
    :cond_0
    iget p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return p1
.end method

.method getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1

    .line 367
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p1

    return p1

    .line 370
    :cond_0
    iget p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    return p1
.end method

.method getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 2

    .line 268
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 273
    if-eqz p2, :cond_1

    .line 274
    return-object p2

    .line 277
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 278
    if-eqz p2, :cond_2

    .line 279
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object p2

    .line 281
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 282
    return-object p2

    .line 286
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_2

    .line 303
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v0

    .line 305
    if-nez p2, :cond_1

    .line 311
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 313
    :cond_1
    return-object v0

    .line 317
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method declared-synchronized getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 2

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    if-eqz v0, :cond_0

    .line 335
    monitor-exit p0

    return-object v0

    .line 338
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 339
    if-eqz v0, :cond_1

    .line 340
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    monitor-exit p0

    return-object v0

    .line 344
    :cond_1
    if-eqz p2, :cond_3

    .line 345
    :try_start_2
    iget p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    .line 347
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p2

    .line 349
    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 350
    if-eqz p3, :cond_2

    .line 351
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :cond_2
    monitor-exit p0

    return-object p2

    .line 359
    :cond_3
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 332
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mHighResThumbnailLoader:Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    return-object v0
.end method

.method public getIconCacheSize()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 185
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 187
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    .line 188
    return-void
.end method

.method public declared-synchronized loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2

    monitor-enter p0

    .line 162
    if-eqz p2, :cond_2

    .line 165
    :try_start_0
    iget-boolean v0, p2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->copyEntries(Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->evictAll()V

    .line 173
    :cond_0
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    .line 174
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mTempCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->evictAll()V

    .line 175
    iget-boolean p1, p2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez p1, :cond_1

    .line 176
    iget p1, p2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_1
    monitor-exit p0

    return-void

    .line 163
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Requires load options"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 254
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method public declared-synchronized onTrimMemory(I)V
    .locals 2

    monitor-enter p0

    .line 212
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 215
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 216
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    .line 237
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->evictAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 230
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 231
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 230
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/LruCache;->trimToSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 222
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 223
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 224
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 223
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/LruCache;->trimToSize(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;II)V
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    const-string v0, "preloadPlan"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;-><init>()V

    invoke-virtual {p1, v0, p0, p2, p3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDefaultColors(II)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    .line 127
    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    .line 128
    return-void
.end method

.method public startLoader(Landroid/content/Context;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    .line 396
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method
