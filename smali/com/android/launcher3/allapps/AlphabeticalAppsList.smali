.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field final mAdapterItems:Ljava/util/ArrayList;

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

.field public final mApps:Ljava/util/List;

.field private mCachedSectionNames:Ljava/util/HashMap;

.field private final mFastScrollDistributionMode:I

.field final mFastScrollerSections:Ljava/util/List;

.field final mFilteredApps:Ljava/util/List;

.field private mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

.field private final mIsWork:Z

.field mItemFilter:Lcom/android/launcher3/util/ItemInfoMatcher;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field mNumAppRowsInAdapter:I

.field private final mNumAppsPerRow:I

.field private mSearchResults:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Z)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollDistributionMode:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 156
    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 157
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 158
    new-instance p2, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {p2, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 159
    new-instance p2, Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-direct {p2, p1}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    .line 160
    iput-boolean p3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIsWork:Z

    .line 161
    iget-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    .line 162
    iget-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 163
    return-void
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 437
    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_0
    return-object v0
.end method

.method private refillAdapterItems()V
    .locals 12

    .line 309
    nop

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move v3, v2

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/AppInfo;

    .line 322
    iget-object v8, v6, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 325
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 326
    nop

    .line 327
    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v1, v8}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 328
    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    move-object v5, v1

    move-object v1, v8

    :cond_3
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v4, 0x1

    new-instance v11, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v11}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    iput v7, v11, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput v3, v11, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput-object v8, v11, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    iput-object v6, v11, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    iput v4, v11, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 333
    iget-object v3, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v3, :cond_4

    .line 334
    iput-object v11, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 336
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    nop

    .line 321
    move v3, v9

    move v4, v10

    goto :goto_2

    .line 340
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_7

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    new-instance v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/4 v6, 0x4

    iput v6, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput v3, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    new-instance v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    iput v1, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput v3, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v4, 0x1

    new-instance v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/16 v6, 0x8

    iput v6, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput v4, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_7
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    const/4 v4, 0x1

    if-eqz v0, :cond_d

    .line 353
    nop

    .line 354
    nop

    .line 355
    const/4 v0, -0x1

    .line 356
    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    move v8, v6

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 357
    iput v2, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 358
    iget v10, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v10, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 359
    nop

    .line 356
    move v6, v2

    goto :goto_4

    .line 360
    :cond_8
    iget v10, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v10, v7}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 361
    iget v10, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    rem-int v10, v6, v10

    if-nez v10, :cond_9

    .line 362
    nop

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 365
    move v8, v2

    :cond_9
    iput v0, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 366
    iput v8, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    .line 367
    add-int/lit8 v6, v6, 0x1

    .line 368
    add-int/2addr v8, v4

    .line 370
    :cond_a
    goto :goto_4

    .line 371
    :cond_b
    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 374
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 390
    nop

    .line 391
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    move v6, v5

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 392
    iget-object v9, v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 393
    iget v9, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v9, v7}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v9

    if-nez v9, :cond_c

    .line 394
    iput v5, v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    .line 395
    goto :goto_5

    .line 397
    :cond_c
    iput v6, v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    .line 398
    add-float/2addr v6, v0

    .line 399
    goto :goto_5

    .line 405
    :cond_d
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIsWork:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    move v2, v4

    nop

    :cond_f
    if-eqz v2, :cond_10

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/16 v2, 0x20

    iput v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput v3, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_10
    return-void
.end method


# virtual methods
.method public final hasFilter()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNoFilteredResults()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAppsUpdated()V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    .line 248
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Lcom/android/launcher3/util/ItemInfoMatcher;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Lcom/android/launcher3/util/ItemInfoMatcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 258
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 259
    if-eqz v0, :cond_6

    .line 262
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v1}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 263
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 265
    iget-object v3, v2, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 269
    if-nez v4, :cond_3

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    goto :goto_1

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 278
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    goto :goto_2

    .line 281
    :cond_5
    goto :goto_4

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    .line 285
    iget-object v1, v1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 286
    goto :goto_3

    .line 290
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->refillAdapterItems()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Landroid/support/v7/widget/V;->mObservable:Landroid/support/v7/widget/W;

    invoke-virtual {v0}, Landroid/support/v7/widget/W;->notifyChanged()V

    .line 291
    :cond_8
    return-void
.end method

.method public final setOrderedFilter(Ljava/util/ArrayList;)Z
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    move v0, v2

    goto :goto_0

    .line 231
    :cond_0
    nop

    .line 232
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 234
    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 236
    :cond_2
    return v1
.end method
