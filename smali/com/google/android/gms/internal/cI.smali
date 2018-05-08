.class public final Lcom/google/android/gms/internal/cI;
.super Ljava/lang/Object;


# static fields
.field private static Vr:Lcom/google/android/gms/internal/cI;


# instance fields
.field private Vq:Lcom/google/android/gms/internal/cH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cI;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cI;->Vr:Lcom/google/android/gms/internal/cI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cI;->Vq:Lcom/google/android/gms/internal/cH;

    return-void
.end method

.method private final declared-synchronized E(Landroid/content/Context;)Lcom/google/android/gms/internal/cH;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cI;->Vq:Lcom/google/android/gms/internal/cH;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/cH;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cI;->Vq:Lcom/google/android/gms/internal/cH;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/cI;->Vq:Lcom/google/android/gms/internal/cH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static F(Landroid/content/Context;)Lcom/google/android/gms/internal/cH;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cI;->Vr:Lcom/google/android/gms/internal/cI;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cI;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/cH;

    move-result-object p0

    return-object p0
.end method
