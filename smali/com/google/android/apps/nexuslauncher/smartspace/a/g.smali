.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/g;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

.field public Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 364
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->cachedSize:I

    .line 366
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 389
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-eqz v1, :cond_0

    .line 391
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    .line 392
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-eqz v1, :cond_1

    .line 395
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    .line 396
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gk:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;->Gl:Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 384
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 385
    return-void
.end method
