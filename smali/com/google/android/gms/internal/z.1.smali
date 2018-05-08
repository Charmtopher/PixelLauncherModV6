.class public final Lcom/google/android/gms/internal/z;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public NQ:I

.field public OA:Lcom/google/android/gms/internal/C;

.field public OB:Lcom/google/android/gms/internal/D;

.field public OC:Lcom/google/android/gms/internal/y;

.field public OD:Lcom/google/android/gms/internal/A;

.field private Oy:J

.field public Oz:Lcom/google/android/gms/internal/B;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/z;->Oy:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/z;->NQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/z;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/A;

    invoke-direct {v0}, Lcom/google/android/gms/internal/A;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/internal/y;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/D;

    invoke-direct {v0}, Lcom/google/android/gms/internal/D;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/C;

    invoke-direct {v0}, Lcom/google/android/gms/internal/C;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/B;

    invoke-direct {v0}, Lcom/google/android/gms/internal/B;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->a(Lcom/google/android/gms/internal/aa;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    const v3, 0x1869f

    if-eq v2, v3, :cond_c

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/T;I)Z

    goto/16 :goto_0

    :cond_c
    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/z;->NQ:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/z;->Oy:J

    goto/16 :goto_0

    :cond_e
    return-object p0

    nop

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
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
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

    :pswitch_data_2
    .packed-switch 0x2710
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
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/z;->Oy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/z;->Oy:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/z;->NQ:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/z;->NQ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/z;->Oy:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/z;->Oy:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/z;->NQ:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/z;->NQ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/z;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/z;

    iget-wide v3, p0, Lcom/google/android/gms/internal/z;->Oy:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/z;->Oy:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/z;->NQ:I

    iget v3, p1, Lcom/google/android/gms/internal/z;->NQ:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    iget-object v3, p1, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    iget-object v3, p1, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/C;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    iget-object v3, p1, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/D;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    if-eqz v1, :cond_b

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    iget-object v3, p1, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/y;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    if-eqz v1, :cond_d

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    iget-object v3, p1, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/A;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_11

    iget-object p1, p1, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_1

    :cond_10
    return v2

    :cond_11
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

    iget-wide v2, p0, Lcom/google/android/gms/internal/z;->Oy:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/z;->Oy:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/z;->NQ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->Oz:Lcom/google/android/gms/internal/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/B;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OA:Lcom/google/android/gms/internal/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/C;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OB:Lcom/google/android/gms/internal/D;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/D;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OC:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->OD:Lcom/google/android/gms/internal/A;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/A;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/z;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v2

    :cond_6
    :goto_5
    add-int/2addr v1, v2

    return v1
.end method
