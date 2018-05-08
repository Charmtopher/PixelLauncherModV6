.class public Lcom/google/android/apps/nexuslauncher/b/a;
.super Lcom/android/launcher3/FastBitmapDrawable;
.source "SourceFile"


# static fields
.field private static final yl:Ljava/util/Set;

.field private static ym:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/b/a;->yl:Ljava/util/Set;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ILandroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 43
    sget-object p1, Lcom/google/android/apps/nexuslauncher/b/a;->yl:Ljava/util/Set;

    monitor-enter p1

    .line 44
    :try_start_0
    sget-object p2, Lcom/google/android/apps/nexuslauncher/b/a;->yl:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object p2, Lcom/google/android/apps/nexuslauncher/b/a;->ym:Landroid/graphics/Bitmap;

    .line 46
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-nez p2, :cond_0

    .line 50
    if-eqz p3, :cond_1

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$7Nb-mfVvTYwWkQ3bi7yArJPix4c;

    invoke-direct {p2, p3}, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$7Nb-mfVvTYwWkQ3bi7yArJPix4c;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    :cond_1
    return-void

    .line 46
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private static synthetic a(Lcom/android/launcher3/AppInfo;)V
    .locals 3

    .line 85
    iget-object p0, p0, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/b/a;->yl:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/apps/nexuslauncher/b/a;->ym:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/b/a;->yl:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/b/a;

    iput-object p0, v2, Lcom/google/android/apps/nexuslauncher/b/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/b/a;->invalidateSelf()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .line 77
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 78
    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    const-string v2, "com.google.android.calendar"

    .line 79
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Lcom/android/launcher3/AppInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {v2, v1, v0, v3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 84
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 85
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$FOJ_neAFzNxdorHD6JXXoXyADKU;

    invoke-direct {v0, v2}, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$FOJ_neAFzNxdorHD6JXXoXyADKU;-><init>(Lcom/android/launcher3/AppInfo;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void

    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic d(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$7Nb-mfVvTYwWkQ3bi7yArJPix4c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$FOJ_neAFzNxdorHD6JXXoXyADKU(Lcom/android/launcher3/AppInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->a(Lcom/android/launcher3/AppInfo;)V

    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .line 61
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/b;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mIconColor:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/b/b;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method
