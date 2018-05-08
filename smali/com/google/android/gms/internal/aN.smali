.class final Lcom/google/android/gms/internal/aN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final RK:Lcom/google/android/gms/internal/aM;

.field final synthetic RL:Lcom/google/android/gms/internal/aL;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aL;Lcom/google/android/gms/internal/aM;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/aN;->RK:Lcom/google/android/gms/internal/aM;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/aL;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aN;->RK:Lcom/google/android/gms/internal/aM;

    iget-object v0, v0, Lcom/google/android/gms/internal/aM;->KM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    iget-object v1, v1, Lcom/google/android/gms/internal/aL;->Up:Lcom/google/android/gms/internal/bU;

    iget-object v2, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/common/ConnectionResult;->Ie:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/google/android/gms/internal/aN;->RK:Lcom/google/android/gms/internal/aM;

    iget v3, v3, Lcom/google/android/gms/internal/aM;->RJ:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/bU;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    iget-object v1, v1, Lcom/google/android/gms/internal/aL;->IU:Lcom/google/android/gms/common/b;

    iget v2, v0, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->aF(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    iget-object v1, v1, Lcom/google/android/gms/internal/aL;->IU:Lcom/google/android/gms/common/b;

    iget-object v2, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    iget-object v3, v3, Lcom/google/android/gms/internal/aL;->Up:Lcom/google/android/gms/internal/bU;

    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    iget-object v4, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Lcom/google/android/gms/internal/bU;ILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    iget v1, v0, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aL;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aL;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/aO;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/aO;-><init>(Lcom/google/android/gms/internal/aN;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bP;)Lcom/google/android/gms/internal/bO;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    iget-object v2, p0, Lcom/google/android/gms/internal/aN;->RK:Lcom/google/android/gms/internal/aM;

    iget v2, v2, Lcom/google/android/gms/internal/aM;->RJ:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/aL;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
