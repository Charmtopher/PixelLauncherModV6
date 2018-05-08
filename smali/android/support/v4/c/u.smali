.class public Landroid/support/v4/c/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static jL:[Ljava/lang/Object;

.field static jM:I

.field static jN:[Ljava/lang/Object;

.field static jO:I


# instance fields
.field public jl:[I

.field public jm:[Ljava/lang/Object;

.field public mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    sget-object v0, Landroid/support/v4/c/e;->jo:[I

    iput-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    .line 235
    sget-object v0, Landroid/support/v4/c/e;->jq:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 237
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    if-nez p1, :cond_0

    .line 244
    sget-object p1, Landroid/support/v4/c/e;->jo:[I

    iput-object p1, p0, Landroid/support/v4/c/u;->jl:[I

    .line 245
    sget-object p1, Landroid/support/v4/c/e;->jq:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/c/u;->q(I)V

    .line 249
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/c/u;->mSize:I

    .line 250
    return-void
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 7

    .line 198
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 199
    const-class v0, Landroid/support/v4/c/a;

    monitor-enter v0

    .line 200
    :try_start_0
    sget v6, Landroid/support/v4/c/u;->jO:I

    if-ge v6, v4, :cond_1

    .line 201
    sget-object v4, Landroid/support/v4/c/u;->jN:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 202
    aput-object p0, p1, v5

    .line 203
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_0
    if-lt p0, v2, :cond_0

    .line 204
    aput-object v1, p1, p0

    .line 203
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 206
    :cond_0
    sput-object p1, Landroid/support/v4/c/u;->jN:[Ljava/lang/Object;

    .line 207
    sget p0, Landroid/support/v4/c/u;->jO:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/c/u;->jO:I

    .line 211
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 212
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 213
    const-class v0, Landroid/support/v4/c/a;

    monitor-enter v0

    .line 214
    :try_start_1
    sget v6, Landroid/support/v4/c/u;->jM:I

    if-ge v6, v4, :cond_4

    .line 215
    sget-object v4, Landroid/support/v4/c/u;->jL:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 216
    aput-object p0, p1, v5

    .line 217
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_1
    if-lt p0, v2, :cond_3

    .line 218
    aput-object v1, p1, p0

    .line 217
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 220
    :cond_3
    sput-object p1, Landroid/support/v4/c/u;->jL:[Ljava/lang/Object;

    .line 221
    sget p0, Landroid/support/v4/c/u;->jM:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/c/u;->jM:I

    .line 225
    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 227
    :cond_5
    return-void
.end method

.method private static b([III)I
    .locals 0

    .line 74
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/c/e;->a([III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 75
    :catch_0
    move-exception p0

    .line 77
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private q(I)V
    .locals 5

    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 163
    const-class v3, Landroid/support/v4/c/a;

    monitor-enter v3

    .line 164
    :try_start_0
    sget-object v4, Landroid/support/v4/c/u;->jN:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 165
    sget-object p1, Landroid/support/v4/c/u;->jN:[Ljava/lang/Object;

    .line 166
    iput-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 167
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/c/u;->jN:[Ljava/lang/Object;

    .line 168
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/c/u;->jl:[I

    .line 169
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 170
    sget p1, Landroid/support/v4/c/u;->jO:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/c/u;->jO:I

    .line 173
    monitor-exit v3

    return-void

    .line 175
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 176
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 177
    const-class v3, Landroid/support/v4/c/a;

    monitor-enter v3

    .line 178
    :try_start_1
    sget-object v4, Landroid/support/v4/c/u;->jL:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 179
    sget-object p1, Landroid/support/v4/c/u;->jL:[Ljava/lang/Object;

    .line 180
    iput-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 181
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/c/u;->jL:[Ljava/lang/Object;

    .line 182
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/c/u;->jl:[I

    .line 183
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 184
    sget p1, Landroid/support/v4/c/u;->jM:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/c/u;->jM:I

    .line 187
    monitor-exit v3

    return-void

    .line 189
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 192
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    .line 193
    shl-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 194
    return-void
.end method


# virtual methods
.method final aD()I
    .locals 5

    .line 123
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 v0, -0x1

    return v0

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/support/v4/c/u;->jl:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/c/u;->b([III)I

    move-result v1

    .line 133
    if-gez v1, :cond_1

    .line 134
    return v1

    .line 138
    :cond_1
    iget-object v2, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 139
    return v1

    .line 144
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/c/u;->jl:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 145
    iget-object v3, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    .line 144
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 150
    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    .line 149
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 157
    :cond_6
    not-int v0, v2

    return v0
.end method

.method public clear()V
    .locals 4

    .line 266
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    .line 268
    iget-object v1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 269
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    .line 270
    sget-object v3, Landroid/support/v4/c/e;->jo:[I

    iput-object v3, p0, Landroid/support/v4/c/u;->jl:[I

    .line 271
    sget-object v3, Landroid/support/v4/c/e;->jq:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 272
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v4/c/u;->mSize:I

    .line 273
    invoke-static {v0, v1, v2}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    .line 275
    :cond_0
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    if-gtz v0, :cond_1

    .line 278
    return-void

    .line 276
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureCapacity(I)V
    .locals 5

    .line 285
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 286
    iget-object v1, p0, Landroid/support/v4/c/u;->jl:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 287
    iget-object v1, p0, Landroid/support/v4/c/u;->jl:[I

    .line 288
    iget-object v2, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 289
    invoke-direct {p0, p1}, Landroid/support/v4/c/u;->q(I)V

    .line 290
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    if-lez p1, :cond_0

    .line 291
    iget-object p1, p0, Landroid/support/v4/c/u;->jl:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :cond_0
    invoke-static {v1, v2, v0}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    .line 296
    :cond_1
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    if-ne p1, v0, :cond_2

    .line 299
    return-void

    .line 297
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 587
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 588
    return v0

    .line 590
    :cond_0
    instance-of v1, p1, Landroid/support/v4/c/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 591
    check-cast p1, Landroid/support/v4/c/u;

    .line 592
    invoke-virtual {p0}, Landroid/support/v4/c/u;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/c/u;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 593
    return v2

    .line 597
    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    iget v3, p0, Landroid/support/v4/c/u;->mSize:I

    if-ge v1, v3, :cond_5

    .line 598
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 599
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 600
    invoke-virtual {p1, v3}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 601
    if-nez v4, :cond_3

    .line 602
    if-nez v5, :cond_2

    invoke-virtual {p1, v3}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 603
    :cond_2
    return v2

    .line 605
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    .line 606
    return v2

    .line 597
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    :cond_5
    nop

    .line 614
    return v0

    .line 611
    :catch_0
    move-exception p1

    .line 612
    return v2

    .line 609
    :catch_1
    move-exception p1

    .line 610
    return v2

    .line 615
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 616
    check-cast p1, Ljava/util/Map;

    .line 617
    invoke-virtual {p0}, Landroid/support/v4/c/u;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_7

    .line 618
    return v2

    .line 622
    :cond_7
    move v1, v2

    :goto_1
    :try_start_1
    iget v3, p0, Landroid/support/v4/c/u;->mSize:I

    if-ge v1, v3, :cond_b

    .line 623
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 624
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 625
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 626
    if-nez v4, :cond_9

    .line 627
    if-nez v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 628
    :cond_8
    return v2

    .line 630
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v3, :cond_a

    .line 631
    return v2

    .line 622
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 638
    :cond_b
    nop

    .line 639
    return v0

    .line 636
    :catch_2
    move-exception p1

    .line 637
    return v2

    .line 634
    :catch_3
    move-exception p1

    .line 635
    return v2

    .line 641
    :cond_c
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 358
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 359
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 9

    .line 649
    iget-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    .line 650
    iget-object v1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 651
    nop

    .line 652
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    move v6, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 653
    aget-object v7, v1, v5

    .line 654
    aget v8, v0, v3

    if-nez v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 652
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 656
    :cond_1
    return v6
.end method

.method final indexOf(Ljava/lang/Object;I)I
    .locals 5

    .line 85
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 88
    if-nez v0, :cond_0

    .line 89
    const/4 p1, -0x1

    return p1

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/support/v4/c/u;->jl:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/c/u;->b([III)I

    move-result v1

    .line 95
    if-gez v1, :cond_1

    .line 96
    return v1

    .line 100
    :cond_1
    iget-object v2, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    return v1

    .line 106
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/c/u;->jl:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 107
    iget-object v3, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 106
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 112
    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 111
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 119
    :cond_6
    not-int p1, v2

    return p1
.end method

.method public final indexOfKey(Ljava/lang/Object;)I
    .locals 1

    .line 318
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/c/u;->aD()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/u;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final indexOfValue(Ljava/lang/Object;)I
    .locals 5

    .line 322
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 323
    iget-object v1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 324
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 325
    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_3

    .line 326
    aget-object v3, v1, p1

    if-nez v3, :cond_0

    .line 327
    shr-int/2addr p1, v2

    return p1

    .line 325
    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 331
    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 332
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    shr-int/lit8 p1, v3, 0x1

    return p1

    .line 331
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 337
    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 397
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keyAt(I)Ljava/lang/Object;
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 409
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    .line 412
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 413
    nop

    .line 414
    invoke-virtual {p0}, Landroid/support/v4/c/u;->aD()I

    move-result v2

    .line 419
    move v3, v1

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 417
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/c/u;->indexOf(Ljava/lang/Object;I)I

    move-result v3

    .line 419
    move v8, v3

    move v3, v2

    move v2, v8

    :goto_0
    if-ltz v2, :cond_1

    .line 420
    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 421
    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 422
    iget-object v1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 423
    return-object v0

    .line 426
    :cond_1
    not-int v2, v2

    .line 427
    iget-object v4, p0, Landroid/support/v4/c/u;->jl:[I

    array-length v4, v4

    if-lt v0, v4, :cond_6

    .line 428
    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v0, v5, :cond_2

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    .line 429
    :cond_2
    if-lt v0, v4, :cond_3

    .line 433
    move v4, v5

    goto :goto_1

    .line 429
    :cond_3
    nop

    .line 433
    :goto_1
    iget-object v5, p0, Landroid/support/v4/c/u;->jl:[I

    .line 434
    iget-object v6, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 435
    invoke-direct {p0, v4}, Landroid/support/v4/c/u;->q(I)V

    .line 437
    iget v4, p0, Landroid/support/v4/c/u;->mSize:I

    if-ne v0, v4, :cond_5

    .line 441
    iget-object v4, p0, Landroid/support/v4/c/u;->jl:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 443
    iget-object v4, p0, Landroid/support/v4/c/u;->jl:[I

    array-length v7, v5

    invoke-static {v5, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    iget-object v4, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    :cond_4
    invoke-static {v5, v6, v0}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    goto :goto_2

    .line 438
    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 450
    :cond_6
    :goto_2
    if-ge v2, v0, :cond_7

    .line 453
    iget-object v1, p0, Landroid/support/v4/c/u;->jl:[I

    iget-object v4, p0, Landroid/support/v4/c/u;->jl:[I

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-object v1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    iget-object v6, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v5, v5, 0x1

    iget v7, p0, Landroid/support/v4/c/u;->mSize:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    :cond_7
    iget v1, p0, Landroid/support/v4/c/u;->mSize:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    array-length v0, v0

    if-ge v2, v0, :cond_8

    .line 463
    iget-object v0, p0, Landroid/support/v4/c/u;->jl:[I

    aput v3, v0, v2

    .line 464
    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    .line 465
    iget-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    .line 466
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v4/c/u;->mSize:I

    .line 467
    const/4 p1, 0x0

    return-object p1

    .line 459
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 498
    if-ltz p1, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v4/c/u;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 502
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 10

    .line 511
    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    .line 512
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    .line 514
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_0

    .line 517
    iget-object p1, p0, Landroid/support/v4/c/u;->jl:[I

    iget-object v1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Landroid/support/v4/c/u;->a([I[Ljava/lang/Object;I)V

    .line 518
    sget-object p1, Landroid/support/v4/c/e;->jo:[I

    iput-object p1, p0, Landroid/support/v4/c/u;->jl:[I

    .line 519
    sget-object p1, Landroid/support/v4/c/e;->jq:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 520
    goto/16 :goto_1

    .line 522
    :cond_0
    add-int/lit8 v5, v2, -0x1

    .line 523
    iget-object v6, p0, Landroid/support/v4/c/u;->jl:[I

    array-length v6, v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_5

    iget v6, p0, Landroid/support/v4/c/u;->mSize:I

    iget-object v8, p0, Landroid/support/v4/c/u;->jl:[I

    array-length v8, v8

    div-int/lit8 v8, v8, 0x3

    if-ge v6, v8, :cond_5

    .line 527
    if-le v2, v7, :cond_1

    shr-int/lit8 v6, v2, 0x1

    add-int v7, v2, v6

    nop

    .line 531
    :cond_1
    iget-object v6, p0, Landroid/support/v4/c/u;->jl:[I

    .line 532
    iget-object v8, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    .line 533
    invoke-direct {p0, v7}, Landroid/support/v4/c/u;->q(I)V

    .line 535
    iget v7, p0, Landroid/support/v4/c/u;->mSize:I

    if-ne v2, v7, :cond_4

    .line 539
    if-lez p1, :cond_2

    .line 541
    iget-object v7, p0, Landroid/support/v4/c/u;->jl:[I

    invoke-static {v6, v3, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    iget-object v7, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    invoke-static {v8, v3, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    :cond_2
    if-ge p1, v5, :cond_3

    .line 547
    add-int/lit8 v3, p1, 0x1

    iget-object v7, p0, Landroid/support/v4/c/u;->jl:[I

    sub-int v9, v5, p1

    invoke-static {v6, v3, v7, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    shl-int/lit8 p1, v3, 0x1

    iget-object v3, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v4, v9, 0x1

    invoke-static {v8, p1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    :cond_3
    goto :goto_0

    .line 536
    :cond_4
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 552
    :cond_5
    if-ge p1, v5, :cond_6

    .line 555
    iget-object v3, p0, Landroid/support/v4/c/u;->jl:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/support/v4/c/u;->jl:[I

    sub-int v8, v5, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    iget-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v3, v6, 0x1

    iget-object v6, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v7, v8, 0x1

    invoke-static {p1, v3, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    :cond_6
    iget-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 v1, v5, 0x1

    const/4 v3, 0x0

    aput-object v3, p1, v1

    .line 560
    iget-object p1, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    add-int/2addr v1, v4

    aput-object v3, p1, v1

    .line 563
    :goto_0
    move v3, v5

    :goto_1
    iget p1, p0, Landroid/support/v4/c/u;->mSize:I

    if-ne v2, p1, :cond_7

    .line 566
    iput v3, p0, Landroid/support/v4/c/u;->mSize:I

    .line 567
    return-object v0

    .line 564
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 574
    iget v0, p0, Landroid/support/v4/c/u;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 668
    invoke-virtual {p0}, Landroid/support/v4/c/u;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "{}"

    return-object v0

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/c/u;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 673
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/u;->mSize:I

    if-ge v1, v2, :cond_4

    .line 675
    if-lez v1, :cond_1

    .line 676
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 679
    if-eq v2, p0, :cond_2

    .line 680
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 682
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :goto_1
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p0, v1}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 686
    if-eq v2, p0, :cond_3

    .line 687
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 689
    :cond_3
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/support/v4/c/u;->jm:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method
