.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/s;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile DB:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;


# instance fields
.field public Cm:Ljava/lang/String;

.field public DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 479
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->el()[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->cachedSize:I

    .line 481
    return-void
.end method

.method public static em()[Lcom/google/android/apps/nexuslauncher/reflection/e/s;
    .locals 2

    .line 462
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DB:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    if-nez v0, :cond_1

    .line 463
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DB:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    if-nez v1, :cond_0

    .line 466
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DB:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    .line 468
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 470
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DB:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 509
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    .line 512
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 515
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 516
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    aget-object v2, v2, v1

    .line 517
    if-eqz v2, :cond_1

    .line 518
    const/4 v3, 0x2

    .line 519
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 515
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 456
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/p;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/p;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->Cm:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 497
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->DC:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    aget-object v1, v1, v0

    .line 499
    if-eqz v1, :cond_1

    .line 500
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 497
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 505
    return-void
.end method
