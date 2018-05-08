.class final Lcom/google/android/gms/internal/bs;
.super Lcom/google/android/gms/internal/bC;


# instance fields
.field private synthetic Tm:Lcom/google/android/gms/internal/bk;

.field private synthetic Tn:Lcom/google/android/gms/internal/adm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bA;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/adm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/bs;->Tm:Lcom/google/android/gms/internal/bk;

    iput-object p3, p0, Lcom/google/android/gms/internal/bs;->Tn:Lcom/google/android/gms/internal/adm;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bC;-><init>(Lcom/google/android/gms/internal/bA;)V

    return-void
.end method


# virtual methods
.method public final ht()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/bs;->Tm:Lcom/google/android/gms/internal/bk;

    iget-object v1, p0, Lcom/google/android/gms/internal/bs;->Tn:Lcom/google/android/gms/internal/adm;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bk;->bb(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/adm;->KM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/adm;->Nj:Lcom/google/android/gms/common/internal/zzbr;

    iget-object v2, v1, Lcom/google/android/gms/common/internal/zzbr;->KM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "GoogleApiClientConnecting"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bk;->g(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/bk;->Tb:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzbr;->fO()Lcom/google/android/gms/common/internal/zzal;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/bk;->Tc:Lcom/google/android/gms/common/internal/zzal;

    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/zzbr;->KN:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/bk;->KN:Z

    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/zzbr;->KO:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/bk;->Td:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bk;->hv()V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bk;->f(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bk;->hx()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bk;->hv()V

    return-void

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bk;->g(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_3
    return-void
.end method
