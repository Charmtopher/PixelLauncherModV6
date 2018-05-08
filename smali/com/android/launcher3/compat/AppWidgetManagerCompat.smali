.class public abstract Lcom/android/launcher3/compat/AppWidgetManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;
    .locals 2

    .line 44
    sget-object v0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    if-nez v1, :cond_1

    .line 46
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lcom/android/launcher3/compat/AppWidgetManagerCompatVO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompatVO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    monitor-exit v0

    return-object p0

    .line 53
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
.end method

.method public abstract findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
.end method

.method public abstract getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
.end method

.method public abstract getAllProvidersMap()Ljava/util/HashMap;
.end method

.method public getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    .line 71
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p1

    return-object p1
.end method
