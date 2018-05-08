.class public final Lcom/google/android/gms/location/places/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/places/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/r;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/v;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/internal/c;

    sget-object v1, Lcom/google/android/gms/location/places/j;->Zc:Lcom/google/android/gms/common/api/a;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/location/places/internal/c;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/r;Lcom/google/android/gms/location/places/PlaceRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/v;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/internal/d;

    sget-object v1, Lcom/google/android/gms/location/places/j;->Zc:Lcom/google/android/gms/common/api/a;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/location/places/internal/d;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;Lcom/google/android/gms/location/places/PlaceRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method
