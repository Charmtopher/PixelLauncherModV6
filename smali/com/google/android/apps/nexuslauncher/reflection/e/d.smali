.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/d;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile CV:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;


# instance fields
.field public CW:Ljava/lang/String;

.field public CX:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CW:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CX:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->cachedSize:I

    .line 312
    return-void
.end method

.method public static ej()[Lcom/google/android/apps/nexuslauncher/reflection/e/d;
    .locals 2

    .line 293
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CV:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-nez v0, :cond_1

    .line 294
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CV:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    if-nez v1, :cond_0

    .line 297
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CV:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    .line 299
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 301
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CV:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 336
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CW:Ljava/lang/String;

    .line 339
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CX:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 342
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 343
    const/4 v1, 0x2

    .line 344
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 346
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 287
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CX:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CW:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 327
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 328
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 329
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->CX:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 331
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 332
    return-void
.end method
