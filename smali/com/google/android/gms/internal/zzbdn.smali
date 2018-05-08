.class public final Lcom/google/android/gms/internal/zzbdn;
.super Lcom/google/android/gms/internal/ade;

# interfaces
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/api/u;


# static fields
.field private static zzaQE:Lcom/google/android/gms/common/api/f;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final zzaMd:Lcom/google/android/gms/common/api/f;

.field zzaOL:Lcom/google/android/gms/internal/e;

.field zzaOg:Lcom/google/android/gms/common/internal/G;

.field final zzaQF:Z

.field zzaQG:Lcom/google/android/gms/internal/ci;

.field zzaoj:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/a;->Hk:Lcom/google/android/gms/common/api/f;

    sput-object v0, Lcom/google/android/gms/internal/zzbdn;->zzaQE:Lcom/google/android/gms/common/api/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdn;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/google/android/gms/internal/zzbdn;->zzaQE:Lcom/google/android/gms/common/api/f;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaMd:Lcom/google/android/gms/common/api/f;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaQF:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdn;->mHandler:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/G;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object p1, p3, Lcom/google/android/gms/common/internal/G;->IJ:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaoj:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbdn;->zzaMd:Lcom/google/android/gms/common/api/f;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaQF:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbdn;Lcom/google/android/gms/internal/adm;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/adm;->KM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/adm;->Nj:Lcom/google/android/gms/common/internal/zzbr;

    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzbr;->KM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "SignInCoordinator"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdn;->zzaQG:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbr;->fO()Lcom/google/android/gms/common/internal/zzal;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaoj:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ci;->b(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaQG:Lcom/google/android/gms/internal/ci;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ci;->j(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {p0}, Lcom/google/android/gms/internal/e;->disconnect()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/adf;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdn;->zzaQG:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ci;->j(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {p1}, Lcom/google/android/gms/internal/e;->disconnect()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/adm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdn;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ch;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ch;-><init>(Lcom/google/android/gms/internal/zzbdn;Lcom/google/android/gms/internal/adm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
