.class public final Lcom/google/android/gms/internal/aB;
.super Lcom/google/android/gms/internal/ay;


# instance fields
.field private final Rn:Lcom/google/android/gms/tasks/c;

.field private final Rp:Lcom/google/android/gms/internal/cn;

.field private final Rq:Lcom/google/android/gms/internal/cj;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/cn;Lcom/google/android/gms/tasks/c;Lcom/google/android/gms/internal/cj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ay;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/aB;->Rn:Lcom/google/android/gms/tasks/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/aB;->Rp:Lcom/google/android/gms/internal/cn;

    iput-object p4, p0, Lcom/google/android/gms/internal/aB;->Rq:Lcom/google/android/gms/internal/cj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bH;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->Rp:Lcom/google/android/gms/internal/cn;

    iget-object p1, p1, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/aB;->Rn:Lcom/google/android/gms/tasks/c;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cn;->a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/tasks/c;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ay;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aB;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_1
    move-exception p1

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/bc;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->Rn:Lcom/google/android/gms/tasks/c;

    iget-object v1, p1, Lcom/google/android/gms/internal/bc;->SL:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lcom/google/android/gms/tasks/c;->adX:Lcom/google/android/gms/tasks/k;

    new-instance v1, Lcom/google/android/gms/internal/be;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/be;-><init>(Lcom/google/android/gms/internal/bc;Lcom/google/android/gms/tasks/c;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/b;->a(Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->Rn:Lcom/google/android/gms/tasks/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/aB;->Rq:Lcom/google/android/gms/internal/cj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/cj;->c(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/c;->b(Ljava/lang/Exception;)Z

    return-void
.end method
