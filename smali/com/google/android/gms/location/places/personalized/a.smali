.class public final Lcom/google/android/gms/location/places/personalized/a;
.super Lcom/google/android/gms/common/data/g;

# interfaces
.implements Lcom/google/android/gms/common/api/y;


# instance fields
.field private final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    iget v0, p1, Lcom/google/android/gms/common/data/DataHolder;->Id:I

    invoke-static {v0}, Lcom/google/android/gms/location/places/m;->bj(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/personalized/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/g;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/google/android/gms/common/data/DataHolder;->Id:I

    iget v0, p2, Lcom/google/android/gms/common/api/Status;->Id:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->F(Z)V

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/a;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final fz()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/a;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
