.class public final Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 336
    invoke-static {}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->emptyArray()[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->cachedSize:I

    .line 337
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 361
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 363
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    aget-object v2, v2, v1

    .line 365
    if-eqz v2, :cond_0

    .line 366
    nop

    .line 367
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 315
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v2}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v2}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 349
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    aget-object v1, v1, v0

    .line 351
    if-eqz v1, :cond_0

    .line 352
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 357
    return-void
.end method
