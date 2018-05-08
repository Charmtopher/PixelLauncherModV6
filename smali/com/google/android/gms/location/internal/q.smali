.class final Lcom/google/android/gms/location/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/internal/n;


# instance fields
.field private synthetic Yp:Lcom/google/android/gms/location/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/q;->Yp:Lcom/google/android/gms/location/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fT()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/q;->Yp:Lcom/google/android/gms/location/internal/p;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/p;->a(Lcom/google/android/gms/location/internal/p;)V

    return-void
.end method

.method public final synthetic fU()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/q;->Yp:Lcom/google/android/gms/location/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/p;->fU()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzam;

    return-object v0
.end method
