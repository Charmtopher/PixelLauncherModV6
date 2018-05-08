.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/b;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public EZ:J

.field public FP:J

.field public FQ:I

.field public FR:[B

.field public FS:Z

.field public Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1211
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    sget-object v1, Lcom/google/protobuf/nano/j;->afl:[B

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->cachedSize:I

    .line 1213
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 1253
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    .line 1255
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1257
    :cond_0
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 1258
    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    .line 1259
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1261
    :cond_1
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 1262
    const/4 v1, 0x3

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    .line 1263
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1265
    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    if-eqz v1, :cond_3

    .line 1266
    const/4 v1, 0x4

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    .line 1267
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1269
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    sget-object v3, Lcom/google/protobuf/nano/j;->afl:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1270
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    .line 1271
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1273
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    if-eqz v1, :cond_5

    .line 1274
    const/4 v1, 0x6

    .line 1275
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1277
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 1176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 1229
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    if-eqz v0, :cond_0

    .line 1230
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1232
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1233
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 1235
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1236
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 1238
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    if-eqz v0, :cond_3

    .line 1239
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1241
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    sget-object v1, Lcom/google/protobuf/nano/j;->afl:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1242
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I[B)V

    .line 1244
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    if-eqz v0, :cond_5

    .line 1245
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 1247
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1248
    return-void
.end method
