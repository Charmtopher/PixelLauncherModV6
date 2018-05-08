.class public Lcom/google/research/reflection/layers/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public agU:[D

.field public columnCount:I

.field public rowCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/google/research/reflection/layers/m;->rowCount:I

    .line 22
    iput p2, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    .line 23
    mul-int/2addr p1, p2

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    .line 24
    return-void
.end method

.method public static a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;
    .locals 10

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 204
    new-instance v1, Lcom/google/research/reflection/layers/m;

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    .line 205
    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v3

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 206
    move v2, v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 207
    move v9, v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v3

    if-ge v9, v3, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v3

    if-ge v9, v3, :cond_0

    .line 209
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v9}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v7

    move-object v3, v1

    move v5, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    goto :goto_2

    .line 211
    :cond_0
    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v3

    sub-int v3, v9, v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v7

    .line 211
    move-object v3, v1

    move v5, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 207
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 206
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_2
    return-object v1

    .line 202
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;
    .locals 5

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {p2, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 54
    invoke-virtual {p2, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 60
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    iget-object v1, p2, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/n;

    invoke-direct {v2, p3, p2, p0, p1}, Lcom/google/research/reflection/layers/n;-><init>(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 71
    return-object p2

    .line 55
    :cond_0
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p0

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p1

    .line 57
    invoke-virtual {p2, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v3

    invoke-virtual {p2, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p2

    const/16 v0, 0x47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;ZLcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;
    .locals 9

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v1

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 77
    invoke-virtual {p3, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 78
    invoke-virtual {p3, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v1

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 84
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    iget-object v1, p3, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    new-instance v8, Lcom/google/research/reflection/layers/o;

    move-object v2, v8

    move v3, p4

    move-object v4, p3

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/research/reflection/layers/o;-><init>(ZLcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Z)V

    invoke-virtual {v0, v1, v8}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 108
    return-object p3

    .line 79
    :cond_0
    new-instance p4, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p0

    .line 80
    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p1

    .line 81
    invoke-virtual {p3, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result p2

    invoke-virtual {p3, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p3

    const/16 v0, 0x47

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p4
.end method


# virtual methods
.method public final M(Z)I
    .locals 0

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget p1, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    return p1

    .line 170
    :cond_0
    iget p1, p0, Lcom/google/research/reflection/layers/m;->rowCount:I

    return p1
.end method

.method public final N(Z)I
    .locals 0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget p1, p0, Lcom/google/research/reflection/layers/m;->rowCount:I

    return p1

    .line 178
    :cond_0
    iget p1, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    return p1
.end method

.method public final a(ZII)I
    .locals 0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget p1, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    mul-int/2addr p3, p1

    add-int/2addr p3, p2

    return p3

    .line 127
    :cond_0
    iget p1, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    mul-int/2addr p2, p1

    add-int/2addr p2, p3

    return p2
.end method

.method public final a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;
    .locals 6

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 260
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/q;

    invoke-direct {v2, p0, p1}, Lcom/google/research/reflection/layers/q;-><init>(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 269
    return-object p0

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v3

    .line 258
    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v4

    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p1

    const/16 v0, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(ZIID)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/research/reflection/layers/m;->a(ZII)I

    move-result p1

    aget-wide p2, v0, p1

    add-double/2addr p2, p4

    aput-wide p2, v0, p1

    .line 143
    return-void
.end method

.method public final b(ZII)D
    .locals 2

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v0

    const/16 v1, 0x29

    if-ge p2, v0, :cond_1

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/research/reflection/layers/m;->a(ZII)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1

    .line 136
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "requested col: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " >= "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 133
    :cond_1
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "requested row: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final b(D)Lcom/google/research/reflection/layers/m;
    .locals 3

    .line 242
    invoke-static {}, Lcom/google/research/reflection/layers/v;->iZ()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/p;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/research/reflection/layers/p;-><init>(Lcom/google/research/reflection/layers/m;D)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 251
    return-object p0
.end method

.method public final b(Ljava/io/DataInputStream;)V
    .locals 4

    .line 158
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/m;->rowCount:I

    .line 159
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    .line 160
    iget v0, p0, Lcom/google/research/reflection/layers/m;->rowCount:I

    iget v1, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    mul-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    .line 161
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 4

    .line 150
    iget v0, p0, Lcom/google/research/reflection/layers/m;->rowCount:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public final b(ZIID)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/research/reflection/layers/m;->a(ZII)I

    move-result p1

    aput-wide p4, v0, p1

    .line 147
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    return-object v0
.end method

.method public final iU()Lcom/google/research/reflection/layers/m;
    .locals 6

    .line 42
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/m;->rowCount:I

    iget v2, p0, Lcom/google/research/reflection/layers/m;->columnCount:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 43
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 44
    iget-object v2, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    iget-object v3, p0, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v4, v3, v1

    aput-wide v4, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 115
    move v3, v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 116
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v4

    const/16 v6, 0x19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
