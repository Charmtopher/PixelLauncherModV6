.class public final Lcom/google/android/gms/location/places/NearbyAlertRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final YH:I

.field private final YI:Lcom/google/android/gms/location/places/PlaceFilter;

.field private final YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

.field private final YK:Z

.field private final YL:I

.field private final Yl:I

.field private gV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/q;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/NearbyAlertFilter;ZII)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->gV:I

    iput p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Yl:I

    iput p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YH:I

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object p2, p3, Lcom/google/android/gms/location/places/PlaceFilter;->YE:Ljava/util/Set;

    if-eqz p2, :cond_1

    iget-object p2, p3, Lcom/google/android/gms/location/places/PlaceFilter;->YE:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p3, Lcom/google/android/gms/location/places/PlaceFilter;->YE:Ljava/util/Set;

    invoke-static {p2}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->b(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_1

    :cond_1
    iget-object p2, p3, Lcom/google/android/gms/location/places/PlaceFilter;->YF:Ljava/util/Set;

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/google/android/gms/location/places/PlaceFilter;->YF:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p3, Lcom/google/android/gms/location/places/PlaceFilter;->YF:Ljava/util/Set;

    invoke-static {p2}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->c(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object p2

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YI:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-boolean p5, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YK:Z

    iput p6, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YL:I

    iput p7, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->gV:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Yl:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Yl:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YH:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YH:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->gV:I

    iget p1, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->gV:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Yl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->gV:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->u(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Yl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "nearbyAlertFilter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->gV:I

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

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Yl:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YH:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YJ:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    const/4 v3, 0x4

    invoke-static {p1, v3, v2, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YK:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->YL:I

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->gV:I

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
