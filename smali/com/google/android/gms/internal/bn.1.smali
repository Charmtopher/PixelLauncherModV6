.class final Lcom/google/android/gms/internal/bn;
.super Lcom/google/android/gms/internal/bu;


# instance fields
.field final synthetic Tf:Lcom/google/android/gms/internal/bk;

.field private final Th:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bk;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bu;-><init>(Lcom/google/android/gms/internal/bk;B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bn;->Th:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final ht()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->Th:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/j;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/j;->fq()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/bn;->Th:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/bm;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/bm;->Sf:Z

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v1, v1, Lcom/google/android/gms/internal/bk;->KZ:Lcom/google/android/gms/common/d;

    iget-object v2, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v2, v2, Lcom/google/android/gms/internal/bk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/d;->t(Landroid/content/Context;)I

    move-result v2

    :cond_3
    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v1, v1, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    new-instance v2, Lcom/google/android/gms/internal/bo;

    iget-object v3, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/bo;-><init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bA;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bB;->a(Lcom/google/android/gms/internal/bC;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bk;->Ta:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->connect()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->Th:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/j;

    iget-object v3, p0, Lcom/google/android/gms/internal/bn;->Th:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/A;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->fq()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v1, v1, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    new-instance v4, Lcom/google/android/gms/internal/bp;

    iget-object v5, p0, Lcom/google/android/gms/internal/bn;->Tf:Lcom/google/android/gms/internal/bk;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/bp;-><init>(Lcom/google/android/gms/internal/bA;Lcom/google/android/gms/common/internal/A;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/bB;->a(Lcom/google/android/gms/internal/bC;)V

    goto :goto_2

    :cond_7
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/internal/A;)V

    goto :goto_2

    :cond_8
    return-void
.end method
