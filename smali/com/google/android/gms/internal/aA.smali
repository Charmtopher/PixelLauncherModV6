.class public final Lcom/google/android/gms/internal/aA;
.super Lcom/google/android/gms/internal/ay;


# instance fields
.field private Ro:Lcom/google/android/gms/internal/aK;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/aK;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ay;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/aA;->Ro:Lcom/google/android/gms/internal/aK;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bH;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aA;->Ro:Lcom/google/android/gms/internal/aK;

    iget-object p1, p1, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aK;->b(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bc;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aA;->Ro:Lcom/google/android/gms/internal/aK;

    iget-object v1, p1, Lcom/google/android/gms/internal/bc;->SK:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/bd;

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/bd;-><init>(Lcom/google/android/gms/internal/bc;Lcom/google/android/gms/internal/aP;)V

    const-string p1, "Callback cannot be null."

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/aP;->hj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/common/api/w;->fy()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/aP;->RS:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aA;->Ro:Lcom/google/android/gms/internal/aK;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aK;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
