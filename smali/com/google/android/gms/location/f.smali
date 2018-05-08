.class final Lcom/google/android/gms/location/f;
.super Lcom/google/android/gms/common/api/f;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;
    .locals 7

    new-instance p4, Lcom/google/android/gms/location/internal/i;

    const-string v5, "locationServices"

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;Ljava/lang/String;Lcom/google/android/gms/common/internal/G;)V

    return-object p4
.end method
