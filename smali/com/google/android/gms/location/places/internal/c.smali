.class final Lcom/google/android/gms/location/places/internal/c;
.super Lcom/google/android/gms/location/places/C;


# instance fields
.field private synthetic ZU:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/c;->ZU:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/C;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/g;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/location/places/internal/e;

    new-instance v0, Lcom/google/android/gms/location/places/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzo;-><init>(Lcom/google/android/gms/location/places/C;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/c;->ZU:Landroid/app/PendingIntent;

    const-string v2, "callbackIntent == null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/e;->fU()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/places/internal/zzv;

    iget-object p1, p1, Lcom/google/android/gms/location/places/internal/e;->ZW:Lcom/google/android/gms/location/places/internal/zzbg;

    invoke-interface {v2, p1, v1, v0}, Lcom/google/android/gms/location/places/internal/zzv;->zza(Lcom/google/android/gms/location/places/internal/zzbg;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzab;)V

    return-void
.end method
