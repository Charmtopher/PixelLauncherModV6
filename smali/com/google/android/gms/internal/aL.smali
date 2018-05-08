.class public abstract Lcom/google/android/gms/internal/aL;
.super Lcom/google/android/gms/internal/bT;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected final IU:Lcom/google/android/gms/common/b;

.field protected final RH:Ljava/util/concurrent/atomic/AtomicReference;

.field private final RI:Landroid/os/Handler;

.field protected volatile mStarted:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/bU;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/b;->fm()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/aL;-><init>(Lcom/google/android/gms/internal/bU;Lcom/google/android/gms/common/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/bU;Lcom/google/android/gms/common/b;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bT;-><init>(Lcom/google/android/gms/internal/bU;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aL;->RI:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/aL;->IU:Lcom/google/android/gms/common/b;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/aM;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/aM;->RJ:I

    return p0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aM;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/aM;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/aL;->RI:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/aN;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/aN;-><init>(Lcom/google/android/gms/internal/aL;Lcom/google/android/gms/internal/aM;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract hf()V
.end method

.method protected final hh()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->hf()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aM;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/aL;->IU:Lcom/google/android/gms/common/b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/b;->t(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p2, v0, Lcom/google/android/gms/internal/aM;->KM:Lcom/google/android/gms/common/ConnectionResult;

    iget p2, p2, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_5

    if-ne p1, p3, :cond_5

    return-void

    :pswitch_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    if-nez p2, :cond_4

    const/16 p1, 0xd

    if-eqz p3, :cond_3

    const-string p2, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :cond_3
    new-instance p2, Lcom/google/android/gms/internal/aM;

    new-instance p3, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/aL;->a(Lcom/google/android/gms/internal/aM;)I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/aM;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p2

    :cond_4
    :goto_1
    move v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->hh()V

    return-void

    :cond_6
    if-eqz v0, :cond_7

    iget-object p1, v0, Lcom/google/android/gms/internal/aM;->KM:Lcom/google/android/gms/common/ConnectionResult;

    iget p2, v0, Lcom/google/android/gms/internal/aM;->RJ:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/aL;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aM;

    invoke-static {v0}, Lcom/google/android/gms/internal/aL;->a(Lcom/google/android/gms/internal/aM;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aL;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->hh()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/bT;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "resolving_error"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v2, "failed_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "failed_resolution"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const-string v2, "failed_client_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v2, Lcom/google/android/gms/internal/aM;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/aM;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/bT;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aM;

    if-eqz v0, :cond_0

    const-string v1, "resolving_error"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "failed_client_id"

    iget v2, v0, Lcom/google/android/gms/internal/aM;->RJ:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "failed_status"

    iget-object v2, v0, Lcom/google/android/gms/internal/aM;->KM:Lcom/google/android/gms/common/ConnectionResult;

    iget v2, v2, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "failed_resolution"

    iget-object v0, v0, Lcom/google/android/gms/internal/aM;->KM:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, v0, Lcom/google/android/gms/common/ConnectionResult;->Ie:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/bT;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aL;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/bT;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aL;->mStarted:Z

    return-void
.end method
