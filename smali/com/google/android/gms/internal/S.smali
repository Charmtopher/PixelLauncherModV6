.class public final Lcom/google/android/gms/internal/S;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field private NA:J

.field private Nz:I

.field private OM:I

.field private Pp:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/S;->Nz:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/S;->NA:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/S;->Pp:F

    iput v0, p0, Lcom/google/android/gms/internal/S;->OM:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/S;->PK:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/S;->OM:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gJ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/S;->Pp:F

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/S;->NA:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/S;->a(Lcom/google/android/gms/internal/T;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/S;->Nz:I

    goto :goto_0

    :cond_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/S;->Nz:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/S;->Nz:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/S;->NA:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/S;->NA:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/S;->Pp:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/S;->Pp:F

    const/4 v1, 0x3

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/U;->H(II)V

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/U;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v2, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/U;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/brr;

    iget-object v1, p1, Lcom/google/android/gms/internal/U;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object p1, p1, Lcom/google/android/gms/internal/U;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/brr;-><init>(II)V

    throw v0

    :cond_3
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/S;->OM:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/S;->OM:I

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/S;->Nz:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/S;->Nz:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/S;->NA:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/S;->NA:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/S;->Pp:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_2

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/S;->OM:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/S;->OM:I

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/S;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/S;

    iget v1, p0, Lcom/google/android/gms/internal/S;->Nz:I

    iget v3, p1, Lcom/google/android/gms/internal/S;->Nz:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/S;->NA:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/S;->NA:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/S;->Pp:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/google/android/gms/internal/S;->Pp:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/S;->OM:I

    iget v3, p1, Lcom/google/android/gms/internal/S;->OM:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v2

    :cond_9
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

    iget v0, p0, Lcom/google/android/gms/internal/S;->Nz:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/S;->NA:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/S;->NA:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/S;->Pp:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/S;->OM:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/S;->PA:Lcom/google/android/gms/internal/X;

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
