.class public Lcom/google/research/reflection/layers/s;
.super Lcom/google/research/reflection/layers/f;
.source "SourceFile"


# instance fields
.field private ahf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/google/research/reflection/layers/f;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/layers/s;->ahf:I

    .line 29
    return-void
.end method

.method public constructor <init>(IIIIIIIIZ)V
    .locals 13

    move-object v12, p0

    .line 23
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/research/reflection/layers/f;-><init>(ZIIIIIIIZZF)V

    .line 18
    const/4 v0, 0x0

    iput v0, v12, Lcom/google/research/reflection/layers/s;->ahf:I

    .line 25
    move v0, p1

    iput v0, v12, Lcom/google/research/reflection/layers/s;->ahf:I

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/google/research/reflection/layers/s;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/google/research/reflection/layers/s;->ahf:I

    return p0
.end method


# virtual methods
.method final a(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 9

    .line 38
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    iget-object v1, p2, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    new-instance v8, Lcom/google/research/reflection/layers/t;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/research/reflection/layers/t;-><init>(Lcom/google/research/reflection/layers/s;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v0, v1, v8}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 60
    return-void
.end method

.method public final b(Ljava/io/DataInputStream;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/f;->b(Ljava/io/DataInputStream;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/s;->ahf:I

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/s;->c(Ljava/io/DataInputStream;)V

    .line 83
    return-void
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/f;->b(Ljava/io/DataOutputStream;)V

    .line 74
    iget v0, p0, Lcom/google/research/reflection/layers/s;->ahf:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/s;->c(Ljava/io/DataOutputStream;)V

    .line 76
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/s;->iY()Lcom/google/research/reflection/layers/s;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "OutputLayer"

    return-object v0
.end method

.method public final synthetic iO()Lcom/google/research/reflection/layers/e;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/s;->iY()Lcom/google/research/reflection/layers/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iT()Lcom/google/research/reflection/layers/f;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/s;->iY()Lcom/google/research/reflection/layers/s;

    move-result-object v0

    return-object v0
.end method

.method public final iY()Lcom/google/research/reflection/layers/s;
    .locals 2

    .line 64
    new-instance v0, Lcom/google/research/reflection/layers/s;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/s;-><init>()V

    .line 65
    invoke-super {p0, v0}, Lcom/google/research/reflection/layers/f;->a(Lcom/google/research/reflection/layers/f;)V

    .line 66
    iget v1, p0, Lcom/google/research/reflection/layers/s;->ahf:I

    iput v1, v0, Lcom/google/research/reflection/layers/s;->ahf:I

    .line 67
    return-object v0
.end method
