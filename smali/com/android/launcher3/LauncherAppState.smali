.class public Lcom/android/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static INSTANCE:Lcom/android/launcher3/LauncherAppState;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIconCache:Lcom/android/launcher3/IconCache;

.field public final mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

.field public final mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getLocalProvider(Landroid/content/Context;)Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "Launcher"

    const-string v1, "LauncherAppState initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 92
    new-instance p1, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 93
    new-instance p1, Lcom/android/launcher3/IconCache;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 94
    new-instance p1, Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 95
    new-instance p1, Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/AppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/AppFilter;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/launcher3/LauncherModel;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 97
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 100
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->enableAndResetCache()V

    .line 115
    new-instance p1, Lcom/android/launcher3/util/ConfigMonitor;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/ConfigMonitor;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/android/launcher3/util/ConfigMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0f0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    return-void

    .line 121
    :cond_0
    new-instance p1, Lcom/android/launcher3/LauncherAppState$2;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/LauncherAppState$2;-><init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    .line 131
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    const-string v0, "notification_badging"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/util/SettingsObserver;->register(Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    return-void

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Initializing LauncherAppState in the absence of LauncherProvider"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;
    .locals 2

    .line 56
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    goto :goto_0

    .line 61
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/launcher3/LauncherAppState$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherAppState$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAppState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 72
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    return-object p0
.end method

.method private static getLocalProvider(Landroid/content/Context;)Lcom/android/launcher3/LauncherProvider;
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    .line 178
    nop

    .line 180
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 180
    :cond_0
    return-object v1

    .line 181
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_2
    :goto_1
    throw v1
.end method


# virtual methods
.method final setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getLocalProvider(Landroid/content/Context;)Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    invoke-static {v0, p1}, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->access$102(Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;Lcom/android/launcher3/LauncherProviderChangeListener;)Lcom/android/launcher3/LauncherProviderChangeListener;

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p1

    .line 150
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
