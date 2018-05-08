.class public final Lcom/google/android/gms/internal/K;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public NA:J

.field public Nz:I

.field public Pb:D

.field public Pc:D

.field public Pd:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/K;->Nz:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/K;->Pb:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/K;->Pc:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/K;->NA:J

    sget-object v0, Lcom/google/android/gms/internal/ad;->PQ:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/K;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 8

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    const/16 v1, 0x11

    if-eq v0, v1, :cond_f

    const/16 v1, 0x19

    if-eq v0, v1, :cond_e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_d

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aO(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v3

    move v4, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gM()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_6

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/T;->aQ(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    array-length v3, v3

    :goto_2
    add-int/2addr v4, v3

    new-array v4, v4, [I

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gM()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/K;->a(Lcom/google/android/gms/internal/T;I)Z

    goto :goto_3

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aput v5, v4, v3

    move v3, v2

    goto :goto_3

    :cond_5
    iput-object v4, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aP(I)V

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v1

    new-array v3, v1, [I

    move v4, v2

    move v5, v4

    :goto_4
    if-ge v4, v1, :cond_9

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/K;->a(Lcom/google/android/gms/internal/T;I)Z

    goto :goto_5

    :pswitch_2
    add-int/lit8 v6, v5, 0x1

    aput v7, v3, v5

    move v5, v6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    array-length v0, v0

    :goto_6
    if-nez v0, :cond_b

    if-ne v5, v1, :cond_b

    iput-object v3, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    goto/16 :goto_0

    :cond_b
    add-int v1, v0, v5

    new-array v1, v1, [I

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    invoke-static {v3, v2, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/K;->NA:J

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gK()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/K;->Pc:D

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gK()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/K;->Pb:D

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/K;->a(Lcom/google/android/gms/internal/T;I)Z

    goto/16 :goto_0

    :pswitch_3
    iput v2, p0, Lcom/google/android/gms/internal/K;->Nz:I

    goto/16 :goto_0

    :cond_11
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/K;->Nz:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/K;->Nz:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/K;->Pb:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/internal/K;->Pb:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/U;->a(ID)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/K;->Pc:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/K;->Pc:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(ID)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/K;->NA:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/internal/K;->NA:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/U;->F(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/K;->Nz:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/K;->Nz:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/K;->Pb:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v1, v3, v7

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/K;->Pc:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/K;->NA:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v3, p0, Lcom/google/android/gms/internal/K;->NA:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/U;->aS(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    array-length v1, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_5
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/K;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/K;

    iget v1, p0, Lcom/google/android/gms/internal/K;->Nz:I

    iget v3, p1, Lcom/google/android/gms/internal/K;->Nz:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/K;->Pb:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/K;->Pb:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/K;->Pc:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/K;->Pc:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/K;->NA:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/K;->NA:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/K;->Pd:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

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

.method public final hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/K;->Nz:I

    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/K;->Pb:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/K;->Pc:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/K;->NA:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/K;->NA:J

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/K;->Pd:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/Z;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/K;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method
