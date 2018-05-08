.class public final Lcom/google/android/gms/internal/aE;
.super Ljava/lang/Object;


# instance fields
.field public final Iw:Lcom/google/android/gms/common/api/a;

.field private final Ix:Lcom/google/android/gms/common/api/b;

.field private final Rs:Z

.field private final Rt:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aE;->Rs:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aE;->Iw:Lcom/google/android/gms/common/api/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/aE;->Ix:Lcom/google/android/gms/common/api/b;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aE;->Rt:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aE;->Rs:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aE;->Iw:Lcom/google/android/gms/common/api/a;

    iput-object p2, p0, Lcom/google/android/gms/internal/aE;->Ix:Lcom/google/android/gms/common/api/b;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/aE;->Iw:Lcom/google/android/gms/common/api/a;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/google/android/gms/internal/aE;->Ix:Lcom/google/android/gms/common/api/b;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aE;->Rt:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/aE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/aE;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aE;->Rs:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/google/android/gms/internal/aE;->Rs:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aE;->Iw:Lcom/google/android/gms/common/api/a;

    iget-object v3, p1, Lcom/google/android/gms/internal/aE;->Iw:Lcom/google/android/gms/common/api/a;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aE;->Ix:Lcom/google/android/gms/common/api/b;

    iget-object p1, p1, Lcom/google/android/gms/internal/aE;->Ix:Lcom/google/android/gms/common/api/b;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aE;->Rt:I

    return v0
.end method
