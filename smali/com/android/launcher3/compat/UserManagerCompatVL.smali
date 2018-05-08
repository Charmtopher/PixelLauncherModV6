.class public Lcom/android/launcher3/compat/UserManagerCompatVL;
.super Lcom/android/launcher3/compat/UserManagerCompat;
.source "SourceFile"


# static fields
.field private static final USER_CREATION_TIME_KEY:Ljava/lang/String; = "user_creation_time_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field protected final mUserManager:Landroid/os/UserManager;

.field protected mUserToSerialMap:Landroid/util/ArrayMap;

.field protected mUsers:Lcom/android/launcher3/util/LongArrayMap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/launcher3/compat/UserManagerCompat;-><init>()V

    .line 43
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 5

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 102
    iget-object v2, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 103
    iget-object v4, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 104
    iget-object v4, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    goto :goto_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1

    .line 124
    if-nez p2, :cond_0

    .line 125
    return-object p1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 53
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    .line 55
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0

    .line 55
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 1

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    monitor-exit p0

    return-object p1

    .line 65
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1

    .line 65
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 116
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isAnyProfileQuietModeEnabled()Z
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isDemoUser()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 0

    .line 71
    const/4 p1, 0x0

    return p1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 0

    .line 76
    const/4 p1, 0x1

    return p1
.end method

.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    .locals 0

    .line 86
    const/4 p1, 0x0

    return p1
.end method
