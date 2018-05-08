.class public final Lcom/google/android/gms/location/places/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/places/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/common/api/r;[Ljava/lang/String;)Lcom/google/android/gms/common/api/v;
    .locals 2

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->F(Z)V

    new-instance v0, Lcom/google/android/gms/location/places/internal/x;

    sget-object v1, Lcom/google/android/gms/location/places/j;->Zb:Lcom/google/android/gms/common/api/a;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/location/places/internal/x;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/r;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method
