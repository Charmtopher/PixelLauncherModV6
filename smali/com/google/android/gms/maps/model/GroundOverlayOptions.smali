.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private abC:F

.field private abD:Z

.field private abE:Z

.field private abH:Lcom/google/android/gms/maps/model/a;

.field private abI:Lcom/google/android/gms/maps/model/LatLng;

.field private abJ:F

.field private abK:F

.field private abL:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private abM:F

.field private abN:F

.field private abO:F

.field private abP:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abD:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abN:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abO:F

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abP:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abE:Z

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abD:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abN:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abO:F

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abP:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abE:Z

    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzO(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abH:Lcom/google/android/gms/maps/model/a;

    iput-object p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abI:Lcom/google/android/gms/maps/model/LatLng;

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abJ:F

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abK:F

    iput-object p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abL:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abM:F

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abC:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abD:Z

    iput p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abN:F

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abO:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abP:F

    iput-boolean p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abE:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abH:Lcom/google/android/gms/maps/model/a;

    iget-object v1, v1, Lcom/google/android/gms/maps/model/a;->abt:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abI:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abJ:F

    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abK:F

    const/4 v3, 0x5

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget-object v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abL:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abM:F

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abC:F

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abD:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abN:F

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abO:F

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abP:F

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->abE:Z

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
