.class public Lcom/google/android/gms/location/places/PlacePhotoResult;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/y;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private YT:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/u;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlacePhotoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/BitmapTeleporter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->YT:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object p1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->YT:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->fD()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final fz()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->u(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "bitmap"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mStatus:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->YT:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
