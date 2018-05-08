.class final Lcom/google/android/gms/location/internal/d;
.super Lcom/google/android/gms/location/zzs;


# instance fields
.field private final UE:Lcom/google/android/gms/internal/bX;


# virtual methods
.method public final onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/d;->UE:Lcom/google/android/gms/internal/bX;

    new-instance v1, Lcom/google/android/gms/location/internal/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/location/internal/f;-><init>(Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bX;->a(Lcom/google/android/gms/internal/ca;)V

    return-void
.end method

.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/d;->UE:Lcom/google/android/gms/internal/bX;

    new-instance v1, Lcom/google/android/gms/location/internal/e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/location/internal/e;-><init>(Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bX;->a(Lcom/google/android/gms/internal/ca;)V

    return-void
.end method
