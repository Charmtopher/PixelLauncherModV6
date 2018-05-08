.class public Lcom/google/android/apps/nexuslauncher/reflection/f/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/c/a;


# static fields
.field public static final Ea:J

.field public static final Eb:J

.field private static final Ec:J

.field private static final Ed:Ljava/util/Set;

.field private static Ee:Lcom/google/android/apps/nexuslauncher/reflection/f/j;


# instance fields
.field private final CO:Landroid/content/SharedPreferences;

.field private final DI:Ljava/util/List;

.field private final Ef:Lcom/google/android/apps/nexuslauncher/reflection/f/l;

.field private final Eg:Ljava/util/List;

.field private final Eh:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

.field private Ei:J

.field Ej:J

.field private Ek:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

.field private El:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ea:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eb:J

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ec:J

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ed:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/UsageStatsManager;Landroid/content/Context;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ej:J

    .line 55
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ek:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 56
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->El:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 83
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/f/l;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/l;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/j;Landroid/app/usage/UsageStatsManager;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ef:Lcom/google/android/apps/nexuslauncher/reflection/f/l;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->DI:Ljava/util/List;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eg:Ljava/util/List;

    .line 86
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    invoke-direct {p1, p0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/k;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/j;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eh:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    .line 87
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->mContext:Landroid/content/Context;

    .line 88
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/i;->l(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->CO:Landroid/content/SharedPreferences;

    .line 89
    return-void
.end method

.method private a(Landroid/app/usage/UsageEvents$Event;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eh:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/f/k;->Em:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private declared-synchronized a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Z
    .locals 2

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    sget-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ec:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 102
    monitor-exit p0

    return p1

    .line 101
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Z
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ek:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->El:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 97
    monitor-exit p0

    return p1

    .line 98
    :cond_1
    :goto_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 96
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f(J)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->CO:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->CO:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reflection_most_recent_usage_buffer"

    .line 146
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    :cond_0
    return-void
.end method

.method public static declared-synchronized n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/f/j;
    .locals 6

    const-class v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ee:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    if-nez v1, :cond_3

    .line 63
    const/4 v1, 0x0

    const-string v2, "appops"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    const-string v3, "android:get_usage_stats"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    if-nez v2, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_2

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    const-string v2, "usagestats"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;-><init>(Landroid/app/usage/UsageStatsManager;Landroid/content/Context;)V

    .line 64
    :cond_2
    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ee:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    if-eqz v1, :cond_3

    .line 65
    sget-object p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ee:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->CO:Landroid/content/SharedPreferences;

    const-string v1, "reflection_most_recent_usage"

    .line 66
    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 68
    cmp-long p0, v4, v2

    if-eqz p0, :cond_3

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p0, v4, v1

    if-gez p0, :cond_3

    .line 70
    sget-object p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ee:Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    iput-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ei:J

    .line 79
    :cond_3
    sget-object p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ee:Lcom/google/android/apps/nexuslauncher/reflection/f/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 61
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->DI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object p0
.end method

.method public final declared-synchronized b(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ek:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->El:Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 93
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ez()Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ek:Lcom/google/android/apps/nexuslauncher/reflection/g/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final d(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Z
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ej:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v0

    sget-object v1, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aic:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-eq v0, v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v0

    sget-object v1, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aib:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne v0, v1, :cond_2

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->f(J)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    sget-object v1, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aic:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v1

    sget-object v2, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aib:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    const-string v1, "GEL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V

    .line 138
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 140
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final eo()V
    .locals 2

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->g(J)V

    .line 130
    return-void
.end method

.method public final declared-synchronized g(J)V
    .locals 5

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eh:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/f/k;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-virtual {v1}, Lcom/android/launcher3/util/InstantAppResolver;->getInstantApps()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/f/k;->Em:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/f/k;->Em:Ljava/util/Set;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    sget-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ea:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ei:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ej:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    sget-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eb:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ej:J

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ei:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ei:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sget-wide v2, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ea:J

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ef:Lcom/google/android/apps/nexuslauncher/reflection/f/l;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/f/l;->zD:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ed:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ei:J

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/g/h;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;-><init>()V

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->h(J)Lcom/google/research/reflection/signal/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/d;)Lcom/google/research/reflection/signal/ReflectionEvent;

    const-string v2, "UsageEventSensor"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->q(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p2, :cond_7

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->a(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, p2

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->ahZ:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->p(Ljava/lang/String;)Lcom/google/research/reflection/signal/ReflectionEvent;

    goto :goto_5

    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v2, v4, :cond_9

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_9

    move v3, p2

    nop

    :cond_9
    if-eqz v3, :cond_a

    sget-object v2, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aic:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->a(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aib:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@instantapp"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 172
    :cond_b
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Eg:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 173
    invoke-direct {p0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->c(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 176
    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->d(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->DI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/c/c;

    .line 178
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ez()Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/research/reflection/c/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 179
    goto :goto_7

    .line 199
    :cond_c
    goto :goto_6

    .line 200
    :cond_d
    iget-wide p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->Ei:J

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->f(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
