.class public final Lcom/google/android/gms/internal/Q;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public Nz:I

.field public Pi:J

.field public Pk:Ljava/lang/String;

.field public Pl:J

.field private Pm:Lcom/google/android/gms/internal/w;

.field public Pn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/Q;->Pn:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/Q;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/Q;->Pn:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/internal/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->a(Lcom/google/android/gms/internal/aa;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/Q;->a(Lcom/google/android/gms/internal/T;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    goto :goto_0

    :cond_8
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
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/Q;->Pn:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/Q;->Pn:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->f(IZ)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/Q;->Pn:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/Q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/Q;

    iget v1, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    iget v3, p1, Lcom/google/android/gms/internal/Q;->Nz:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/Q;->Pi:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/Q;->Pl:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    iget-object v3, p1, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/Q;->Pn:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/Q;->Pn:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

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
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/Q;->Nz:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/Q;->Pi:J

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/Q;->Pl:J

    ushr-long/2addr v5, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->Pm:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/w;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/Q;->Pn:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v0, 0x4d5

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/Q;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v1, v2

    return v1
.end method
