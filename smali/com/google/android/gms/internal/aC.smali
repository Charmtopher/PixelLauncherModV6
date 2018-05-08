.class public final Lcom/google/android/gms/internal/aC;
.super Lcom/google/android/gms/internal/az;


# instance fields
.field private Rr:Lcom/google/android/gms/internal/bZ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bZ;Lcom/google/android/gms/tasks/c;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/az;-><init>(ILcom/google/android/gms/tasks/c;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aC;->Rr:Lcom/google/android/gms/internal/bZ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/bc;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/az;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/bH;)V
    .locals 2

    iget-object p1, p1, Lcom/google/android/gms/internal/bH;->Ue:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/aC;->Rr:Lcom/google/android/gms/internal/bZ;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ce;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ce;->UF:Lcom/google/android/gms/internal/cd;

    iget-object p1, p1, Lcom/google/android/gms/internal/cd;->UE:Lcom/google/android/gms/internal/bX;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/bX;->Lr:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "UnregisterListenerTask"

    const-string v0, "Received call to unregister a listener without a matching registration call."

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/aC;->Rn:Lcom/google/android/gms/tasks/c;

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->Je:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/c;->b(Ljava/lang/Exception;)Z

    return-void
.end method
