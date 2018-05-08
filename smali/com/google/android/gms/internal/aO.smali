.class final Lcom/google/android/gms/internal/aO;
.super Lcom/google/android/gms/internal/bP;


# instance fields
.field private synthetic RM:Landroid/app/Dialog;

.field private synthetic RN:Lcom/google/android/gms/internal/aN;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aN;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aO;->RN:Lcom/google/android/gms/internal/aN;

    iput-object p2, p0, Lcom/google/android/gms/internal/aO;->RM:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bP;-><init>()V

    return-void
.end method


# virtual methods
.method public final hi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aO;->RN:Lcom/google/android/gms/internal/aN;

    iget-object v0, v0, Lcom/google/android/gms/internal/aN;->RL:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aL;->hh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aO;->RM:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aO;->RM:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
