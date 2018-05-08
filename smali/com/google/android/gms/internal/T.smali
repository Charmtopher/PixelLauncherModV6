.class public final Lcom/google/android/gms/internal/T;
.super Ljava/lang/Object;


# instance fields
.field Pq:I

.field private Pr:I

.field private Ps:I

.field private Pt:I

.field private Pu:I

.field private Pv:I

.field private Pw:I

.field private Px:I

.field private Py:I

.field final buffer:[B


# direct methods
.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/T;->Pv:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/T;->Px:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/T;->Py:I

    iput-object p1, p0, Lcom/google/android/gms/internal/T;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/T;->Pq:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iput p2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    return-void
.end method

.method private final aR(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pv:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pt:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gR()Lcom/google/android/gms/internal/bry;

    move-result-object p1

    throw p1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/T;->Pv:I

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/T;->aR(I)V

    invoke-static {}, Lcom/google/android/gms/internal/bry;->gR()Lcom/google/android/gms/internal/bry;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gS()Lcom/google/android/gms/internal/bry;

    move-result-object p1

    throw p1
.end method

.method private final gL()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Ps:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pv:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pv:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/T;->Ps:I

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Ps:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/T;->Pr:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/T;->Ps:I

    return-void
.end method

.method private final gN()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pr:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/T;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    aget-byte v0, v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gR()Lcom/google/android/gms/internal/bry;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final E(II)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pq:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pq:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    iput p2, p0, Lcom/google/android/gms/internal/T;->Pu:I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pq:I

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lcom/google/android/gms/internal/aa;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pw:I

    iget v2, p0, Lcom/google/android/gms/internal/T;->Px:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/T;->aO(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/T;->Pw:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->aM(I)V

    iget p1, p0, Lcom/google/android/gms/internal/T;->Pw:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/T;->Pw:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/T;->aP(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gU()Lcom/google/android/gms/internal/bry;

    move-result-object p1

    throw p1
.end method

.method public final aM(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pu:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/bry;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/bry;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final aN(I)Z
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/internal/bry;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/bry;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gJ()I

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/T;->aN(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->aM(I)V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gH()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/T;->aR(I)V

    return v1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gK()J

    return v1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gH()I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final aO(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pv:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/T;->Pv:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gL()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gR()Lcom/google/android/gms/internal/bry;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gS()Lcom/google/android/gms/internal/bry;

    move-result-object p1

    throw p1
.end method

.method public final aP(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/T;->Pv:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gL()V

    return-void
.end method

.method public final aQ(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pu:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/T;->E(II)V

    return-void
.end method

.method public final gF()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pr:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/T;->Pu:I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/T;->Pu:I

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pu:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pu:I

    return v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/bry;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bry;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final gG()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final gH()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gT()Lcom/google/android/gms/internal/bry;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public final gI()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gT()Lcom/google/android/gms/internal/bry;

    move-result-object v0

    throw v0
.end method

.method public final gJ()I
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final gK()J
    .locals 13

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v5

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v6

    invoke-direct {p0}, Lcom/google/android/gms/internal/T;->gN()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final gM()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pv:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pv:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final getPosition()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/T;->Pt:I

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pq:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readBytes()[B
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ad;->PX:[B

    return-object v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iget v2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/T;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/T;->Pt:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    return-object v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gR()Lcom/google/android/gms/internal/bry;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gS()Lcom/google/android/gms/internal/bry;

    move-result-object v0

    throw v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/T;->Pr:I

    iget v2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/T;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/T;->Pt:I

    sget-object v4, Lcom/google/android/gms/internal/Z;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/T;->Pt:I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gR()Lcom/google/android/gms/internal/bry;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/bry;->gS()Lcom/google/android/gms/internal/bry;

    move-result-object v0

    throw v0
.end method
