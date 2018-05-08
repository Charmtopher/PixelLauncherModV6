.class public final Lcom/google/android/gms/location/places/internal/zzw;
.super Lcom/google/android/gms/internal/zzed;

# interfaces
.implements Lcom/google/android/gms/location/places/internal/zzv;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzed;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/zzbg;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzw;->zzY()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzw;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/places/internal/zzbg;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzw;->zzY()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzw;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
