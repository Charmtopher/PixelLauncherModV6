.class final Lcom/google/android/gms/internal/Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private PH:Lcom/google/android/gms/internal/W;

.field PI:Ljava/util/List;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    return-void
.end method

.method private gQ()Lcom/google/android/gms/internal/Y;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/Y;

    invoke-direct {v0}, Lcom/google/android/gms/internal/Y;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->PH:Lcom/google/android/gms/internal/W;

    iput-object v1, v0, Lcom/google/android/gms/internal/Y;->PH:Lcom/google/android/gms/internal/W;

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/aa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/aa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aa;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aa;

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [[B

    array-length v3, v1

    new-array v3, v3, [[B

    iput-object v3, v0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_9

    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/android/gms/internal/aa;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/aa;

    array-length v3, v1

    new-array v3, v3, [Lcom/google/android/gms/internal/aa;

    iput-object v3, v0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_9

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/aa;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/aa;

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private final toByteArray()[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/Y;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/U;->d([BI)Lcom/google/android/gms/internal/U;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/Y;->a(Lcom/google/android/gms/internal/U;)V

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/U;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PH:Lcom/google/android/gms/internal/W;

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    :try_start_0
    iget v2, v0, Lcom/google/android/gms/internal/W;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/U;->aU(I)V

    iget v2, v0, Lcom/google/android/gms/internal/W;->type:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/aa;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/U;->b(Lcom/google/android/gms/internal/aa;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/google/android/gms/internal/aa;

    iget v0, v0, Lcom/google/android/gms/internal/W;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/U;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->H(II)V

    return-void

    :goto_0
    iget v0, v0, Lcom/google/android/gms/internal/W;->type:I

    const/16 v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ac;

    iget v2, v1, Lcom/google/android/gms/internal/ac;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/U;->aU(I)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ac;->PL:[B

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/U;->g([B)V

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/Y;->gQ()Lcom/google/android/gms/internal/Y;

    move-result-object v0

    return-object v0
.end method

.method final computeSerializedSize()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PH:Lcom/google/android/gms/internal/W;

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    iget v2, v0, Lcom/google/android/gms/internal/W;->tag:I

    ushr-int/lit8 v2, v2, 0x3

    iget v3, v0, Lcom/google/android/gms/internal/W;->type:I

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v0, v0, Lcom/google/android/gms/internal/W;->type:I

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/aa;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v0

    goto :goto_1

    :pswitch_1
    check-cast v1, Lcom/google/android/gms/internal/aa;

    shl-int/lit8 v0, v2, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aa;->gW()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ac;

    iget v4, v3, Lcom/google/android/gms/internal/ac;->tag:I

    invoke-static {v4}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v4

    add-int/2addr v4, v1

    iget-object v3, v3, Lcom/google/android/gms/internal/ac;->PL:[B

    array-length v3, v3

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/Y;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/Y;

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PH:Lcom/google/android/gms/internal/W;

    iget-object v2, p1, Lcom/google/android/gms/internal/Y;->PH:Lcom/google/android/gms/internal/W;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PH:Lcom/google/android/gms/internal/W;

    iget-object v0, v0, Lcom/google/android/gms/internal/W;->PB:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/internal/Y;->PI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/Y;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/Y;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x20f

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/Y;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
