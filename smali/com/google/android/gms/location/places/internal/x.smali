.class final Lcom/google/android/gms/location/places/internal/x;
.super Lcom/google/android/gms/location/places/z;


# instance fields
.field private synthetic aaw:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;[Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/x;->aaw:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/z;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/g;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/location/places/internal/y;

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/x;->aaw:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/places/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzo;-><init>(Lcom/google/android/gms/location/places/z;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/y;->fU()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/places/internal/zzx;

    iget-object p1, p1, Lcom/google/android/gms/location/places/internal/y;->ZW:Lcom/google/android/gms/location/places/internal/zzbg;

    invoke-interface {v2, v0, p1, v1}, Lcom/google/android/gms/location/places/internal/zzx;->zza(Ljava/util/List;Lcom/google/android/gms/location/places/internal/zzbg;Lcom/google/android/gms/location/places/internal/zzab;)V

    return-void
.end method
