.class final Lcom/google/android/gms/internal/bY;
.super Landroid/os/Handler;


# instance fields
.field private synthetic Uy:Lcom/google/android/gms/internal/bX;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->F(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bY;->Uy:Lcom/google/android/gms/internal/bX;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, v0, Lcom/google/android/gms/internal/bX;->Lr:Ljava/lang/Object;

    if-eqz p1, :cond_1

    :cond_1
    return-void
.end method
