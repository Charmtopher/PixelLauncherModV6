.class final Lcom/google/android/gms/internal/bq;
.super Lcom/google/android/gms/internal/bu;


# instance fields
.field private synthetic Tf:Lcom/google/android/gms/internal/bk;

.field private final Tl:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bk;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->Tf:Lcom/google/android/gms/internal/bk;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bu;-><init>(Lcom/google/android/gms/internal/bk;B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->Tl:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ht()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v0, v0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v2, v1, Lcom/google/android/gms/internal/bk;->zzaOg:Lcom/google/android/gms/common/internal/G;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v1, Lcom/google/android/gms/internal/bk;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v3, v3, Lcom/google/android/gms/common/internal/G;->IJ:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/bk;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v3, v3, Lcom/google/android/gms/common/internal/G;->Lv:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/a;

    iget-object v6, v1, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v6, v6, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/internal/H;

    iget-object v5, v5, Lcom/google/android/gms/common/internal/H;->zzaoj:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Tw:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->Tl:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/j;

    iget-object v4, p0, Lcom/google/android/gms/internal/bq;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v4, v4, Lcom/google/android/gms/internal/bk;->Tc:Lcom/google/android/gms/common/internal/zzal;

    iget-object v5, p0, Lcom/google/android/gms/internal/bq;->Tf:Lcom/google/android/gms/internal/bk;

    iget-object v5, v5, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v5, v5, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v5, v5, Lcom/google/android/gms/internal/bw;->Tw:Ljava/util/Set;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    goto :goto_2

    :cond_3
    return-void
.end method
