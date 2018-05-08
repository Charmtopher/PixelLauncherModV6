.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sm:I

.field public sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

.field public sq:I

.field public ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

.field public st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

.field public su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

.field public sv:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1135
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sm:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->cg()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sq:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sv:I

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->cachedSize:I

    .line 1137
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;
    .locals 6

    .line 1228
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 1229
    if-eqz v0, :cond_f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 1233
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1234
    return-object p0

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-nez v0, :cond_1

    .line 1298
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1304
    :cond_2
    goto :goto_0

    .line 1293
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sv:I

    .line 1294
    goto :goto_0

    .line 1283
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 1285
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v3, 0x3

    if-gt v2, v3, :cond_5

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sq:I

    .line 1289
    goto :goto_0

    .line 1285
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum ActionGroupInteraction"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :catch_0
    move-exception v2

    .line 1287
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 1288
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 1290
    goto :goto_0

    .line 1276
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-nez v0, :cond_7

    .line 1277
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 1279
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1280
    goto/16 :goto_0

    .line 1256
    :cond_8
    nop

    .line 1257
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    .line 1258
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 1259
    move v1, v2

    goto :goto_1

    .line 1258
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v1, v1

    .line 1259
    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 1261
    if-eqz v1, :cond_a

    .line 1262
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    :cond_a
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 1265
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;-><init>()V

    aput-object v2, v0, v1

    .line 1266
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1267
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    .line 1264
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1270
    :cond_b
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;-><init>()V

    aput-object v2, v0, v1

    .line 1271
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1272
    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 1273
    goto/16 :goto_0

    .line 1249
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-nez v0, :cond_d

    .line 1250
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 1252
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 1253
    goto/16 :goto_0

    .line 1239
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    .line 1241
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->aq(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sm:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1245
    goto/16 :goto_0

    .line 1242
    :catch_1
    move-exception v2

    .line 1243
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    .line 1244
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->a(Lcom/google/protobuf/nano/a;I)Z

    .line 1246
    goto/16 :goto_0

    .line 1231
    :cond_f
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 1186
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 1187
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sm:I

    if-eqz v1, :cond_0

    .line 1188
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sm:I

    .line 1189
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v1, :cond_1

    .line 1192
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 1193
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1195
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1196
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1197
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    aget-object v2, v2, v1

    .line 1198
    if-eqz v2, :cond_2

    .line 1199
    const/4 v3, 0x3

    .line 1200
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1204
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v1, :cond_4

    .line 1205
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 1206
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1208
    :cond_4
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sq:I

    if-eqz v1, :cond_5

    .line 1209
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sq:I

    .line 1210
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1212
    :cond_5
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sv:I

    if-eqz v1, :cond_6

    .line 1213
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sv:I

    .line 1214
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1216
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-eqz v1, :cond_7

    .line 1217
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 1218
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1220
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 1061
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->b(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1155
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sm:I

    if-eqz v0, :cond_0

    .line 1156
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sm:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    if-eqz v0, :cond_1

    .line 1159
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1162
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1163
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->st:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    aget-object v1, v1, v0

    .line 1164
    if-eqz v1, :cond_2

    .line 1165
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1162
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1169
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    if-eqz v0, :cond_4

    .line 1170
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->su:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1172
    :cond_4
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sq:I

    if-eqz v0, :cond_5

    .line 1173
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sq:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1175
    :cond_5
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sv:I

    if-eqz v0, :cond_6

    .line 1176
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->sv:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1178
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    if-eqz v0, :cond_7

    .line 1179
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/h;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1181
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1182
    return-void
.end method
