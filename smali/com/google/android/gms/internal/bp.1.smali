.class final Lcom/google/android/gms/internal/bp;
.super Lcom/google/android/gms/internal/bC;


# instance fields
.field private synthetic Tk:Lcom/google/android/gms/common/internal/A;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bA;Lcom/google/android/gms/common/internal/A;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/bp;->Tk:Lcom/google/android/gms/common/internal/A;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bC;-><init>(Lcom/google/android/gms/internal/bA;)V

    return-void
.end method


# virtual methods
.method public final ht()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->Tk:Lcom/google/android/gms/common/internal/A;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/A;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
