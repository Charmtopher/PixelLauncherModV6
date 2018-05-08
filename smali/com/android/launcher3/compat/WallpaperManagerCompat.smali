.class public abstract Lcom/android/launcher3/compat/WallpaperManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/WallpaperManagerCompat;
    .locals 2

    .line 30
    sget-object v0, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    if-nez v1, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 34
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 36
    :try_start_1
    new-instance v1, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 41
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    .line 45
    :cond_1
    sget-object p0, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    monitor-exit v0

    return-object p0

    .line 46
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
.end method

.method public abstract getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;
.end method
