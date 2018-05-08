.class Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAppsToAdd:Ljava/util/Stack;

.field private final mAppsToUpdate:Ljava/util/Stack;

.field private final mPkgInfoMap:Ljava/util/HashMap;

.field private final mUpdatedPackages:Ljava/util/HashSet;

.field private final mUserSerial:J

.field final synthetic this$0:Lcom/android/launcher3/IconCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    .line 739
    iput-wide p2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 740
    iput-object p4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    .line 741
    iput-object p5, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    .line 742
    iput-object p6, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    .line 743
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 749
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 751
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-wide v4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V

    .line 752
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    invoke-static {v0}, Lcom/android/launcher3/IconCache;->access$000(Lcom/android/launcher3/IconCache;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v2, v2, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-wide v3, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 757
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    .line 756
    new-instance v3, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 762
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 763
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 764
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 767
    if-eqz v3, :cond_2

    .line 768
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-wide v4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 772
    invoke-virtual {p0}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 775
    :cond_3
    return-void
.end method

.method public final scheduleNext()V
    .locals 6

    .line 778
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 779
    return-void
.end method
