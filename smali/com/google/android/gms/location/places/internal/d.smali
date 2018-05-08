.class final Lcom/google/android/gms/location/places/internal/d;
.super Lcom/google/android/gms/location/places/C;


# instance fields
.field private synthetic ZU:Landroid/app/PendingIntent;

.field private synthetic ZV:Lcom/google/android/gms/location/places/PlaceRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;Lcom/google/android/gms/location/places/PlaceRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/d;->ZV:Lcom/google/android/gms/location/places/PlaceRequest;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/d;->ZU:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/C;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/g;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/location/places/internal/e;

    new-instance v0, Lcom/google/android/gms/location/places/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzo;-><init>(Lcom/google/android/gms/location/places/C;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/d;->ZV:Lcom/google/android/gms/location/places/PlaceRequest;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/d;->ZU:Landroid/app/PendingIntent;

    const-string v3, "request == null"

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "callbackIntent == null"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/e;->fU()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/places/internal/zzv;

    iget-object p1, p1, Lcom/google/android/gms/location/places/internal/e;->ZW:Lcom/google/android/gms/location/places/internal/zzbg;

    invoke-interface {v3, v1, p1, v2, v0}, Lcom/google/android/gms/location/places/internal/zzv;->zza(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/zzbg;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzab;)V

    return-void
.end method
