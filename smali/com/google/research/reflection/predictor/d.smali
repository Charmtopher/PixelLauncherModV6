.class public Lcom/google/research/reflection/predictor/d;
.super Lcom/google/research/reflection/predictor/AbstractEventEstimator;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/b/m;


# instance fields
.field protected afD:Lcom/google/research/reflection/b/m;

.field protected ahD:Lcom/google/research/reflection/layers/r;

.field protected ahE:Lcom/google/research/reflection/b/g;

.field protected ahF:Lcom/google/research/reflection/layers/m;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 50
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;-><init>()V

    .line 51
    new-instance v0, Lcom/google/research/reflection/b/f;

    invoke-direct {v0}, Lcom/google/research/reflection/b/f;-><init>()V

    new-instance v1, Lcom/google/research/reflection/b/a;

    invoke-direct {v1}, Lcom/google/research/reflection/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/i;

    invoke-direct {v1}, Lcom/google/research/reflection/b/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/d;

    invoke-direct {v1}, Lcom/google/research/reflection/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/k;

    invoke-direct {v1}, Lcom/google/research/reflection/b/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/j;

    invoke-direct {v1}, Lcom/google/research/reflection/b/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/h;

    invoke-direct {v1}, Lcom/google/research/reflection/b/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/b;

    invoke-direct {v1}, Lcom/google/research/reflection/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/l;

    invoke-direct {v1}, Lcom/google/research/reflection/b/l;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/research/reflection/layers/v;->ahm:Z

    new-instance v1, Lcom/google/research/reflection/layers/m;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahF:Lcom/google/research/reflection/layers/m;

    iput-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    iput-object p0, v0, Lcom/google/research/reflection/b/g;->afD:Lcom/google/research/reflection/b/m;

    new-instance v1, Lcom/google/research/reflection/layers/r;

    invoke-direct {v1, v2}, Lcom/google/research/reflection/layers/r;-><init>(I)V

    iput-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    new-instance v1, Lcom/google/research/reflection/layers/f;

    invoke-virtual {v0}, Lcom/google/research/reflection/b/g;->iI()I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x64

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lcom/google/research/reflection/layers/f;-><init>(ZIIIIIIIZZF)V

    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/r;->b(Lcom/google/research/reflection/layers/e;)V

    new-instance v0, Lcom/google/research/reflection/layers/s;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v7, 0x64

    const/16 v8, 0x64

    const/4 v9, -0x1

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/research/reflection/layers/s;-><init>(IIIIIIIIZ)V

    iget-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v1, v0}, Lcom/google/research/reflection/layers/r;->b(Lcom/google/research/reflection/layers/e;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final N(Ljava/lang/String;)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".*"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/g;->q(Ljava/util/List;)V

    .line 226
    return-void
.end method

.method public final a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 6

    .line 130
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->ahJ:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/predictor/b;->jg()Lcom/google/research/reflection/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;

    move-result-object p2

    .line 131
    new-instance v0, Lcom/google/research/reflection/predictor/l;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/d;->jf()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 133
    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v3

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/d;->jf()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p2, v2}, Lcom/google/research/reflection/layers/r;->a(Z[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/research/reflection/layers/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    nop

    .line 141
    move v2, v3

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 142
    invoke-virtual {v1, v3, v3, v2}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, p1, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :catch_0
    move-exception p1

    .line 139
    return-object v0

    .line 145
    :cond_1
    :goto_1
    iput-object p1, v0, Lcom/google/research/reflection/predictor/l;->ahS:[F

    .line 146
    iget-object p1, p2, Lcom/google/research/reflection/layers/m;->agU:[D

    iput-object p1, v0, Lcom/google/research/reflection/predictor/l;->ahR:[D

    .line 147
    return-object v0
.end method

.method public final a(Lcom/google/research/reflection/b/g;I)V
    .locals 9

    .line 82
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->afD:Lcom/google/research/reflection/b/m;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->afD:Lcom/google/research/reflection/b/m;

    invoke-interface {v0, p1, p2}, Lcom/google/research/reflection/b/m;->a(Lcom/google/research/reflection/b/g;I)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    iget-object p1, p1, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/f;

    .line 86
    iget-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p1, v1}, Lcom/google/research/reflection/layers/f;->a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    .line 88
    move v8, v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 89
    const-wide/16 v2, 0x0

    .line 90
    move-wide v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 91
    invoke-virtual {p1, v0, v2, v8}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_1
    int-to-double v5, v1

    div-double v6, v3, v5

    .line 94
    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 88
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 96
    :cond_2
    return-void
.end method

.method public final a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 3

    .line 197
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p2

    .line 198
    invoke-static {p2}, Lcom/google/research/reflection/b/g;->M(Ljava/lang/String;)Lcom/google/research/reflection/b/g;

    move-result-object v0

    .line 199
    if-nez v0, :cond_1

    .line 200
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot find extractor with "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/g;->a(Ljava/io/DataInputStream;)V

    .line 203
    iput-object p0, v0, Lcom/google/research/reflection/b/g;->afD:Lcom/google/research/reflection/b/m;

    .line 205
    new-instance p2, Lcom/google/research/reflection/layers/r;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/google/research/reflection/layers/r;-><init>(I)V

    iput-object p2, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    .line 206
    iget-object p2, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p2, p1}, Lcom/google/research/reflection/layers/r;->b(Ljava/io/DataInputStream;)V

    .line 207
    iget-object p1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p1}, Lcom/google/research/reflection/layers/r;->iW()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/research/reflection/b/g;->iI()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 214
    iget-object p1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p1}, Lcom/google/research/reflection/layers/r;->iX()Lcom/google/research/reflection/layers/e;

    move-result-object p1

    iget p1, p1, Lcom/google/research/reflection/layers/e;->agz:I

    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/d;->jd()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 221
    return-void

    .line 215
    :cond_2
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    .line 217
    invoke-virtual {p2}, Lcom/google/research/reflection/layers/r;->iX()Lcom/google/research/reflection/layers/e;

    move-result-object p2

    iget p2, p2, Lcom/google/research/reflection/layers/e;->agz:I

    .line 219
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/d;->jd()I

    move-result v0

    const/16 v1, 0x39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent model output size..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_3
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    .line 210
    invoke-virtual {p2}, Lcom/google/research/reflection/layers/r;->iW()I

    move-result p2

    .line 212
    invoke-virtual {v0}, Lcom/google/research/reflection/b/g;->iI()I

    move-result v0

    const/16 v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Model to be loaded has an inconsistent input size:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 12

    .line 231
    iget-object p3, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p3}, Lcom/google/research/reflection/layers/r;->iX()Lcom/google/research/reflection/layers/e;

    move-result-object p3

    check-cast p3, Lcom/google/research/reflection/layers/s;

    .line 232
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p3, v0}, Lcom/google/research/reflection/layers/s;->a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;

    move-result-object v0

    .line 233
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/google/research/reflection/layers/m;->N(Z)I

    move-result v8

    .line 234
    move v9, v7

    :goto_0
    invoke-virtual {v0, v7}, Lcom/google/research/reflection/layers/m;->M(Z)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ge v9, v1, :cond_2

    .line 235
    nop

    .line 236
    move v1, v7

    :goto_1
    if-ge v1, v8, :cond_0

    .line 237
    invoke-virtual {v0, v7, v9, v1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_0
    int-to-double v4, v8

    div-double v10, v2, v4

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v7, v9, v1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    move-object v1, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 243
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, v0

    move v3, v9

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 234
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 245
    :cond_2
    iget-object p3, p3, Lcom/google/research/reflection/layers/f;->agH:Lcom/google/research/reflection/layers/m;

    .line 246
    nop

    .line 247
    :goto_2
    if-ge v7, v8, :cond_3

    .line 248
    iget-object v0, p3, Lcom/google/research/reflection/layers/m;->agU:[D

    aget-wide v4, v0, v7

    add-double/2addr v2, v4

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 250
    :cond_3
    int-to-double v0, v8

    div-double/2addr v2, v0

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    iget-object v0, p3, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p3, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-wide v4, v1, v4

    aput-wide v4, v0, p1

    .line 254
    :cond_4
    iget-object p1, p3, Lcom/google/research/reflection/layers/m;->agU:[D

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-wide v2, p1, p2

    .line 255
    return-void
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    invoke-static {v0}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/b/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/g;->a(Ljava/io/DataOutputStream;)V

    .line 192
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    iget-object v1, v0, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/layers/e;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/research/reflection/layers/e;->b(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    const-string v0, "NeuralNet"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 2

    .line 32
    new-instance v0, Lcom/google/research/reflection/predictor/d;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/d;-><init>()V

    iget-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/r;->iV()Lcom/google/research/reflection/layers/r;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahF:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->iU()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/d;->ahF:Lcom/google/research/reflection/layers/m;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    invoke-virtual {v1}, Lcom/google/research/reflection/b/g;->iJ()Lcom/google/research/reflection/b/g;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 185
    const-string v0, "neural_predictor"

    return-object v0
.end method

.method public final h(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 21

    move-object/from16 v0, p0

    .line 166
    invoke-virtual/range {p0 .. p1}, Lcom/google/research/reflection/predictor/d;->f(Lcom/google/research/reflection/signal/ReflectionEvent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/google/research/reflection/predictor/l;

    invoke-direct {v2}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 169
    :try_start_0
    iget-object v3, v0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    iget-object v4, v0, Lcom/google/research/reflection/predictor/g;->ahJ:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v4}, Lcom/google/research/reflection/predictor/b;->jg()Lcom/google/research/reflection/a/a;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v3, v4, v5}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;

    move-result-object v3

    .line 170
    iget-object v4, v0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    iget-object v5, v4, Lcom/google/research/reflection/layers/r;->ahc:Lcom/google/research/reflection/a/a;

    invoke-virtual {v5}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v5, v4, Lcom/google/research/reflection/layers/r;->ahd:Lcom/google/research/reflection/a/a;

    invoke-virtual {v5}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v4, v4, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/e;

    invoke-virtual {v5}, Lcom/google/research/reflection/layers/e;->iQ()V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v4, v0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5, v3, v6}, Lcom/google/research/reflection/layers/r;->a(Z[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 172
    iget-object v4, v0, Lcom/google/research/reflection/predictor/d;->ahF:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->agU:[D

    const-wide/16 v7, 0x0

    invoke-static {v4, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    .line 173
    iget-object v9, v0, Lcom/google/research/reflection/predictor/d;->ahF:Lcom/google/research/reflection/layers/m;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v9 .. v14}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 174
    iget-object v1, v0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    iget-object v4, v0, Lcom/google/research/reflection/predictor/d;->ahF:Lcom/google/research/reflection/layers/m;

    iget-object v7, v1, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    iget-object v8, v1, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/google/research/reflection/layers/s;

    if-eqz v7, :cond_8

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/r;->iX()Lcom/google/research/reflection/layers/e;

    move-result-object v5

    iget v5, v5, Lcom/google/research/reflection/layers/e;->agz:I

    invoke-direct {v4, v6, v5}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    new-instance v5, Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/r;->iX()Lcom/google/research/reflection/layers/e;

    move-result-object v7

    iget v7, v7, Lcom/google/research/reflection/layers/e;->agz:I

    invoke-direct {v5, v6, v7}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iget-object v6, v1, Lcom/google/research/reflection/layers/r;->ahc:Lcom/google/research/reflection/a/a;

    invoke-virtual {v6, v4}, Lcom/google/research/reflection/a/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/research/reflection/layers/r;->ahd:Lcom/google/research/reflection/a/a;

    invoke-virtual {v1, v5}, Lcom/google/research/reflection/a/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_1
    iget-object v7, v1, Lcom/google/research/reflection/layers/r;->ahc:Lcom/google/research/reflection/a/a;

    invoke-virtual {v7, v4}, Lcom/google/research/reflection/a/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/research/reflection/layers/r;->ahd:Lcom/google/research/reflection/a/a;

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/a/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/research/reflection/layers/r;->ahc:Lcom/google/research/reflection/a/a;

    iget v4, v4, Lcom/google/research/reflection/a/a;->afq:I

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/r;->iP()V

    iget-object v5, v1, Lcom/google/research/reflection/layers/r;->ahc:Lcom/google/research/reflection/a/a;

    iget v5, v5, Lcom/google/research/reflection/a/a;->afn:I

    iget-object v7, v1, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    move v8, v7

    :goto_1
    if-ltz v8, :cond_5

    iget-object v9, v1, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/layers/e;

    iget-boolean v10, v9, Lcom/google/research/reflection/layers/e;->agy:Z

    if-eqz v10, :cond_3

    iget-object v9, v9, Lcom/google/research/reflection/layers/e;->agu:Lcom/google/research/reflection/a/a;

    iget v9, v9, Lcom/google/research/reflection/a/a;->afq:I

    if-ne v9, v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "backward: sparse input vector has a different frame index from the target frame index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_2
    throw v0

    :cond_3
    iget-object v10, v9, Lcom/google/research/reflection/layers/e;->agt:Lcom/google/research/reflection/a/a;

    iget v10, v10, Lcom/google/research/reflection/a/a;->afq:I

    if-ne v10, v4, :cond_4

    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, v9, Lcom/google/research/reflection/layers/e;->agt:Lcom/google/research/reflection/a/a;

    iget v1, v1, Lcom/google/research/reflection/a/a;->afq:I

    const/16 v3, 0x6e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "backward: dense input vector has a different frame index from the target frame index: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sub-int/2addr v5, v6

    move v4, v5

    :goto_4
    if-ltz v4, :cond_7

    sub-int v6, v5, v4

    if-gtz v6, :cond_7

    iget-object v6, v1, Lcom/google/research/reflection/layers/r;->ahc:Lcom/google/research/reflection/a/a;

    invoke-virtual {v6, v4}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/reflection/layers/m;

    iget-object v8, v1, Lcom/google/research/reflection/layers/r;->ahd:Lcom/google/research/reflection/a/a;

    invoke-virtual {v8, v4}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/research/reflection/layers/m;

    move-object/from16 v18, v6

    move v6, v7

    :goto_5
    if-ltz v6, :cond_6

    iget-object v9, v1, Lcom/google/research/reflection/layers/r;->ahe:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/layers/e;

    iget-object v10, v9, Lcom/google/research/reflection/layers/e;->agx:Lcom/google/research/reflection/layers/m;

    move-object v15, v9

    move-object/from16 v16, v1

    move/from16 v17, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Lcom/google/research/reflection/layers/e;->a(Lcom/google/research/reflection/layers/r;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    iget-object v9, v9, Lcom/google/research/reflection/layers/e;->agw:Lcom/google/research/reflection/layers/m;

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v18, v9

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 175
    :cond_7
    :goto_6
    iget-object v0, v0, Lcom/google/research/reflection/predictor/d;->ahD:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/r;->update()V

    .line 176
    iget-object v0, v3, Lcom/google/research/reflection/layers/m;->agU:[D

    iput-object v0, v2, Lcom/google/research/reflection/predictor/l;->ahR:[D

    .line 179
    goto :goto_7

    .line 174
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lacks outputlayer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/research/reflection/layers/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 177
    :catch_0
    move-exception v0

    .line 180
    :goto_7
    return-object v2
.end method

.method public final iN()Ljava/util/Map;
    .locals 2

    .line 259
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/d;->ahE:Lcom/google/research/reflection/b/g;

    invoke-virtual {v1}, Lcom/google/research/reflection/b/g;->iN()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public j(Lcom/google/research/reflection/signal/ReflectionEvent;)Z
    .locals 2

    .line 160
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v0

    sget-object v1, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->ahZ:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-eq v0, v1, :cond_1

    .line 161
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object p1

    sget-object v0, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aib:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    return p1

    .line 161
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
