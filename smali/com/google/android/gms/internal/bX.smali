.class public final Lcom/google/android/gms/internal/bX;
.super Ljava/lang/Object;


# instance fields
.field volatile Lr:Ljava/lang/Object;

.field private final Ux:Lcom/google/android/gms/internal/bY;


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ca;)V
    .locals 2

    const-string v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/bX;->Ux:Lcom/google/android/gms/internal/bY;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/bY;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bX;->Ux:Lcom/google/android/gms/internal/bY;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bY;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
