.class public Lcom/google/android/gms/location/places/d;
.super Lcom/google/android/gms/common/data/a;

# interfaces
.implements Lcom/google/android/gms/common/api/y;


# instance fields
.field private final YM:Ljava/lang/String;

.field public final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iget v0, p1, Lcom/google/android/gms/common/data/DataHolder;->Id:I

    invoke-static {v0}, Lcom/google/android/gms/location/places/m;->bj(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/d;->mStatus:Lcom/google/android/gms/common/api/Status;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/common/data/DataHolder;->Jr:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/common/data/DataHolder;->Jr:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.location.places.PlaceBuffer.ATTRIBUTIONS_EXTRA_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/location/places/d;->YM:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bh(I)Lcom/google/android/gms/location/places/c;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/internal/n;

    iget-object v1, p0, Lcom/google/android/gms/location/places/d;->Jj:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/n;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public final fz()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/d;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/d;->bh(I)Lcom/google/android/gms/location/places/c;

    move-result-object p1

    return-object p1
.end method
