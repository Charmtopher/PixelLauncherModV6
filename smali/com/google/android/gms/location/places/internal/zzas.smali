.class public final Lcom/google/android/gms/location/places/internal/zzas;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/location/places/f;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

.field public Zw:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/places/internal/PlaceEntity;F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iput p2, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/places/internal/PlaceEntity;F)Lcom/google/android/gms/location/places/internal/zzas;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzas;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/internal/zzas;-><init>(Lcom/google/android/gms/location/places/internal/PlaceEntity;F)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/internal/zzas;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/internal/zzas;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    iget p1, p1, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hY()Lcom/google/android/gms/location/places/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->u(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "place"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "likelihood"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget p2, p0, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
