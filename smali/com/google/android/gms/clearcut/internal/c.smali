.class final Lcom/google/android/gms/clearcut/internal/c;
.super Lcom/google/android/gms/internal/aK;


# instance fields
.field private final HT:Lcom/google/android/gms/clearcut/LogEventParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/r;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/clearcut/a;->Hl:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/aK;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;)V

    iput-object p1, p0, Lcom/google/android/gms/clearcut/internal/c;->HT:Lcom/google/android/gms/clearcut/LogEventParcelable;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/y;
    .locals 0

    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/g;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/clearcut/internal/e;

    new-instance v0, Lcom/google/android/gms/clearcut/internal/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/clearcut/internal/d;-><init>(Lcom/google/android/gms/clearcut/internal/c;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/c;->HT:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/internal/ah;->Qs:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    iget-object v3, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    invoke-interface {v3}, Lcom/google/android/gms/clearcut/d;->fh()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ah;->Qs:[B

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/internal/ah;->Qz:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    iget-object v3, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    invoke-interface {v3}, Lcom/google/android/gms/clearcut/d;->fh()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ah;->Qz:[B

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    invoke-static {v2}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/aa;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/internal/e;->fU()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/clearcut/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/c;->HT:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/clearcut/internal/zzq;->zza(Lcom/google/android/gms/clearcut/internal/zzo;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/clearcut/internal/c;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
