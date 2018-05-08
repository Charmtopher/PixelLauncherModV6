.class public abstract Lcom/android/launcher3/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;
    .locals 2

    .line 34
    sget-object v0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    if-nez v1, :cond_4

    .line 36
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Lcom/android/launcher3/compat/UserManagerCompatVP;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/UserManagerCompatVP;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 38
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Lcom/android/launcher3/compat/UserManagerCompatVNMr1;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/UserManagerCompatVNMr1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 40
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v1, :cond_2

    .line 41
    new-instance v1, Lcom/android/launcher3/compat/UserManagerCompatVN;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/UserManagerCompatVN;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 42
    :cond_2
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v1, :cond_3

    .line 43
    new-instance v1, Lcom/android/launcher3/compat/UserManagerCompatVM;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/UserManagerCompatVM;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 45
    :cond_3
    new-instance v1, Lcom/android/launcher3/compat/UserManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 48
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/launcher3/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/compat/UserManagerCompat;

    monitor-exit v0

    return-object p0

    .line 49
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract enableAndResetCache()V
.end method

.method public abstract getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
.end method

.method public abstract getSerialNumberForUser(Landroid/os/UserHandle;)J
.end method

.method public abstract getUserForSerialNumber(J)Landroid/os/UserHandle;
.end method

.method public abstract getUserProfiles()Ljava/util/List;
.end method

.method public abstract isAnyProfileQuietModeEnabled()Z
.end method

.method public abstract isDemoUser()Z
.end method

.method public abstract isQuietModeEnabled(Landroid/os/UserHandle;)Z
.end method

.method public abstract isUserUnlocked(Landroid/os/UserHandle;)Z
.end method

.method public abstract requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
.end method
