.class public abstract Lcom/google/android/gms/location/zzv;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/location/zzu;


# direct methods
.method public static zzak(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/zzu;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/zzu;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/zzw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzw;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/location/zzv;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    return p4

    :cond_0
    if-ne p1, p4, :cond_1

    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/zzv;->onLocationChanged(Landroid/location/Location;)V

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
