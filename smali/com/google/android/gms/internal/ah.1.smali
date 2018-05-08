.class public final Lcom/google/android/gms/internal/ah;
.super Lcom/google/android/gms/internal/V;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private IE:I

.field private QA:Ljava/lang/String;

.field private QB:[I

.field private QC:J

.field private QD:Lcom/google/android/gms/internal/aj;

.field public Qj:J

.field public Qk:J

.field private Ql:J

.field public Qm:I

.field public Qn:I

.field private Qo:Z

.field private Qp:[Lcom/google/android/gms/internal/ai;

.field private Qq:[B

.field private Qr:Lcom/google/android/gms/internal/af;

.field public Qs:[B

.field private Qt:Ljava/lang/String;

.field private Qu:Ljava/lang/String;

.field private Qv:Lcom/google/android/gms/internal/ae;

.field private Qw:Ljava/lang/String;

.field public Qx:J

.field private Qy:Lcom/google/android/gms/internal/ag;

.field public Qz:[B

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    iput v2, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ah;->Qo:Z

    invoke-static {}, Lcom/google/android/gms/internal/ai;->hb()[Lcom/google/android/gms/internal/ai;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    sget-object v3, Lcom/google/android/gms/internal/ad;->PX:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    sget-object v4, Lcom/google/android/gms/internal/ad;->PX:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    sget-object v4, Lcom/google/android/gms/internal/ad;->PX:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/ah;->IE:I

    sget-object v2, Lcom/google/android/gms/internal/ad;->PQ:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->QC:J

    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ah;->PK:I

    return-void
.end method

.method private final ha()Lcom/google/android/gms/internal/ah;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/V;->gO()Lcom/google/android/gms/internal/V;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ah;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ai;

    iput-object v1, v0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    iget-object v3, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ai;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ai;

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/af;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/af;

    iput-object v1, v0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ae;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ae;

    iput-object v1, v0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ag;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ag;

    iput-object v1, v0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/ah;->QB:[I

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aj;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aj;

    iput-object v1, v0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    goto/16 :goto_6

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->QC:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aO(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gM()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->aP(I)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v3, v3

    :goto_4
    add-int/2addr v0, v3

    new-array v0, v0, [I

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_5
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    aput v2, v0, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v1

    aput v1, v0, v3

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aQ(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ah;->a(Lcom/google/android/gms/internal/T;I)Z

    goto/16 :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/ah;->IE:I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ag;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    goto :goto_6

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v2

    ushr-long v0, v2, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gH()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ah;->Qo:Z

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/af;

    invoke-direct {v0}, Lcom/google/android/gms/internal/af;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    goto :goto_6

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/T;->a(Lcom/google/android/gms/internal/aa;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/T;I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    if-nez v3, :cond_c

    move v3, v2

    goto :goto_7

    :cond_c
    iget-object v3, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v3, v3

    :goto_7
    add-int/2addr v0, v3

    new-array v0, v0, [Lcom/google/android/gms/internal/ai;

    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_8
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_e

    new-instance v2, Lcom/google/android/gms/internal/ai;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ai;-><init>()V

    aput-object v2, v0, v3

    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/T;->a(Lcom/google/android/gms/internal/aa;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/ai;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ai;-><init>()V

    aput-object v1, v0, v3

    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->a(Lcom/google/android/gms/internal/aa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    goto/16 :goto_0

    :sswitch_18
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x8 -> :sswitch_17
        0x12 -> :sswitch_16
        0x1a -> :sswitch_15
        0x22 -> :sswitch_14
        0x32 -> :sswitch_13
        0x3a -> :sswitch_12
        0x42 -> :sswitch_11
        0x4a -> :sswitch_10
        0x50 -> :sswitch_f
        0x58 -> :sswitch_e
        0x60 -> :sswitch_d
        0x6a -> :sswitch_c
        0x72 -> :sswitch_b
        0x78 -> :sswitch_a
        0x82 -> :sswitch_9
        0x88 -> :sswitch_8
        0x92 -> :sswitch_7
        0x98 -> :sswitch_6
        0xa0 -> :sswitch_5
        0xa2 -> :sswitch_4
        0xa8 -> :sswitch_3
        0xb0 -> :sswitch_2
        0xba -> :sswitch_1
        0xc2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    sget-object v4, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    sget-object v4, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(I[B)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ah;->Qo:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ah;->Qo:Z

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->f(IZ)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget v4, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget v4, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_d
    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_e

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->H(II)V

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/U;->n(J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/U;->l(J)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_f
    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    sget-object v4, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->a(I[B)V

    :cond_11
    iget v0, p0, Lcom/google/android/gms/internal/ah;->IE:I

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    iget v4, p0, Lcom/google/android/gms/internal/ah;->IE:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->F(II)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v0, v0

    if-lez v0, :cond_13

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v0, v0

    if-ge v1, v0, :cond_13

    const/16 v0, 0x14

    iget-object v4, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    aget v4, v4, v1

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/U;->F(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ah;->QC:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    iget-wide v1, p0, Lcom/google/android/gms/internal/ah;->QC:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILcom/google/android/gms/internal/aa;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ah;->ha()Lcom/google/android/gms/internal/ah;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    const/4 v5, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    aget-object v7, v7, v0

    if-eqz v7, :cond_2

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v7

    add-int/2addr v1, v7

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    sget-object v7, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    iget-object v7, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/U;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    sget-object v7, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    iget-object v7, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/U;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    iget-object v7, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    iget-object v7, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    iget-object v7, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ah;->Qo:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x50

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    const-wide/32 v7, 0x2bf20

    cmp-long v1, v1, v7

    if-eqz v1, :cond_f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    const/16 v7, 0x78

    invoke-static {v7}, Lcom/google/android/gms/internal/U;->aV(I)I

    move-result v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->n(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->m(J)I

    move-result v1

    add-int/2addr v7, v1

    add-int/2addr v0, v7

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-wide v1, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    iget-wide v7, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    sget-object v2, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/google/android/gms/internal/ah;->IE:I

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/ah;->IE:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->G(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v1, v1

    if-lez v1, :cond_15

    move v1, v6

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v2, v2

    if-ge v6, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    aget v2, v2, v6

    invoke-static {v2}, Lcom/google/android/gms/internal/U;->aS(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_14
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    array-length v1, v1

    mul-int/2addr v5, v1

    add-int/2addr v0, v5

    :cond_15
    iget-wide v1, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    const/16 v1, 0x15

    iget-wide v5, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-wide v1, p0, Lcom/google/android/gms/internal/ah;->QC:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/internal/ah;->QC:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    if-eqz v1, :cond_18

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILcom/google/android/gms/internal/aa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ah;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ah;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ah;->Qj:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ah;->Qk:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ah;->Ql:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    iget v3, p1, Lcom/google/android/gms/internal/ah;->Qm:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    iget v3, p1, Lcom/google/android/gms/internal/ah;->Qn:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ah;->Qo:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ah;->Qo:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qq:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    if-eqz v1, :cond_d

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/af;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qs:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    if-eqz v1, :cond_10

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    if-eqz v1, :cond_12

    return v2

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    if-eqz v1, :cond_14

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    if-eqz v1, :cond_16

    return v2

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ah;->Qx:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    if-eqz v1, :cond_19

    return v2

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->Qz:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    if-nez v1, :cond_1b

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    if-eqz v1, :cond_1c

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lcom/google/android/gms/internal/ah;->IE:I

    iget v3, p1, Lcom/google/android/gms/internal/ah;->IE:I

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->QB:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/Z;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lcom/google/android/gms/internal/ah;->QC:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ah;->QC:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    if-nez v1, :cond_20

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    if-eqz v1, :cond_21

    return v2

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_0

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_23
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_25

    iget-object p1, p1, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_1

    :cond_24
    return v2

    :cond_25
    :goto_1
    return v0
.end method

.method public final synthetic gO()Lcom/google/android/gms/internal/V;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ah;

    return-object v0
.end method

.method public final synthetic gP()Lcom/google/android/gms/internal/aa;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ah;

    return-object v0
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

    iget-wide v2, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qj:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qk:J

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Ql:J

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ah;->Qm:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ah;->Qn:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ah;->Qo:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qp:[Lcom/google/android/gms/internal/ai;

    invoke-static {v2}, Lcom/google/android/gms/internal/Z;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qq:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qr:Lcom/google/android/gms/internal/af;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/af;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qs:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qu:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qv:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ae;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ah;->Qx:J

    ushr-long/2addr v6, v0

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qy:Lcom/google/android/gms/internal/ag;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ag;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->Qz:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->QA:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ah;->IE:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->QB:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/Z;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->QC:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ah;->QC:J

    ushr-long/2addr v6, v0

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_9

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->QD:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v3

    :cond_b
    :goto_a
    add-int/2addr v1, v3

    return v1
.end method
