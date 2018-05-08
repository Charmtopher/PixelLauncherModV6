.class public final Lcom/google/android/gms/internal/adi;
.super Lcom/google/android/gms/internal/zzed;

# interfaces
.implements Lcom/google/android/gms/internal/adh;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzed;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/internal/zzal;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adi;->zzY()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/adi;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/adk;Lcom/google/android/gms/internal/adf;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adi;->zzY()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/df;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/adi;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzcX(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adi;->zzY()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/adi;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
