.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/j;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

.field public Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

.field public Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->cachedSize:I

    .line 298
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 325
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    if-eqz v1, :cond_0

    .line 327
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    .line 328
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    if-eqz v1, :cond_1

    .line 331
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    .line 332
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    if-eqz v1, :cond_2

    .line 335
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    .line 336
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_2
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    if-eqz v0, :cond_1

    .line 315
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    if-eqz v0, :cond_2

    .line 318
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 320
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 321
    return-void
.end method
