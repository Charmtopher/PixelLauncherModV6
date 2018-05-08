.class public final Lcom/google/android/gms/internal/o;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public NA:J

.field public NB:[I

.field public Nz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/o;->Nz:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/o;->NA:J

    sget-object v0, Lcom/google/android/gms/internal/ad;->PQ:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->NB:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/o;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 9

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x10

    if-eq v0, v1, :cond_10

    const/16 v1, -0x3e8

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_1

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

    move-result v4

    move v5, v3

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gM()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v6

    if-eq v6, v1, :cond_2

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :cond_2
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_8

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/T;->aQ(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/o;->NB:[I

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/internal/o;->NB:[I

    array-length v4, v4

    :goto_2
    add-int/2addr v5, v4

    new-array v5, v5, [I

    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/google/android/gms/internal/o;->NB:[I

    invoke-static {v6, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gM()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v6

    if-eq v6, v1, :cond_6

    packed-switch v6, :pswitch_data_1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/o;->a(Lcom/google/android/gms/internal/T;I)Z

    goto :goto_3

    :cond_6
    :pswitch_1
    add-int/lit8 v3, v4, 0x1

    aput v6, v5, v4

    move v4, v3

    goto :goto_3

    :cond_7
    iput-object v5, p0, Lcom/google/android/gms/internal/o;->NB:[I

    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aP(I)V

    goto :goto_0

    :cond_9
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v2

    new-array v4, v2, [I

    move v5, v3

    move v6, v5

    :goto_4
    if-ge v5, v2, :cond_c

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v8

    if-eq v8, v1, :cond_b

    packed-switch v8, :pswitch_data_2

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/o;->a(Lcom/google/android/gms/internal/T;I)Z

    goto :goto_5

    :cond_b
    :pswitch_2
    add-int/lit8 v7, v6, 0x1

    aput v8, v4, v6

    move v6, v7

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->NB:[I

    if-nez v0, :cond_d

    move v0, v3

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->NB:[I

    array-length v0, v0

    :goto_6
    if-nez v0, :cond_e

    if-ne v6, v2, :cond_e

    iput-object v4, p0, Lcom/google/android/gms/internal/o;->NB:[I

    goto/16 :goto_0

    :cond_e
    add-int v1, v0, v6

    new-array v1, v1, [I

    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->NB:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    invoke-static {v4, v3, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/o;->NB:[I

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/o;->NA:J

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/o;->a(Lcom/google/android/gms/internal/T;I)Z

    goto/16 :goto_0

    :pswitch_3
    iput v2, p0, Lcom/google/android/gms/internal/o;->Nz:I

    goto/16 :goto_0

    :cond_12
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/o;->Nz:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/o;->Nz:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/o;->NA:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/o;->NA:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->NB:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->NB:[I

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/o;->NB:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->NB:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/U;->F(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/o;->Nz:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/o;->Nz:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/o;->NA:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/internal/o;->NA:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/o;->NB:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->NB:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/o;->NB:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/o;->NB:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/U;->aS(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->NB:[I

    array-length v1, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/o;

    iget v1, p0, Lcom/google/android/gms/internal/o;->Nz:I

    iget v3, p1, Lcom/google/android/gms/internal/o;->Nz:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/o;->NA:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/o;->NA:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/o;->NB:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/o;->NB:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
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

    iget v0, p0, Lcom/google/android/gms/internal/o;->Nz:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/o;->NA:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/o;->NA:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->NB:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/Z;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->PA:Lcom/google/android/gms/internal/X;

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
