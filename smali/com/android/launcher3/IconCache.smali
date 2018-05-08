.class public Lcom/android/launcher3/IconCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ICON_UPDATE_TOKEN:Ljava/lang/Object;


# instance fields
.field private final mCache:Ljava/util/HashMap;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcons:Ljava/util/HashMap;

.field private final mHighResOptions:Landroid/graphics/BitmapFactory$Options;

.field final mIconDb:Lcom/android/launcher3/IconCache$IconDB;

.field private final mIconDpi:I

.field private final mIconProvider:Lcom/android/launcher3/IconProvider;

.field private final mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final mLowResOptions:Landroid/graphics/BitmapFactory$Options;

.field final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 92
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    .line 111
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 116
    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iput v0, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    .line 117
    new-instance v0, Lcom/android/launcher3/IconCache$IconDB;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/IconCache$IconDB;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    .line 119
    invoke-static {p1}, Lcom/android/launcher3/IconProvider;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    .line 120
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    .line 122
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    .line 125
    iget-object p1, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 127
    sget-boolean p1, Lcom/android/launcher3/graphics/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    if-eqz p1, :cond_0

    .line 128
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mHighResOptions:Landroid/graphics/BitmapFactory$Options;

    .line 129
    iget-object p1, p0, Lcom/android/launcher3/IconCache;->mHighResOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void

    .line 131
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mHighResOptions:Landroid/graphics/BitmapFactory$Options;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/IconCache;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/compat/LauncherAppsCompat;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    return-object p0
.end method

.method private addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    .locals 1

    .line 401
    const-string v0, "componentName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string p2, "profileId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string p2, "lastUpdated"

    iget-wide p4, p3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    const-string p2, "version"

    iget p3, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    iget-object p2, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/IconCache$IconDB;->insertOrReplace(Landroid/content/ContentValues;)V

    .line 406
    return-void
.end method

.method private applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 1

    .line 498
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 499
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 500
    iget-boolean v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    .line 501
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object p1, p2, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 502
    return-void
.end method

.method private generateLowResIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 837
    nop

    .line 838
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 839
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    .line 837
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/IconCache$CacheEntry;
    .locals 14

    move-object v7, p0

    move-object/from16 v0, p2

    .line 621
    move/from16 v1, p3

    invoke-static/range {p1 .. p2}, Lcom/android/launcher3/IconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v8

    .line 623
    iget-object v2, v7, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 625
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 626
    :cond_0
    new-instance v9, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v9}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 627
    const/4 v10, 0x1

    .line 630
    invoke-direct {v7, v8, v9, v1}, Lcom/android/launcher3/IconCache;->getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_4

    .line 632
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    move v2, v11

    goto :goto_0

    .line 633
    :cond_1
    const/16 v2, 0x2000

    .line 634
    :goto_0
    iget-object v3, v7, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v6, p1

    invoke-virtual {v3, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 635
    iget-object v2, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 636
    if-eqz v2, :cond_3

    .line 640
    iget-object v3, v7, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v3

    .line 643
    iget-object v4, v7, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 644
    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v13, v7, Lcom/android/launcher3/IconCache;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 645
    invoke-virtual {v13, v2}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v13

    .line 643
    invoke-virtual {v3, v4, v0, v5, v13}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v4

    .line 646
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 648
    iget-object v3, v4, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v7, v3}, Lcom/android/launcher3/IconCache;->generateLowResIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 649
    iget-object v5, v7, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 650
    iget-object v2, v7, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v5, v9, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 651
    if-eqz v1, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, v4, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_1
    iput-object v2, v9, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 652
    iget v2, v4, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    iput v2, v9, Lcom/android/launcher3/IconCache$CacheEntry;->color:I

    .line 653
    iput-boolean v1, v9, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    .line 657
    iget-object v2, v4, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v4, v9, Lcom/android/launcher3/IconCache$CacheEntry;->color:I

    iget-object v1, v9, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 658
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 657
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->newContentValues(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 659
    iget-object v3, v8, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v1, v7, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 660
    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    .line 659
    move-object v1, v7

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V

    .line 665
    goto :goto_2

    .line 637
    :cond_3
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "ApplicationInfo is null"

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :catch_0
    move-exception v0

    .line 664
    nop

    .line 669
    move v10, v11

    :cond_4
    :goto_2
    if-eqz v10, :cond_5

    .line 670
    iget-object v0, v7, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_5
    move-object v2, v9

    :cond_6
    return-object v2
.end method

.method private getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z
    .locals 10

    .line 677
    nop

    .line 679
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 680
    if-eqz p3, :cond_0

    const-string v4, "icon_low_res"

    goto :goto_0

    :cond_0
    const-string v4, "icon"

    :goto_0
    aput-object v4, v3, v0

    const-string v4, "icon_color"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "label"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "componentName = ? AND profileId = ?"

    new-array v7, v6, [Ljava/lang/String;

    iget-object v8, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 683
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    iget-object v8, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v9, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 684
    invoke-virtual {v8, v9}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 679
    invoke-virtual {v2, v3, v4, v7}, Lcom/android/launcher3/IconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 685
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 686
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mHighResOptions:Landroid/graphics/BitmapFactory$Options;

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/android/launcher3/IconCache;->loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 688
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0xff

    invoke-static {v1, v3}, Landroid/support/v4/b/a;->f(II)I

    move-result v1

    iput v1, p2, Lcom/android/launcher3/IconCache$CacheEntry;->color:I

    .line 689
    iput-boolean p3, p2, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    .line 690
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 691
    iget-object p3, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez p3, :cond_2

    .line 692
    const-string p1, ""

    iput-object p1, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 693
    const-string p1, ""

    iput-object p1, p2, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    .line 695
    :cond_2
    iget-object p3, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v1, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v1, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p2, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    :goto_2
    if-eqz v2, :cond_3

    .line 704
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 698
    :cond_3
    return v5

    .line 703
    :cond_4
    if-eqz v2, :cond_5

    .line 704
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 703
    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    .line 700
    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    .line 703
    :catchall_1
    move-exception p1

    goto :goto_5

    .line 700
    :catch_1
    move-exception p1

    .line 701
    :goto_3
    :try_start_2
    const-string p2, "Launcher.IconCache"

    const-string p3, "Error reading icon cache"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 703
    if-eqz v1, :cond_5

    .line 704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 707
    :cond_5
    :goto_4
    return v0

    .line 703
    :goto_5
    if-eqz v1, :cond_6

    .line 704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 136
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_0

    .line 137
    const v1, 0x1080093

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10d0000

    .line 136
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 143
    :try_start_0
    iget v0, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception p1

    .line 145
    const/4 p1, 0x0

    .line 148
    :goto_0
    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private static getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3

    .line 611
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance p0, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method private declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/util/Provider;ZZ)V
    .locals 6

    monitor-enter p0

    .line 482
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v3, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/util/Provider;Landroid/os/UserHandle;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object p2

    .line 484
    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/IconCache;->applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 843
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    .line 845
    const/4 p1, 0x0

    :try_start_0
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 846
    :catch_0
    move-exception p0

    .line 847
    const/4 p0, 0x0

    return-object p0
.end method

.method private newContentValues(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 822
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 823
    const-string v1, "icon"

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 824
    const-string p1, "icon_low_res"

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 825
    const-string p1, "icon_color"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string p1, "label"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string p1, "system_state"

    iget-object p2, p0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    invoke-virtual {p2, p5}, Lcom/android/launcher3/IconProvider;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-object v0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 212
    iget-object v3, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 213
    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/ComponentKey;

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    goto :goto_1

    .line 220
    :cond_2
    return-void
.end method


# virtual methods
.method final declared-synchronized addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V
    .locals 8

    monitor-enter p0

    .line 369
    :try_start_0
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 370
    nop

    .line 371
    const/4 v1, 0x0

    if-nez p5, :cond_2

    .line 372
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 374
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    move-object v1, v2

    goto :goto_1

    .line 375
    :cond_1
    :goto_0
    nop

    .line 378
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 379
    new-instance v1, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 380
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v2

    .line 381
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/LauncherActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 382
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 381
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;I)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v3

    .line 382
    invoke-virtual {v3, v1}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/graphics/BitmapInfo;)V

    .line 383
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 385
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 386
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v3, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 387
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, v1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/launcher3/IconCache;->generateLowResIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 390
    iget-object v2, v1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget v4, v1, Lcom/android/launcher3/IconCache$CacheEntry;->color:I

    iget-object v0, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 391
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 390
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->newContentValues(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 392
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/util/Provider;Landroid/os/UserHandle;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;
    .locals 4

    .line 523
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v0, p1, p3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 525
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 526
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v2, :cond_6

    if-nez p5, :cond_6

    .line 527
    :cond_0
    new-instance v1, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 528
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v2, 0x0

    .line 532
    nop

    .line 534
    invoke-direct {p0, v0, v1, p5}, Lcom/android/launcher3/IconCache;->getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z

    move-result p5

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p5, :cond_3

    .line 535
    invoke-virtual {p2}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v2, p5

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 536
    nop

    .line 538
    if-eqz v2, :cond_1

    .line 539
    iget-object p1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object p1

    .line 540
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/LauncherActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p5

    .line 541
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 540
    invoke-virtual {p1, p4, p5, v3}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;I)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p4

    .line 541
    invoke-virtual {p4, v1}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/graphics/BitmapInfo;)V

    .line 542
    invoke-virtual {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 543
    goto :goto_0

    .line 544
    :cond_1
    if-eqz p4, :cond_2

    .line 545
    nop

    .line 546
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 545
    invoke-direct {p0, p1, p3, v3}, Lcom/android/launcher3/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object p1

    .line 547
    if-eqz p1, :cond_2

    .line 550
    invoke-virtual {p1, v1}, Lcom/android/launcher3/IconCache$CacheEntry;->applyTo(Lcom/android/launcher3/graphics/BitmapInfo;)V

    .line 551
    iget-object p4, p1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object p4, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 552
    iget-object p1, p1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object p1, v1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 555
    :cond_2
    iget-object p1, v1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    .line 558
    invoke-virtual {p0, p3}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/graphics/BitmapInfo;)V

    goto :goto_0

    .line 563
    :cond_3
    move v0, v3

    :cond_4
    :goto_0
    iget-object p1, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 564
    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 565
    invoke-virtual {p2}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 566
    :cond_5
    if-eqz v2, :cond_6

    .line 569
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 570
    iget-object p1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object p2, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 574
    :cond_6
    return-object v1
.end method

.method public final declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 1

    monitor-enter p0

    .line 588
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 590
    invoke-static {p1, p2}, Lcom/android/launcher3/IconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p1

    .line 591
    iget-object p2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 594
    if-nez p2, :cond_0

    .line 595
    new-instance p2, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {p2}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 597
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iput-object p4, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 600
    :cond_1
    if-eqz p3, :cond_2

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v0

    .line 602
    invoke-virtual {v0, p3}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/graphics/BitmapInfo;)V

    .line 603
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 605
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p2, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_3

    .line 606
    iget-object p3, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_3
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    iget-object v1, v0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    iget-object v0, v0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->access$000(Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    monitor-exit p0

    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 2

    monitor-enter p0

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache;->makeDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/graphics/BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 504
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p1

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final getFullResIcon(Landroid/content/pm/LauncherActivityInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    iget v1, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/launcher3/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception p1

    .line 156
    const/4 p1, 0x0

    .line 158
    :goto_0
    if-eqz p1, :cond_0

    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 1

    monitor-enter p0

    .line 454
    :try_start_0
    invoke-static {p2}, Lcom/android/launcher3/util/Provider;->of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/util/Provider;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V
    .locals 3

    monitor-enter p0

    .line 464
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 465
    iget-object p2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 466
    const-string p2, ""

    iput-object p2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 467
    const-string p2, ""

    iput-object p2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 468
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 470
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/launcher3/IconCache$ActivityInfoProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/IconCache$ActivityInfoProvider;-><init>(Lcom/android/launcher3/IconCache;Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/util/Provider;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V
    .locals 2

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p1, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher3/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object p2

    .line 494
    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/IconCache;->applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 491
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z
    .locals 0

    .line 512
    invoke-virtual {p0, p2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final makeDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v0

    .line 194
    nop

    .line 195
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;I)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V

    .line 194
    :cond_0
    return-object p1

    .line 196
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 193
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public final declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 245
    iget-object p2, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    const-string v2, "componentName LIKE ? AND profileId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/%"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    .line 245
    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/IconCache$IconDB;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateDbIcons(Ljava/util/Set;)V
    .locals 26

    move-object/from16 v8, p0

    .line 252
    iget-object v0, v8, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    iget-object v0, v8, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    iget-object v1, v8, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/IconProvider;->updateSystemStateString(Landroid/content/Context;)V

    .line 255
    iget-object v0, v8, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 257
    iget-object v1, v8, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_a

    .line 266
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    nop

    .line 266
    move-object/from16 v3, p1

    goto :goto_1

    .line 267
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 266
    :goto_1
    iget-object v4, v8, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    iget-object v6, v8, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v10, 0x2000

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    :try_start_0
    iget-object v11, v8, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    const-string v12, "rowid"

    const-string v13, "componentName"

    const-string v14, "lastUpdated"

    const-string v15, "version"

    const-string v2, "system_state"

    filled-new-array {v12, v13, v14, v15, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v12, "profileId = ? "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v2, v12, v13}, Lcom/android/launcher3/IconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v11, "componentName"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "lastUpdated"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "version"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "rowid"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "system_state"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v16, :cond_b

    move-object/from16 v17, v9

    :try_start_2
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    move/from16 v18, v11

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    if-nez v11, :cond_5

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v8, v9, v0}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v9, v17

    move/from16 v11, v18

    goto :goto_4

    :cond_5
    move-object/from16 v19, v3

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x1000000

    and-int v3, v3, v16

    if-nez v3, :cond_a

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v22, v12

    move-object/from16 v12, v16

    check-cast v12, Landroid/content/pm/LauncherActivityInfo;

    move/from16 v23, v13

    iget v13, v11, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v13, :cond_6

    move-wide/from16 v24, v4

    :try_start_3
    iget-wide v3, v11, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v3, v20, v3

    if-nez v3, :cond_7

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    iget-object v5, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/IconProvider;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_6
    move-wide/from16 v24, v4

    :cond_7
    :goto_5
    if-nez v12, :cond_8

    invoke-virtual {v8, v9, v0}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {v10, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    :goto_6
    move-object/from16 v9, v17

    move/from16 v11, v18

    move-object/from16 v3, v19

    move/from16 v12, v22

    move/from16 v13, v23

    move-wide/from16 v4, v24

    goto/16 :goto_4

    :cond_a
    move-object/from16 v9, v17

    move/from16 v11, v18

    move-object/from16 v3, v19

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-wide/from16 v24, v4

    goto :goto_7

    :cond_b
    move-wide/from16 v24, v4

    move-object/from16 v17, v9

    if-eqz v2, :cond_c

    goto :goto_8

    :catch_2
    move-exception v0

    move-wide/from16 v24, v4

    move-object/from16 v17, v9

    goto :goto_7

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_9

    :catch_3
    move-exception v0

    move-wide/from16 v24, v4

    move-object/from16 v17, v9

    const/4 v2, 0x0

    :goto_7
    :try_start_4
    const-string v3, "Launcher.IconCache"

    const-string v4, "Error reading icon cache"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_c

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v8, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    const-string v2, "rowid"

    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/IconCache$IconDB;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    new-instance v9, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;

    move-object v1, v9

    move-object v2, v8

    move-wide/from16 v3, v24

    move-object v5, v7

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;-><init>(Lcom/android/launcher3/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V

    invoke-virtual {v9}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 268
    :cond_f
    nop

    .line 255
    move-object/from16 v9, v17

    goto/16 :goto_0

    .line 266
    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v2, :cond_10

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    .line 261
    :cond_11
    :goto_a
    return-void

    .line 269
    :cond_12
    return-void
.end method

.method public final updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;
    .locals 1

    .line 414
    new-instance v0, Lcom/android/launcher3/IconCache$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/IconCache$1;-><init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;)V

    .line 432
    iget-object p1, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    new-instance p1, Lcom/android/launcher3/IconCache$IconLoadRequest;

    iget-object p2, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, p2}, Lcom/android/launcher3/IconCache$IconLoadRequest;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-object p1
.end method

.method public final declared-synchronized updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 10

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 232
    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v0

    move-wide v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    goto :goto_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    :catch_0
    move-exception p1

    .line 235
    :try_start_2
    const-string p2, "Launcher.IconCache"

    const-string v0, "Package not found"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateTitleAndIcon(Lcom/android/launcher3/AppInfo;)V
    .locals 6

    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 441
    invoke-static {v0}, Lcom/android/launcher3/util/Provider;->of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    .line 440
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/util/Provider;Landroid/os/UserHandle;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 443
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/IconCache;->applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_0
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
