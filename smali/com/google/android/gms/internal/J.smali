.class public final Lcom/google/android/gms/internal/J;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public NA:J

.field public Nz:I

.field public OJ:[I

.field public OK:[Ljava/lang/String;

.field public ON:Ljava/lang/String;

.field public OW:J

.field public Pa:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/J;->Nz:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/J;->NA:J

    sget-object v2, Lcom/google/android/gms/internal/ad;->PQ:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    sget-object v2, Lcom/google/android/gms/internal/ad;->PV:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/android/gms/internal/J;->OW:J

    sget-object v0, Lcom/google/android/gms/internal/ad;->PV:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/J;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    const/16 v1, 0x10

    if-eq v0, v1, :cond_14

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/J;->OW:J

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aO(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    move v3, v2

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gM()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    array-length v1, v1

    :goto_6
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_7
    array-length v2, v3

    if-ge v1, v2, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    iput-object v3, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aP(I)V

    goto/16 :goto_0

    :cond_10
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_9
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/J;->NA:J

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/J;->a(Lcom/google/android/gms/internal/T;I)Z

    goto/16 :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/J;->Nz:I

    goto/16 :goto_0

    :cond_16
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/J;->Nz:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/J;->Nz:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/J;->NA:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->NA:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    aget v5, v5, v0

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/U;->F(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->OW:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/J;->OW:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/J;->Nz:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/J;->Nz:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/J;->NA:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/internal/J;->NA:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v3

    move v4, v1

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    array-length v7, v7

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    aget v7, v7, v1

    invoke-static {v7}, Lcom/google/android/gms/internal/U;->aS(I)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v3

    move v4, v1

    move v7, v4

    :goto_1
    iget-object v8, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_5

    iget-object v8, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    aget-object v8, v8, v1

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v8}, Lcom/google/android/gms/internal/U;->F(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v4, v8

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v4

    mul-int/2addr v7, v2

    add-int/2addr v0, v7

    :cond_6
    iget-wide v7, p0, Lcom/google/android/gms/internal/J;->OW:J

    cmp-long v1, v7, v5

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->OW:J

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v3

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/U;->F(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v1

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/J;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/J;

    iget v1, p0, Lcom/google/android/gms/internal/J;->Nz:I

    iget v3, p1, Lcom/google/android/gms/internal/J;->Nz:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/J;->NA:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/J;->NA:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/J;->OJ:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/google/android/gms/internal/J;->OW:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/J;->OW:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    return v2

    :cond_d
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

    iget v0, p0, Lcom/google/android/gms/internal/J;->Nz:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/J;->NA:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->NA:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/J;->OJ:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/Z;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/J;->OK:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/Z;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/J;->OW:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->OW:J

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->Pa:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/Z;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->ON:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
    add-int/2addr v1, v2

    return v1
.end method
