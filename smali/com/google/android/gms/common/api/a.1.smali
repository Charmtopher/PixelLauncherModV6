.class public final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;


# instance fields
.field private final It:Lcom/google/android/gms/common/api/m;

.field private final Iu:Lcom/google/android/gms/common/api/k;

.field private final Iv:Lcom/google/android/gms/common/api/n;

.field public final mName:Ljava/lang/String;

.field public final zzaMd:Lcom/google/android/gms/common/api/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a;->zzaMd:Lcom/google/android/gms/common/api/f;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->It:Lcom/google/android/gms/common/api/m;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a;->Iu:Lcom/google/android/gms/common/api/k;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->Iv:Lcom/google/android/gms/common/api/n;

    return-void
.end method


# virtual methods
.method public final fn()Lcom/google/android/gms/common/api/f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->zzaMd:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->zzaMd:Lcom/google/android/gms/common/api/f;

    return-object v0
.end method

.method public final fo()Lcom/google/android/gms/common/api/h;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->Iu:Lcom/google/android/gms/common/api/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->Iu:Lcom/google/android/gms/common/api/k;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
