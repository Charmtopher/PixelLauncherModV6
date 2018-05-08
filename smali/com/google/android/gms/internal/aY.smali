.class public final Lcom/google/android/gms/internal/aY;
.super Lcom/google/android/gms/common/api/p;


# instance fields
.field private final IV:Lcom/google/android/gms/common/api/f;

.field final Su:Lcom/google/android/gms/common/api/j;

.field private final Sv:Lcom/google/android/gms/internal/aT;

.field private final zzaOg:Lcom/google/android/gms/common/internal/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/internal/aT;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/aY;->Su:Lcom/google/android/gms/common/api/j;

    iput-object p5, p0, Lcom/google/android/gms/internal/aY;->Sv:Lcom/google/android/gms/internal/aT;

    iput-object p6, p0, Lcom/google/android/gms/internal/aY;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iput-object p7, p0, Lcom/google/android/gms/internal/aY;->IV:Lcom/google/android/gms/common/api/f;

    iget-object p1, p0, Lcom/google/android/gms/internal/aY;->IC:Lcom/google/android/gms/internal/bF;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/bF;->b(Lcom/google/android/gms/common/api/p;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/api/j;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/aY;->Sv:Lcom/google/android/gms/internal/aT;

    iput-object p2, p1, Lcom/google/android/gms/internal/aT;->Sg:Lcom/google/android/gms/internal/aU;

    iget-object p1, p0, Lcom/google/android/gms/internal/aY;->Su:Lcom/google/android/gms/common/api/j;

    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzbdn;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbdn;

    iget-object v1, p0, Lcom/google/android/gms/internal/aY;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v2, p0, Lcom/google/android/gms/internal/aY;->IV:Lcom/google/android/gms/common/api/f;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzbdn;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/f;)V

    return-object v0
.end method
