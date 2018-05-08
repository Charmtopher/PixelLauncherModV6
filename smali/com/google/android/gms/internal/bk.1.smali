.class public final Lcom/google/android/gms/internal/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bA;


# instance fields
.field private final IV:Lcom/google/android/gms/common/api/f;

.field KN:Z

.field final KZ:Lcom/google/android/gms/common/d;

.field private SI:Lcom/google/android/gms/common/ConnectionResult;

.field final SR:Lcom/google/android/gms/internal/bB;

.field private SU:I

.field private SV:I

.field private SW:I

.field private final SX:Landroid/os/Bundle;

.field private final SY:Ljava/util/Set;

.field private SZ:Z

.field final Sr:Ljava/util/concurrent/locks/Lock;

.field private final Sy:Ljava/util/Map;

.field Ta:Z

.field Tb:Z

.field Tc:Lcom/google/android/gms/common/internal/zzal;

.field Td:Z

.field private Te:Ljava/util/ArrayList;

.field final mContext:Landroid/content/Context;

.field zzaOL:Lcom/google/android/gms/internal/e;

.field final zzaOg:Lcom/google/android/gms/common/internal/G;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/api/f;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bk;->SV:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bk;->SX:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bk;->SY:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bk;->Te:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iput-object p2, p0, Lcom/google/android/gms/internal/bk;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iput-object p3, p0, Lcom/google/android/gms/internal/bk;->Sy:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/bk;->KZ:Lcom/google/android/gms/common/d;

    iput-object p5, p0, Lcom/google/android/gms/internal/bk;->IV:Lcom/google/android/gms/common/api/f;

    iput-object p6, p0, Lcom/google/android/gms/internal/bk;->Sr:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/bk;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final H(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {p1}, Lcom/google/android/gms/internal/e;->gB()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {p1}, Lcom/google/android/gms/internal/e;->disconnect()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->Tc:Lcom/google/android/gms/common/internal/zzal;

    :cond_1
    return-void
.end method

.method private static bc(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "STEP_GETTING_REMOTE_SERVICE"

    return-object p0

    :pswitch_1
    const-string p0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final hw()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bw;->hA()Z

    new-instance v1, Lcom/google/android/gms/internal/bh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/bh;-><init>(Lcom/google/android/gms/internal/bB;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    iget-object v1, v0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bA;->begin()V

    iget-object v1, v0, Lcom/google/android/gms/internal/bB;->TF:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {}, Lcom/google/android/gms/internal/bE;->hD()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/internal/bk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bk;->KN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->Tc:Lcom/google/android/gms/common/internal/zzal;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/bk;->Td:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/common/internal/zzal;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bk;->H(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/h;

    iget-object v2, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v2, v2, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/j;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->disconnect()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SX:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SX:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->TL:Lcom/google/android/gms/internal/bR;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bR;->g(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private final hy()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->Te:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->Te:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bk;->bb(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/bk;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bk;->hu()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bk;->hw()V

    :cond_1
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result p3

    if-eqz p3, :cond_0

    :goto_0
    move p3, v2

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/bk;->KZ:Lcom/google/android/gms/common/d;

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-virtual {p3, v3}, Lcom/google/android/gms/common/d;->aG(I)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_1
    if-eqz p3, :cond_4

    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/bk;->SI:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/google/android/gms/internal/bk;->SU:I

    if-ge v1, p3, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->SI:Lcom/google/android/gms/common/ConnectionResult;

    iput v1, p0, Lcom/google/android/gms/internal/bk;->SU:I

    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object p3, p3, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final bb(I)Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/bk;->SV:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bw;->hC()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected callback in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/bk;->SW:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "mRemainingConnections="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/bk;->SV:I

    invoke-static {v1}, Lcom/google/android/gms/internal/bk;->bc(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/bk;->bc(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x46

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but received callback for step "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bk;->g(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final begin()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bk;->Ta:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/bk;->SI:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/bk;->SV:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bk;->SZ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bk;->Tb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bk;->KN:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->Sy:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v5, v5, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/j;

    iget-object v6, p0, Lcom/google/android/gms/internal/bk;->Sy:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bk;->Ta:Z

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/bk;->SY:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bk;->SZ:Z

    :cond_1
    :goto_1
    new-instance v7, Lcom/google/android/gms/internal/bm;

    invoke-direct {v7, p0, v4, v6}, Lcom/google/android/gms/internal/bm;-><init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/common/api/a;Z)V

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/bk;->Ta:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v3, v3, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/common/internal/G;->Lx:Ljava/lang/Integer;

    new-instance v10, Lcom/google/android/gms/internal/bt;

    invoke-direct {v10, p0, v0}, Lcom/google/android/gms/internal/bt;-><init>(Lcom/google/android/gms/internal/bk;B)V

    iget-object v4, p0, Lcom/google/android/gms/internal/bk;->IV:Lcom/google/android/gms/common/api/f;

    iget-object v5, p0, Lcom/google/android/gms/internal/bk;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v6, v0, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    iget-object v7, p0, Lcom/google/android/gms/internal/bk;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v8, v0, Lcom/google/android/gms/common/internal/G;->Lw:Lcom/google/android/gms/internal/f;

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/f;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    iput-object v0, p0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bk;->SW:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->Te:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/bE;->hD()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/bn;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bk;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final connect()V
    .locals 0

    return-void
.end method

.method public final disconnect()Z
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/bk;->hy()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bk;->H(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bB;->h(Lcom/google/android/gms/common/ConnectionResult;)V

    return v0
.end method

.method final f(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bk;->SZ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final g(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bk;->hy()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bk;->H(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bB;->h(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->TL:Lcom/google/android/gms/internal/bR;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bR;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method final hu()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/bk;->SW:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/bk;->SW:I

    iget v0, p0, Lcom/google/android/gms/internal/bk;->SW:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/bk;->SW:I

    if-gez v0, :cond_1

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bw;->hC()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    const-string v1, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bk;->g(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SI:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget v1, p0, Lcom/google/android/gms/internal/bk;->SU:I

    iput v1, v0, Lcom/google/android/gms/internal/bB;->TK:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SI:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    return v1
.end method

.method final hv()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/bk;->SW:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bk;->Ta:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bk;->Tb:Z

    if-eqz v0, :cond_5

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/bk;->SV:I

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/bk;->SW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/h;

    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v3, v3, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bk;->hu()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/bk;->hw()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v3, v3, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/j;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->Te:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/bE;->hD()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/bq;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/bk;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method final hx()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bk;->Ta:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Tw:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/h;

    iget-object v2, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v2, v2, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v2, v2, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bk;->bb(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->SX:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bk;->hu()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/bk;->hw()V

    :cond_2
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bk;->g(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
