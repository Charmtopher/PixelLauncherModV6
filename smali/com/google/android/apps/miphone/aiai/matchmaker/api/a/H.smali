.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# static fields
.field private static volatile tO:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;


# instance fields
.field public name:Ljava/lang/String;

.field public tP:Ljava/lang/String;

.field public tQ:I

.field public tR:F

.field public tS:J

.field public tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

.field public to:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1278
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tQ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tR:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tS:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->cachedSize:I

    .line 1280
    return-void
.end method

.method public static ck()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;
    .locals 2

    .line 1240
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tO:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    if-nez v0, :cond_1

    .line 1241
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    :try_start_0
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tO:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    if-nez v1, :cond_0

    .line 1244
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    sput-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tO:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    .line 1246
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1248
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tO:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 1329
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 1330
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    .line 1332
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1334
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1335
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    .line 1336
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1338
    :cond_1
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tQ:I

    if-eqz v1, :cond_2

    .line 1339
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tQ:I

    .line 1340
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1342
    :cond_2
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tR:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 1343
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1344
    nop

    .line 1345
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 1347
    :cond_3
    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tS:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 1348
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tS:J

    .line 1349
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1351
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-eqz v1, :cond_5

    .line 1352
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    .line 1353
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1355
    :cond_5
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    if-eqz v1, :cond_6

    .line 1356
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    .line 1357
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1359
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1360
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    .line 1361
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1363
    :cond_7
    return v0
.end method

.method public final g(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;
    .locals 6

    .line 1371
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 1372
    if-eqz v0, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_8

    const/16 v1, 0x25

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    .line 1376
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1377
    return-object p0

    .line 1419
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    .line 1423
    :cond_1
    goto :goto_0

    .line 1409
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 1411
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    if-ltz v2, :cond_3

    const/4 v3, 0x6

    if-gt v2, v3, :cond_3

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    .line 1415
    goto :goto_0

    .line 1411
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum IntentParamType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :catch_0
    move-exception v2

    .line 1413
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 1414
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 1416
    goto :goto_0

    .line 1402
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-nez v0, :cond_5

    .line 1403
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    .line 1405
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1406
    goto :goto_0

    .line 1398
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tS:J

    .line 1399
    goto :goto_0

    .line 1394
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->iq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tR:F

    .line 1395
    goto/16 :goto_0

    .line 1390
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tQ:I

    .line 1391
    goto/16 :goto_0

    .line 1386
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    .line 1387
    goto/16 :goto_0

    .line 1382
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    .line 1383
    goto/16 :goto_0

    .line 1374
    :cond_b
    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 1234
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->g(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1299
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1303
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1305
    :cond_1
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tQ:I

    if-eqz v0, :cond_2

    .line 1306
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tQ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1308
    :cond_2
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tR:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 1309
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1310
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tR:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)V

    .line 1312
    :cond_3
    iget-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1313
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tS:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 1315
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    if-eqz v0, :cond_5

    .line 1316
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->tT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1318
    :cond_5
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    if-eqz v0, :cond_6

    .line 1319
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1321
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1322
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->to:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1324
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1325
    return-void
.end method
