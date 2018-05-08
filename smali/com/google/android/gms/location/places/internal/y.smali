.class public final Lcom/google/android/gms/location/places/internal/y;
.super Lcom/google/android/gms/common/internal/N;


# instance fields
.field final ZW:Lcom/google/android/gms/location/places/internal/zzbg;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;Ljava/lang/String;)V
    .locals 10

    move-object v7, p3

    const/16 v3, 0x41

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/N;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    iget-object v0, v7, Lcom/google/android/gms/common/internal/G;->GT:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/common/internal/G;->GT:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzbg;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object/from16 v5, p6

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/location/places/internal/zzbg;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/y;->ZW:Lcom/google/android/gms/location/places/internal/zzbg;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;Ljava/lang/String;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/location/places/internal/y;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/places/internal/zzx;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzx;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/places/internal/zzy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final fi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.GeoDataApi"

    return-object v0
.end method

.method protected final fj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    return-object v0
.end method
