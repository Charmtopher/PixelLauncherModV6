.class final Lcom/google/android/gms/location/places/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzas;

    check-cast p2, Lcom/google/android/gms/location/places/internal/zzas;

    iget p1, p1, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    iget p2, p2, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
