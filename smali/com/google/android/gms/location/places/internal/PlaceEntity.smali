.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;
.implements Lcom/google/android/gms/location/places/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final GA:Ljava/lang/String;

.field public final Yq:Lcom/google/android/gms/maps/model/LatLng;

.field public final Yr:Ljava/lang/String;

.field private final Ys:Ljava/util/List;

.field public final Yt:Ljava/lang/String;

.field public final Yu:Landroid/net/Uri;

.field public final ZA:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final ZB:Ljava/lang/String;

.field public final ZC:Z

.field public final ZD:F

.field public final ZE:I

.field private final ZF:Ljava/util/List;

.field private final ZG:Ljava/lang/String;

.field public final ZH:Ljava/util/List;

.field public final ZI:Lcom/google/android/gms/location/places/internal/zzax;

.field private final ZJ:Lcom/google/android/gms/location/places/internal/zzaq;

.field private final ZK:Ljava/util/Map;

.field private final ZL:Ljava/util/TimeZone;

.field public Zj:Ljava/util/Locale;

.field private final Zx:Landroid/os/Bundle;

.field private final Zy:Lcom/google/android/gms/location/places/internal/zzav;

.field public final Zz:F

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFILcom/google/android/gms/location/places/internal/zzav;Lcom/google/android/gms/location/places/internal/zzax;Lcom/google/android/gms/location/places/internal/zzaq;)V
    .locals 2

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Ys:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZF:Ljava/util/List;

    if-eqz p4, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zx:Landroid/os/Bundle;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yr:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yt:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZG:Ljava/lang/String;

    if-eqz p9, :cond_1

    move-object v1, p9

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZH:Ljava/util/List;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yq:Lcom/google/android/gms/maps/model/LatLng;

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zz:F

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZA:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz p13, :cond_2

    move-object v1, p13

    goto :goto_2

    :cond_2
    const-string v1, "UTC"

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZB:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yu:Landroid/net/Uri;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZC:Z

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZD:F

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZE:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZK:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZL:Ljava/util/TimeZone;

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zy:Lcom/google/android/gms/location/places/internal/zzav;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZI:Lcom/google/android/gms/location/places/internal/zzax;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZJ:Lcom/google/android/gms/location/places/internal/zzaq;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    iget-object p1, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    return-object v0
.end method

.method public final hX()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Ys:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

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

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "placeTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Ys:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yq:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZA:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yu:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zx:Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zy:Lcom/google/android/gms/location/places/internal/zzav;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yq:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zz:F

    const/4 v3, 0x5

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZA:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZB:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yu:Landroid/net/Uri;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZC:Z

    const/16 v3, 0x9

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZD:F

    const/16 v3, 0xa

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZE:I

    const/16 v3, 0xb

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZF:Ljava/util/List;

    const/16 v3, 0xd

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yr:Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0xe

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yt:Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0xf

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZG:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZH:Ljava/util/List;

    const/16 v3, 0x11

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Ys:Ljava/util/List;

    const/16 v3, 0x14

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZI:Lcom/google/android/gms/location/places/internal/zzax;

    const/16 v3, 0x15

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZJ:Lcom/google/android/gms/location/places/internal/zzaq;

    const/16 v3, 0x16

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
