.class public final Lcom/google/android/gms/internal/ag;
.super Lcom/google/android/gms/internal/V;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private Qf:[B

.field private Qg:Ljava/lang/String;

.field private Qh:[[B

.field private Qi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ad;->PX:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ad;->PW:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ag;->Qi:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ag;->PK:I

    return-void
.end method

.method private gZ()Lcom/google/android/gms/internal/ag;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/V;->gO()Lcom/google/android/gms/internal/V;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    invoke-virtual {v1}, [[B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ag;->Qi:Z

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [[B

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    sget-object v1, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/U;->a(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/U;->a(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ag;->Qi:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ag;->Qi:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->f(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ag;->gZ()Lcom/google/android/gms/internal/ag;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    sget-object v2, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/U;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/U;->f([B)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ag;->Qi:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ag;

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ag;->Qf:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ag;->Qh:[[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->a([[B[[B)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ag;->Qi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ag;->Qi:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    :goto_1
    return v0
.end method

.method public final synthetic gO()Lcom/google/android/gms/internal/V;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ag;

    return-object v0
.end method

.method public final synthetic gP()Lcom/google/android/gms/internal/aa;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ag;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qf:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->Qh:[[B

    invoke-static {v0}, Lcom/google/android/gms/internal/Z;->a([[B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ag;->Qi:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
    add-int/2addr v1, v2

    return v1
.end method
