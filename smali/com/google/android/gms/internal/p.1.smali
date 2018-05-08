.class public final Lcom/google/android/gms/internal/p;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public NA:J

.field public NC:I

.field public ND:I

.field public NE:I

.field public NF:I

.field public NG:I

.field public NH:I

.field public Nz:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/p;->Nz:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/p;->NA:J

    iput v0, p0, Lcom/google/android/gms/internal/p;->NC:I

    iput v0, p0, Lcom/google/android/gms/internal/p;->ND:I

    iput v0, p0, Lcom/google/android/gms/internal/p;->NE:I

    iput v0, p0, Lcom/google/android/gms/internal/p;->NF:I

    iput v0, p0, Lcom/google/android/gms/internal/p;->NG:I

    iput v0, p0, Lcom/google/android/gms/internal/p;->NH:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/p;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/p;->NH:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    iput v2, p0, Lcom/google/android/gms/internal/p;->NG:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    :pswitch_2
    iput v2, p0, Lcom/google/android/gms/internal/p;->NF:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    goto :goto_1

    :pswitch_3
    iput v2, p0, Lcom/google/android/gms/internal/p;->NE:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto :goto_1

    :pswitch_4
    iput v2, p0, Lcom/google/android/gms/internal/p;->ND:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_5

    goto :goto_1

    :pswitch_5
    iput v2, p0, Lcom/google/android/gms/internal/p;->NC:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/p;->NA:J

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_6

    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/T;I)Z

    goto/16 :goto_0

    :pswitch_6
    iput v2, p0, Lcom/google/android/gms/internal/p;->Nz:I

    goto/16 :goto_0

    :cond_9
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/p;->Nz:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/p;->Nz:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/p;->NA:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/p;->NA:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/p;->NC:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/p;->NC:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/p;->ND:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/p;->ND:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/p;->NE:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/p;->NE:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/p;->NF:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/p;->NF:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/p;->NG:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/p;->NG:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/p;->NH:I

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/gms/internal/p;->NH:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/p;->Nz:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/p;->Nz:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/p;->NA:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/p;->NA:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/p;->NC:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/p;->NC:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/p;->ND:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/p;->ND:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/p;->NE:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/p;->NE:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/p;->NF:I

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/p;->NF:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/p;->NG:I

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/p;->NG:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/p;->NH:I

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/p;->NH:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/p;

    iget v1, p0, Lcom/google/android/gms/internal/p;->Nz:I

    iget v3, p1, Lcom/google/android/gms/internal/p;->Nz:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/p;->NA:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/p;->NA:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/p;->NC:I

    iget v3, p1, Lcom/google/android/gms/internal/p;->NC:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/p;->ND:I

    iget v3, p1, Lcom/google/android/gms/internal/p;->ND:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/p;->NE:I

    iget v3, p1, Lcom/google/android/gms/internal/p;->NE:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/p;->NF:I

    iget v3, p1, Lcom/google/android/gms/internal/p;->NF:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/p;->NG:I

    iget v3, p1, Lcom/google/android/gms/internal/p;->NG:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/p;->NH:I

    iget v3, p1, Lcom/google/android/gms/internal/p;->NH:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

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

    iget v0, p0, Lcom/google/android/gms/internal/p;->Nz:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/p;->NA:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/p;->NA:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/p;->NC:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/p;->ND:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/p;->NE:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/p;->NF:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/p;->NG:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/p;->NH:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/p;->PA:Lcom/google/android/gms/internal/X;

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
