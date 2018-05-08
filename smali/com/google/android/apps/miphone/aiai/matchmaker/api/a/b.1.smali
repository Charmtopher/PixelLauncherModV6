.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile rZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;


# instance fields
.field public sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

.field public sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 231
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->ch()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;->cd()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->cachedSize:I

    .line 232
    return-void
.end method

.method public static cc()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;
    .locals 2

    .line 211
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->rZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    if-nez v0, :cond_1

    .line 212
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->rZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    if-nez v1, :cond_0

    .line 215
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->rZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    .line 217
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 219
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->rZ:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 266
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 268
    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    aget-object v3, v3, v0

    .line 270
    if-eqz v3, :cond_0

    .line 271
    nop

    .line 272
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 277
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    array-length v1, v1

    if-ge v2, v1, :cond_4

    .line 278
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    aget-object v1, v1, v2

    .line 279
    if-eqz v1, :cond_3

    .line 280
    const/4 v3, 0x2

    .line 281
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 246
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    aget-object v2, v2, v0

    .line 248
    if-eqz v2, :cond_0

    .line 249
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sb:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/d;

    aget-object v0, v0, v1

    .line 256
    if-eqz v0, :cond_2

    .line 257
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 254
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 262
    return-void
.end method
