.class public final Lcom/google/android/gms/common/stats/a;
.super Ljava/lang/Object;


# static fields
.field private static final Ko:Ljava/lang/Object;

.field private static volatile Mu:Lcom/google/android/gms/common/stats/a;


# instance fields
.field private final Mv:Ljava/util/List;

.field private final Mw:Ljava/util/List;

.field private final Mx:Ljava/util/List;

.field private final My:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/a;->Ko:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->Mv:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->Mw:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->Mx:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->My:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/a/e;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "ConnectionTracker"

    const-string p1, "Attempted to bind to a service in a STOPPED package."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static gs()Lcom/google/android/gms/common/stats/a;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/stats/a;->Mu:Lcom/google/android/gms/common/stats/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/stats/a;->Ko:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/stats/a;->Mu:Lcom/google/android/gms/common/stats/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/stats/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/a;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/stats/a;->Mu:Lcom/google/android/gms/common/stats/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/common/stats/a;->Mu:Lcom/google/android/gms/common/stats/a;

    return-object v0
.end method
