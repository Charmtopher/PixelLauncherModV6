.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/h;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public Gm:I

.field public Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

.field public tl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->eY()[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->cachedSize:I

    .line 224
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 256
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    .line 259
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    if-eqz v1, :cond_1

    .line 262
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    .line 263
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 266
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 267
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    aget-object v2, v2, v1

    .line 268
    if-eqz v2, :cond_2

    .line 269
    const/4 v3, 0x3

    .line 270
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 266
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    goto :goto_0

    :cond_7
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->tl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 240
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 244
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->Gn:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    aget-object v1, v1, v0

    .line 246
    if-eqz v1, :cond_2

    .line 247
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 252
    return-void
.end method
