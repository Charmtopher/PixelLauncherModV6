.class Landroid/support/v7/widget/aN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final rM:Landroid/support/v4/c/a;

.field final rN:Landroid/support/v4/c/h;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    .line 45
    new-instance v0, Landroid/support/v4/c/h;

    invoke-direct {v0}, Landroid/support/v4/c/h;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aN;->rN:Landroid/support/v4/c/h;

    .line 288
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/aA;I)Landroid/support/v7/widget/ac;
    .locals 3

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 100
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 101
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v1, p1}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 104
    if-eqz v1, :cond_4

    iget v2, v1, Landroid/support/v7/widget/aO;->flags:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    .line 105
    iget v0, v1, Landroid/support/v7/widget/aO;->flags:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/aO;->flags:I

    .line 107
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 108
    iget-object p2, v1, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    goto :goto_0

    .line 109
    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 110
    iget-object p2, v1, Landroid/support/v7/widget/aO;->rP:Landroid/support/v7/widget/ac;

    .line 115
    :goto_0
    iget v0, v1, Landroid/support/v7/widget/aO;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->removeAt(I)Ljava/lang/Object;

    .line 117
    invoke-static {v1}, Landroid/support/v7/widget/aO;->a(Landroid/support/v7/widget/aO;)V

    .line 119
    :cond_2
    return-object p2

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_4
    return-object v0
.end method

.method final a(JLandroid/support/v7/widget/aA;)V
    .locals 7

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rN:Landroid/support/v4/c/h;

    iget-object v1, v0, Landroid/support/v4/c/h;->ju:[J

    iget v2, v0, Landroid/support/v4/c/h;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/c/e;->a([JIJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p1, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aput-object p3, p1, v1

    return-void

    :cond_0
    not-int v1, v1

    iget v2, v0, Landroid/support/v4/c/h;->mSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aget-object v2, v2, v1

    sget-object v3, Landroid/support/v4/c/h;->js:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroid/support/v4/c/h;->ju:[J

    aput-wide p1, v2, v1

    iget-object p1, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aput-object p3, p1, v1

    return-void

    :cond_1
    iget-boolean v2, v0, Landroid/support/v4/c/h;->jt:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/support/v4/c/h;->mSize:I

    iget-object v3, v0, Landroid/support/v4/c/h;->ju:[J

    array-length v3, v3

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/c/h;->gc()V

    iget-object v1, v0, Landroid/support/v4/c/h;->ju:[J

    iget v2, v0, Landroid/support/v4/c/h;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/c/e;->a([JIJ)I

    move-result v1

    not-int v1, v1

    :cond_2
    iget v2, v0, Landroid/support/v4/c/h;->mSize:I

    iget-object v3, v0, Landroid/support/v4/c/h;->ju:[J

    array-length v3, v3

    if-lt v2, v3, :cond_3

    iget v2, v0, Landroid/support/v4/c/h;->mSize:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroid/support/v4/c/e;->s(I)I

    move-result v2

    new-array v3, v2, [J

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/support/v4/c/h;->ju:[J

    iget-object v5, v0, Landroid/support/v4/c/h;->ju:[J

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    iget-object v5, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Landroid/support/v4/c/h;->ju:[J

    iput-object v2, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    :cond_3
    iget v2, v0, Landroid/support/v4/c/h;->mSize:I

    sub-int/2addr v2, v1

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/support/v4/c/h;->ju:[J

    iget-object v3, v0, Landroid/support/v4/c/h;->ju:[J

    add-int/lit8 v4, v1, 0x1

    iget v5, v0, Landroid/support/v4/c/h;->mSize:I

    sub-int/2addr v5, v1

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    iget-object v3, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    iget v5, v0, Landroid/support/v4/c/h;->mSize:I

    sub-int/2addr v5, v1

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v2, v0, Landroid/support/v4/c/h;->ju:[J

    aput-wide p1, v2, v1

    iget-object p1, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aput-object p3, p1, v1

    iget p1, v0, Landroid/support/v4/c/h;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/support/v4/c/h;->mSize:I

    .line 131
    return-void
.end method

.method final a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V
    .locals 2

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Landroid/support/v7/widget/aO;->ca()Landroid/support/v7/widget/aO;

    move-result-object v0

    .line 65
    iget-object v1, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    .line 68
    iget p1, v0, Landroid/support/v7/widget/aO;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Landroid/support/v7/widget/aO;->flags:I

    .line 69
    return-void
.end method

.method final b(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V
    .locals 2

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 181
    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Landroid/support/v7/widget/aO;->ca()Landroid/support/v7/widget/aO;

    move-result-object v0

    .line 183
    iget-object v1, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/aO;->rP:Landroid/support/v7/widget/ac;

    .line 186
    iget p1, v0, Landroid/support/v7/widget/aO;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroid/support/v7/widget/aO;->flags:I

    .line 187
    return-void
.end method

.method final clear()V
    .locals 6

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->clear()V

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rN:Landroid/support/v4/c/h;

    iget v1, v0, Landroid/support/v4/c/h;->mSize:I

    iget-object v2, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, 0x0

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/support/v4/c/h;->mSize:I

    iput-boolean v3, v0, Landroid/support/v4/c/h;->jt:Z

    .line 54
    return-void
.end method

.method final n(Landroid/support/v7/widget/aA;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aO;

    .line 73
    if-eqz p1, :cond_0

    iget p1, p1, Landroid/support/v7/widget/aO;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final o(Landroid/support/v7/widget/aA;)V
    .locals 2

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 197
    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Landroid/support/v7/widget/aO;->ca()Landroid/support/v7/widget/aO;

    move-result-object v0

    .line 199
    iget-object v1, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    iget p1, v0, Landroid/support/v7/widget/aO;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/support/v7/widget/aO;->flags:I

    .line 202
    return-void
.end method

.method final p(Landroid/support/v7/widget/aA;)V
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aO;

    .line 210
    if-nez p1, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    iget v0, p1, Landroid/support/v7/widget/aO;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/support/v7/widget/aO;->flags:I

    .line 214
    return-void
.end method

.method final q(Landroid/support/v7/widget/aA;)V
    .locals 5

    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rN:Landroid/support/v4/c/h;

    invoke-virtual {v0}, Landroid/support/v4/c/h;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 259
    iget-object v2, p0, Landroid/support/v7/widget/aN;->rN:Landroid/support/v4/c/h;

    invoke-virtual {v2, v0}, Landroid/support/v4/c/h;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 260
    iget-object v2, p0, Landroid/support/v7/widget/aN;->rN:Landroid/support/v4/c/h;

    iget-object v3, v2, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aget-object v3, v3, v0

    sget-object v4, Landroid/support/v4/c/h;->js:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    sget-object v4, Landroid/support/v4/c/h;->js:Ljava/lang/Object;

    aput-object v4, v3, v0

    iput-boolean v1, v2, Landroid/support/v4/c/h;->jt:Z

    .line 261
    :cond_0
    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 264
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aO;

    .line 265
    if-eqz p1, :cond_3

    .line 266
    invoke-static {p1}, Landroid/support/v7/widget/aO;->a(Landroid/support/v7/widget/aO;)V

    .line 268
    :cond_3
    return-void
.end method
