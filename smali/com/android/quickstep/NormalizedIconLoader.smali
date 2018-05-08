.class public Lcom/android/quickstep/NormalizedIconLoader;
.super Lcom/android/systemui/shared/recents/model/IconLoader;
.source "SourceFile"


# instance fields
.field private final mDefaultIcons:Landroid/util/SparseArray;

.field private final mDrawableFactory:Lcom/android/launcher3/graphics/DrawableFactory;

.field private mLauncherIcons:Lcom/android/launcher3/graphics/LauncherIcons;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)V

    .line 43
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/NormalizedIconLoader;->mDefaultIcons:Landroid/util/SparseArray;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/NormalizedIconLoader;->mDrawableFactory:Lcom/android/launcher3/graphics/DrawableFactory;

    .line 51
    return-void
.end method

.method private declared-synchronized getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 3

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/NormalizedIconLoader;->mLauncherIcons:Lcom/android/launcher3/graphics/LauncherIcons;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/NormalizedIconLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/NormalizedIconLoader;->mLauncherIcons:Lcom/android/launcher3/graphics/LauncherIcons;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/NormalizedIconLoader;->mLauncherIcons:Lcom/android/launcher3/graphics/LauncherIcons;

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    const/4 p3, -0x1

    :cond_1
    iput p3, v0, Lcom/android/launcher3/graphics/LauncherIcons;->mWrapperBackgroundColor:I

    .line 81
    iget-object p3, p0, Lcom/android/quickstep/NormalizedIconLoader;->mLauncherIcons:Lcom/android/launcher3/graphics/LauncherIcons;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/16 v0, 0x1a

    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 74
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected createBadgedDrawable(Landroid/graphics/drawable/Drawable;ILandroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 69
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/quickstep/NormalizedIconLoader;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/graphics/BitmapInfo;)V

    return-object v0
.end method

.method protected getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/NormalizedIconLoader;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p3

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 92
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    .line 88
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/quickstep/NormalizedIconLoader;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/android/quickstep/NormalizedIconLoader;->mDrawableFactory:Lcom/android/launcher3/graphics/DrawableFactory;

    invoke-virtual {p3, p2, p1}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/graphics/BitmapInfo;Landroid/content/pm/ActivityInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/quickstep/NormalizedIconLoader;->mDefaultIcons:Landroid/util/SparseArray;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/NormalizedIconLoader;->mDefaultIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/graphics/BitmapInfo;

    .line 57
    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080093

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v2}, Lcom/android/quickstep/NormalizedIconLoader;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/android/quickstep/NormalizedIconLoader;->mDefaultIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_0
    new-instance p1, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {p1, v1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/graphics/BitmapInfo;)V

    monitor-exit v0

    return-object p1

    .line 64
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
