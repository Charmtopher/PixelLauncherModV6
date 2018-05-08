.class public Lcom/android/launcher3/graphics/DrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/android/launcher3/graphics/DrawableFactory;


# instance fields
.field protected final mMyUser:Landroid/os/UserHandle;

.field private mPreloadProgressPath:Landroid/graphics/Path;

.field protected final mUserBadges:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/DrawableFactory;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mMyUser:Landroid/os/UserHandle;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mUserBadges:Landroid/util/ArrayMap;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;
    .locals 3

    .line 53
    sget-object v0, Lcom/android/launcher3/graphics/DrawableFactory;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/android/launcher3/graphics/DrawableFactory;->sInstance:Lcom/android/launcher3/graphics/DrawableFactory;

    if-nez v1, :cond_0

    .line 55
    const-class v1, Lcom/android/launcher3/graphics/DrawableFactory;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f0c0018

    .line 55
    invoke-static {v1, p0, v2}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/graphics/DrawableFactory;

    sput-object p0, Lcom/android/launcher3/graphics/DrawableFactory;->sInstance:Lcom/android/launcher3/graphics/DrawableFactory;

    .line 58
    :cond_0
    sget-object p0, Lcom/android/launcher3/graphics/DrawableFactory;->sInstance:Lcom/android/launcher3/graphics/DrawableFactory;

    monitor-exit v0

    return-object p0

    .line 59
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getBadgeForUser(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mMyUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->getUserBadge(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 122
    new-instance p2, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {p2, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setBounds(IIII)V

    .line 125
    return-object p2
.end method

.method protected final getPreloadProgressPath(Landroid/content/Context;)Landroid/graphics/Path;
    .locals 9

    .line 89
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    .line 92
    const/high16 v0, 0x7f020000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 93
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getIconMask"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 96
    :catch_0
    move-exception p1

    .line 97
    const-string v0, "DrawableFactory"

    const-string v1, "Error loading mask icon"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 103
    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 104
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x43b40000    # 360.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 105
    return-object p1
.end method

.method protected final declared-synchronized getUserBadge(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mUserBadges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    monitor-exit p0

    return-object v0

    .line 134
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 136
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 138
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v3, p1, v0, v4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 141
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 142
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 145
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    invoke-virtual {p2, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    :goto_0
    iget-object p2, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mUserBadges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit p0

    return-object v2

    .line 128
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;
    .locals 1

    .line 69
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->isDisabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 71
    return-object v0
.end method

.method public newIcon(Lcom/android/launcher3/graphics/BitmapInfo;Landroid/content/pm/ActivityInfo;)Lcom/android/launcher3/FastBitmapDrawable;
    .locals 0

    .line 75
    new-instance p2, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {p2, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/graphics/BitmapInfo;)V

    return-object p2
.end method

.method public final newPendingIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/Context;)Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mPreloadProgressPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->getPreloadProgressPath(Landroid/content/Context;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mPreloadProgressPath:Landroid/graphics/Path;

    .line 85
    :cond_0
    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    iget-object v1, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mPreloadProgressPath:Landroid/graphics/Path;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/graphics/Path;Landroid/content/Context;)V

    return-object v0
.end method
