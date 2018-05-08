.class Lcom/google/android/apps/nexuslauncher/search/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final Ex:Ljava/util/concurrent/FutureTask;

.field private mAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mQuery:Ljava/lang/String;

    .line 212
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/d;->Ex:Ljava/util/concurrent/FutureTask;

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/search/d;)Ljava/util/concurrent/FutureTask;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->Ex:Ljava/util/concurrent/FutureTask;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/d;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/List;
    .locals 8

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "AppSearchProvider"

    const-string v1, "Workspace not loaded, loading now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v7, Lcom/android/launcher3/model/LoaderResults;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/LauncherModel;->startLoaderForResults(Lcom/android/launcher3/model/LoaderResults;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    const-string v0, "AppSearchProvider"

    const-string v1, "Loading workspace failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 241
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 243
    new-instance v2, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;-><init>()V

    .line 244
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 245
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mQuery:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-boolean v4, v3, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    if-eqz v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v4, v4, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 252
    :cond_2
    goto :goto_0

    .line 253
    :cond_3
    new-instance v1, Lcom/android/launcher3/allapps/AppInfoComparator;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    return-object v0
.end method

.method public final init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 219
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 220
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 221
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 222
    return-void
.end method

.method public run()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->Ex:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 227
    return-void
.end method
