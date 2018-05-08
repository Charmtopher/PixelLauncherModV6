.class public Lcom/google/android/gms/location/places/j;
.super Ljava/lang/Object;


# static fields
.field private static YZ:Lcom/google/android/gms/common/api/k;

.field private static Za:Lcom/google/android/gms/common/api/k;

.field public static final Zb:Lcom/google/android/gms/common/api/a;

.field public static final Zc:Lcom/google/android/gms/common/api/a;

.field public static final Zd:Lcom/google/android/gms/location/places/b;

.field public static final Ze:Lcom/google/android/gms/location/places/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/j;->YZ:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/j;->Za:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Places.GEO_DATA_API"

    new-instance v2, Lcom/google/android/gms/location/places/internal/z;

    invoke-direct {v2}, Lcom/google/android/gms/location/places/internal/z;-><init>()V

    sget-object v3, Lcom/google/android/gms/location/places/j;->YZ:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/location/places/j;->Zb:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Places.PLACE_DETECTION_API"

    new-instance v2, Lcom/google/android/gms/location/places/internal/f;

    invoke-direct {v2}, Lcom/google/android/gms/location/places/internal/f;-><init>()V

    sget-object v3, Lcom/google/android/gms/location/places/j;->Za:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/location/places/j;->Zc:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/location/places/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/j;->Zd:Lcom/google/android/gms/location/places/b;

    new-instance v0, Lcom/google/android/gms/location/places/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/j;->Ze:Lcom/google/android/gms/location/places/e;

    return-void
.end method
