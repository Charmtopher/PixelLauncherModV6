.class public final Lcom/google/android/gms/internal/C;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public OF:J

.field private OG:Ljava/lang/String;

.field private OH:Ljava/lang/String;

.field private OI:[B

.field private OJ:[I

.field private OK:[Ljava/lang/String;

.field private OL:J

.field private OM:I

.field private ON:Ljava/lang/String;

.field public priority:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/C;->type:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/C;->OF:J

    iput v0, p0, Lcom/google/android/gms/internal/C;->priority:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ad;->PX:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->OI:[B

    sget-object v1, Lcom/google/android/gms/internal/ad;->PQ:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    sget-object v1, Lcom/google/android/gms/internal/ad;->PV:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/C;->OL:J

    iput v0, p0, Lcom/google/android/gms/internal/C;->OM:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/C;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/C;->OM:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/C;->OL:J

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aO(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v2

    move v3, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gM()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/T;->aQ(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    array-length v1, v3

    if-ge v2, v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    iput-object v3, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aP(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    array-length v2, v2

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_7
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->OI:[B

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v3, 0x64

    if-eq v2, v3, :cond_b

    const/16 v3, 0x66

    if-eq v2, v3, :cond_b

    packed-switch v2, :pswitch_data_0

    goto :goto_8

    :cond_b
    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/C;->priority:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/C;->OF:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/C;->a(Lcom/google/android/gms/internal/T;I)Z

    goto/16 :goto_0

    :pswitch_1
    iput v2, p0, Lcom/google/android/gms/internal/C;->type:I

    goto/16 :goto_0

    :sswitch_c
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x38 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x68
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
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/C;->type:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/C;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/C;->OF:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/C;->OF:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/C;->priority:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/C;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OI:[B

    sget-object v1, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OI:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(I[B)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/U;->F(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/internal/C;->OL:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/android/gms/internal/C;->OL:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/C;->OM:I

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/gms/internal/C;->OM:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_b
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/C;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/C;->type:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/C;->OF:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/internal/C;->OF:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/C;->priority:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v3, p0, Lcom/google/android/gms/internal/C;->priority:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OI:[B

    sget-object v3, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/C;->OI:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/U;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    array-length v1, v1

    if-lez v1, :cond_7

    move v1, v3

    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    array-length v5, v5

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/U;->aS(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v3

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/U;->F(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    add-int/2addr v0, v1

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_a
    iget-wide v1, p0, Lcom/google/android/gms/internal/C;->OL:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/C;->OL:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/C;->OM:I

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/internal/C;->OM:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/C;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/C;

    iget v1, p0, Lcom/google/android/gms/internal/C;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/C;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/C;->OF:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/C;->OF:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/C;->priority:I

    iget v3, p1, Lcom/google/android/gms/internal/C;->priority:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OI:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/C;->OI:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/C;->OJ:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/google/android/gms/internal/C;->OL:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/C;->OL:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/google/android/gms/internal/C;->OM:I

    iget v3, p1, Lcom/google/android/gms/internal/C;->OM:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    if-eqz v1, :cond_f

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_13

    iget-object p1, p1, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_1

    :cond_12
    return v2

    :cond_13
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/C;->type:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/C;->OF:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/C;->OF:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/C;->priority:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OI:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OJ:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/Z;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->OK:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/Z;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/C;->OL:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/C;->OL:J

    ushr-long/2addr v6, v0

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/C;->OM:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->ON:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v3

    :cond_4
    :goto_3
    add-int/2addr v1, v3

    return v1
.end method
