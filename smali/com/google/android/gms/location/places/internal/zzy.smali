.class public final Lcom/google/android/gms/location/places/internal/zzy;
.super Lcom/google/android/gms/internal/zzed;

# interfaces
.implements Lcom/google/android/gms/location/places/internal/zzx;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzed;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/location/places/internal/zzbg;Lcom/google/android/gms/location/places/internal/zzab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzy;->zzY()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzy;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
