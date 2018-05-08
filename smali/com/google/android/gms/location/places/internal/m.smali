.class public final Lcom/google/android/gms/location/places/internal/m;
.super Lcom/google/android/gms/location/places/internal/q;


# instance fields
.field private final aam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/q;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string p1, "photo_fife_url"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/m;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/m;->aam:Ljava/lang/String;

    return-void
.end method
