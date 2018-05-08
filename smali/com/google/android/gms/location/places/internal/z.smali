.class public final Lcom/google/android/gms/location/places/internal/z;
.super Lcom/google/android/gms/common/api/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;
    .locals 8

    check-cast p4, Lcom/google/android/gms/location/places/k;

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/location/places/l;

    invoke-direct {p4}, Lcom/google/android/gms/location/places/l;-><init>()V

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/l;->hZ()Lcom/google/android/gms/location/places/k;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance p4, Lcom/google/android/gms/location/places/internal/y;

    const/4 v7, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/internal/y;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;Ljava/lang/String;B)V

    return-object p4
.end method
