.class public Lcom/google/android/apps/nexuslauncher/reflection/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;
.implements Lcom/google/android/apps/nexuslauncher/reflection/l;
.implements Lcom/google/research/reflection/c/a;


# static fields
.field protected static final DL:J

.field private static final DM:Lcom/google/android/apps/nexuslauncher/reflection/f/e;


# instance fields
.field private final DI:Ljava/util/List;

.field private final DN:Ljava/util/Set;

.field private final DO:Ljava/util/Set;

.field DP:J

.field private DQ:J

.field private DR:Lcom/android/launcher3/notification/NotificationListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DL:J

    .line 49
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/f/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/e;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DM:Lcom/google/android/apps/nexuslauncher/reflection/f/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DN:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DO:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DI:Ljava/util/List;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DP:J

    .line 55
    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DQ:J

    .line 59
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private a(Landroid/service/notification/StatusBarNotification;ZJ)V
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DQ:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_1

    const-string p2, "%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "/posted"

    aput-object p1, v3, v1

    :goto_0
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p2, "%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "/removed"

    aput-object p1, v3, v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->p(Ljava/lang/String;)Lcom/google/research/reflection/signal/ReflectionEvent;

    move-result-object p1

    sget-object p2, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aig:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    .line 175
    invoke-interface {p1, p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    move-result-object p1

    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/g/h;

    invoke-direct {p2}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;-><init>()V

    .line 176
    invoke-virtual {p2, p3, p4}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->h(J)Lcom/google/research/reflection/signal/d;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->a(Lcom/google/research/reflection/signal/d;)Lcom/google/research/reflection/signal/ReflectionEvent;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 177
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p3, p4}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->g(J)V

    .line 178
    :cond_2
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DI:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/c/c;

    .line 179
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ez()Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/research/reflection/c/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    iput-wide p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DQ:J

    .line 188
    return-void
.end method

.method private synthetic c(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->b(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private synthetic d(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->a(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic lambda$2b3xg-6GNnTCf6G1QSuhyKx8ZLY(Lcom/google/android/apps/nexuslauncher/reflection/f/d;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->c(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic lambda$mmSqtqLjDJJ4zzj-BCNazrzu4lg(Lcom/google/android/apps/nexuslauncher/reflection/f/d;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->d(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method final declared-synchronized a(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DP:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->ep()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DN:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->a(Landroid/service/notification/StatusBarNotification;ZJ)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DN:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DP:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DL:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DN:Ljava/util/Set;

    .line 88
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->ep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_3
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    monitor-enter p0

    .line 153
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->a(Landroid/service/notification/StatusBarNotification;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final dV()V
    .locals 0

    .line 205
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->removeStatusBarNotificationsChangedListener()V

    .line 206
    return-void
.end method

.method public final eo()V
    .locals 0

    .line 201
    return-void
.end method

.method final declared-synchronized ep()V
    .locals 7

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DR:Lcom/android/launcher3/notification/NotificationListener;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DR:Lcom/android/launcher3/notification/NotificationListener;

    .line 109
    :goto_0
    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DM:Lcom/google/android/apps/nexuslauncher/reflection/f/e;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DO:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 113
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 115
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DN:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {p0, v3, v6, v4, v5}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->a(Landroid/service/notification/StatusBarNotification;ZJ)V

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DO:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DN:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DN:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DO:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DO:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->DP:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_3
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/f/-$$Lambda$d$mmSqtqLjDJJ4zzj-BCNazrzu4lg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/-$$Lambda$d$mmSqtqLjDJJ4zzj-BCNazrzu4lg;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/d;Landroid/service/notification/StatusBarNotification;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->f(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/f/-$$Lambda$d$2b3xg-6GNnTCf6G1QSuhyKx8ZLY;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/-$$Lambda$d$2b3xg-6GNnTCf6G1QSuhyKx8ZLY;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/d;Landroid/service/notification/StatusBarNotification;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->f(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
