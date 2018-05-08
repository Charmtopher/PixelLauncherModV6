.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private abC:F

.field private abD:Z

.field private abN:F

.field private acq:Lcom/google/android/gms/maps/model/internal/zzz;

.field private acr:Lcom/google/android/gms/maps/model/c;

.field private acs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/v;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acs:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abN:F

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;ZFZF)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acs:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abN:F

    invoke-static {p1}, Lcom/google/android/gms/maps/model/internal/zzaa;->zzau(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acq:Lcom/google/android/gms/maps/model/internal/zzz;

    iget-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acq:Lcom/google/android/gms/maps/model/internal/zzz;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/maps/model/u;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/u;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acr:Lcom/google/android/gms/maps/model/c;

    iput-boolean p2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abD:Z

    iput p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abC:F

    iput-boolean p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acs:Z

    iput p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abN:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acq:Lcom/google/android/gms/maps/model/internal/zzz;

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acq:Lcom/google/android/gms/maps/model/internal/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzz;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abD:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abC:F

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->acs:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->abN:F

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
