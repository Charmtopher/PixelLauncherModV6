.class public Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/y;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private YR:Lcom/google/android/gms/common/data/DataHolder;

.field private final YS:Lcom/google/android/gms/location/places/h;

.field private final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/t;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->YR:Lcom/google/android/gms/common/data/DataHolder;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->YS:Lcom/google/android/gms/location/places/h;

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/h;

    iget-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->YR:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {p1, p2}, Lcom/google/android/gms/location/places/h;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public final fz()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->YR:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
