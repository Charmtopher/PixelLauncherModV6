.class public final Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;


# instance fields
.field public cardinality:I

.field public componentHash:I

.field public containerType:I

.field public controlType:I

.field public extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

.field public gridX:I

.field public gridY:I

.field public intentHash:I

.field public itemType:I

.field public packageNameHash:I

.field public pageIndex:I

.field public predictedRank:I

.field public rank:I

.field public spanX:I

.field public spanY:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    iput v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cachedSize:I

    .line 133
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 2

    .line 72
    sget-object v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    sput-object v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 78
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 212
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 213
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 214
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    .line 215
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_0
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    if-eqz v1, :cond_1

    .line 218
    const/4 v1, 0x2

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 219
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_1
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    if-eqz v1, :cond_2

    .line 222
    const/4 v1, 0x3

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 223
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_2
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    if-eqz v1, :cond_3

    .line 226
    const/4 v1, 0x4

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 227
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_3
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    if-eqz v1, :cond_4

    .line 230
    const/4 v1, 0x5

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 231
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_4
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v1, :cond_5

    .line 234
    const/4 v1, 0x6

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 235
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_5
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    if-eqz v1, :cond_6

    .line 238
    const/4 v1, 0x7

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    .line 239
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_6
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    if-eqz v1, :cond_7

    .line 242
    const/16 v1, 0x8

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    .line 243
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_7
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-eqz v1, :cond_8

    .line 246
    const/16 v1, 0x9

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 247
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_8
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v1, :cond_9

    .line 250
    const/16 v1, 0xa

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    .line 251
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_9
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v1, :cond_a

    .line 254
    const/16 v1, 0xb

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    .line 255
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_a
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v1, :cond_b

    .line 258
    const/16 v1, 0xc

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    .line 259
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_b
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    if-eq v1, v2, :cond_c

    .line 262
    const/16 v1, 0xd

    iget v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    .line 263
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_c
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    if-eq v1, v2, :cond_d

    .line 266
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    .line 267
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_d
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    if-eqz v1, :cond_e

    .line 270
    const/16 v1, 0xf

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 271
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_e
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-eqz v1, :cond_f

    .line 274
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    .line 275
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_f
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 1

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_3
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x18 -> :sswitch_d
        0x20 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x58 -> :sswitch_5
        0x60 -> :sswitch_4
        0x68 -> :sswitch_3
        0x70 -> :sswitch_2
        0x78 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 159
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 160
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 162
    :cond_0
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 165
    :cond_1
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x3

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 168
    :cond_2
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    if-eqz v0, :cond_3

    .line 169
    const/4 v0, 0x4

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 171
    :cond_3
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    if-eqz v0, :cond_4

    .line 172
    const/4 v0, 0x5

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 174
    :cond_4
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v0, :cond_5

    .line 175
    const/4 v0, 0x6

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 177
    :cond_5
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    if-eqz v0, :cond_6

    .line 178
    const/4 v0, 0x7

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 180
    :cond_6
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    if-eqz v0, :cond_7

    .line 181
    const/16 v0, 0x8

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 183
    :cond_7
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-eqz v0, :cond_8

    .line 184
    const/16 v0, 0x9

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 186
    :cond_8
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v0, :cond_9

    .line 187
    const/16 v0, 0xa

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 189
    :cond_9
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v0, :cond_a

    .line 190
    const/16 v0, 0xb

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 192
    :cond_a
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v0, :cond_b

    .line 193
    const/16 v0, 0xc

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 195
    :cond_b
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    if-eq v0, v1, :cond_c

    .line 196
    const/16 v0, 0xd

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 198
    :cond_c
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    if-eq v0, v1, :cond_d

    .line 199
    const/16 v0, 0xe

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 201
    :cond_d
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    if-eqz v0, :cond_e

    .line 202
    const/16 v0, 0xf

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 204
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-eqz v0, :cond_f

    .line 205
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 207
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 208
    return-void
.end method
