.class public final Lcom/google/android/gms/location/internal/zzbc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Ie:Landroid/app/PendingIntent;

.field private Ya:I

.field private Yb:Lcom/google/android/gms/location/internal/zzba;

.field private Yc:Lcom/google/android/gms/location/zzu;

.field private Yd:Lcom/google/android/gms/location/zzr;

.field private Ye:Lcom/google/android/gms/location/internal/zzah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/zzbc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/internal/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/zzbc;->Ya:I

    iput-object p2, p0, Lcom/google/android/gms/location/internal/zzbc;->Yb:Lcom/google/android/gms/location/internal/zzba;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/location/zzv;->zzak(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzu;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/location/internal/zzbc;->Yc:Lcom/google/android/gms/location/zzu;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/zzbc;->Ie:Landroid/app/PendingIntent;

    if-nez p5, :cond_1

    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-static {p5}, Lcom/google/android/gms/location/zzs;->zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzr;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/location/internal/zzbc;->Yd:Lcom/google/android/gms/location/zzr;

    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    if-nez p6, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/location/internal/zzah;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/google/android/gms/location/internal/zzah;

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/android/gms/location/internal/zzaj;

    invoke-direct {p1, p6}, Lcom/google/android/gms/location/internal/zzaj;-><init>(Landroid/os/IBinder;)V

    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzbc;->Ye:Lcom/google/android/gms/location/internal/zzah;

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/zzr;Lcom/google/android/gms/location/internal/zzah;)Lcom/google/android/gms/location/internal/zzbc;
    .locals 8

    new-instance v7, Lcom/google/android/gms/location/internal/zzbc;

    invoke-interface {p0}, Lcom/google/android/gms/location/zzr;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/location/internal/zzah;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    move-object v6, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/internal/zzbc;-><init>(ILcom/google/android/gms/location/internal/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static a(Lcom/google/android/gms/location/zzu;Lcom/google/android/gms/location/internal/zzah;)Lcom/google/android/gms/location/internal/zzbc;
    .locals 8

    new-instance v7, Lcom/google/android/gms/location/internal/zzbc;

    invoke-interface {p0}, Lcom/google/android/gms/location/zzu;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/location/internal/zzah;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    move-object v6, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/internal/zzbc;-><init>(ILcom/google/android/gms/location/internal/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Ya:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Yb:Lcom/google/android/gms/location/internal/zzba;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Yc:Lcom/google/android/gms/location/zzu;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Yc:Lcom/google/android/gms/location/zzu;

    invoke-interface {v1}, Lcom/google/android/gms/location/zzu;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    invoke-static {p1, v4, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/google/android/gms/location/internal/zzbc;->Ie:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Yd:Lcom/google/android/gms/location/zzr;

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Yd:Lcom/google/android/gms/location/zzr;

    invoke-interface {v1}, Lcom/google/android/gms/location/zzr;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Ye:Lcom/google/android/gms/location/internal/zzah;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzbc;->Ye:Lcom/google/android/gms/location/internal/zzah;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/zzah;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-static {p1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
