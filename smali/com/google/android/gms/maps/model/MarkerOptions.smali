.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private abC:F

.field private abD:Z

.field private abO:F

.field private abP:F

.field private abT:Ljava/lang/String;

.field private abU:Ljava/lang/String;

.field private abV:Lcom/google/android/gms/maps/model/a;

.field private abW:Z

.field private abX:Z

.field private abY:F

.field private abZ:F

.field private abo:Lcom/google/android/gms/maps/model/LatLng;

.field private aca:F

.field private mAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/k;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abO:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abP:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abD:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abX:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abY:F

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abZ:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aca:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 4

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abO:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abP:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abD:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abX:Z

    const/4 v3, 0x0

    iput v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abY:F

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abZ:F

    iput v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->aca:F

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abo:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abT:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abU:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abV:Lcom/google/android/gms/maps/model/a;

    :goto_0
    move v1, p5

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/gms/maps/model/a;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzO(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abV:Lcom/google/android/gms/maps/model/a;

    goto :goto_0

    :goto_1
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abO:F

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abP:F

    move v1, p7

    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abW:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abD:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abX:Z

    move v1, p10

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abY:F

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abZ:F

    move/from16 v1, p12

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->aca:F

    move/from16 v1, p13

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->abC:F

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abo:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abT:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abU:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abV:Lcom/google/android/gms/maps/model/a;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abV:Lcom/google/android/gms/maps/model/a;

    iget-object p2, p2, Lcom/google/android/gms/maps/model/a;->abt:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 p2, 0x6

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abO:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 p2, 0x7

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abP:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abW:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abD:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abX:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abY:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 p2, 0xc

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abZ:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 p2, 0xd

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->aca:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 p2, 0xe

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 p2, 0xf

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->abC:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
