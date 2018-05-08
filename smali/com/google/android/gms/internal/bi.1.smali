.class final Lcom/google/android/gms/internal/bi;
.super Lcom/google/android/gms/internal/bC;


# instance fields
.field private synthetic ST:Lcom/google/android/gms/internal/bh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/bA;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bi;->ST:Lcom/google/android/gms/internal/bh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bC;-><init>(Lcom/google/android/gms/internal/bA;)V

    return-void
.end method


# virtual methods
.method public final ht()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->ST:Lcom/google/android/gms/internal/bh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bh;->onConnectionSuspended(I)V

    return-void
.end method
