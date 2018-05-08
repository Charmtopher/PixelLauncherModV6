.class final Lcom/google/android/gms/common/internal/L;
.super Lcom/google/android/gms/common/internal/J;


# instance fields
.field private synthetic LB:I

.field private synthetic LC:Lcom/google/android/gms/internal/bU;

.field private synthetic Lz:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/internal/bU;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/L;->Lz:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/L;->LC:Lcom/google/android/gms/internal/bU;

    iput p3, p0, Lcom/google/android/gms/common/internal/L;->LB:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/J;-><init>()V

    return-void
.end method


# virtual methods
.method public final fZ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/L;->Lz:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/L;->LC:Lcom/google/android/gms/internal/bU;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/L;->Lz:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/L;->LB:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bU;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
