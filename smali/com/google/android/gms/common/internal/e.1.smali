.class public abstract Lcom/google/android/gms/common/internal/e;
.super Ljava/lang/Object;


# static fields
.field private static final Ko:Ljava/lang/Object;

.field private static Kp:Lcom/google/android/gms/common/internal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/e;->Ko:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static z(Landroid/content/Context;)Lcom/google/android/gms/common/internal/e;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/internal/e;->Ko:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/e;->Kp:Lcom/google/android/gms/common/internal/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/internal/e;->Kp:Lcom/google/android/gms/common/internal/e;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/internal/e;->Kp:Lcom/google/android/gms/common/internal/e;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/f;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/common/internal/e;->b(Lcom/google/android/gms/common/internal/f;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/f;Landroid/content/ServiceConnection;)Z
.end method

.method protected abstract b(Lcom/google/android/gms/common/internal/f;Landroid/content/ServiceConnection;)V
.end method
