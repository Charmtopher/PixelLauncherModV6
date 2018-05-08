.class public final Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;


# instance fields
.field public component:Ljava/lang/String;

.field public containerType:I

.field public gridX:I

.field public gridY:I

.field public itemId:Ljava/lang/String;

.field public itemType:I

.field public packageName:Ljava/lang/String;

.field public pageId:I

.field public spanX:I

.field public spanY:I

.field public type:I

.field public userType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->cachedSize:I

    .line 92
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 2

    .line 43
    sget-object v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-nez v0, :cond_1

    .line 44
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    sput-object v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 155
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 157
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    .line 158
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x2

    iget v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    .line 162
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_1
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    if-eqz v1, :cond_2

    .line 165
    const/4 v1, 0x3

    iget v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    .line 166
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_2
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    if-eqz v1, :cond_3

    .line 169
    const/4 v1, 0x4

    iget v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    .line 170
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_3
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    if-eqz v1, :cond_4

    .line 173
    const/4 v1, 0x5

    iget v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    .line 174
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_4
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    if-eqz v1, :cond_5

    .line 177
    const/4 v1, 0x6

    iget v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    .line 178
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 181
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    .line 182
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 185
    const/16 v1, 0x8

    iget-object v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    .line 186
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 189
    const/16 v1, 0x9

    iget-object v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    .line 190
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_8
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    if-eq v1, v2, :cond_9

    .line 193
    const/16 v1, 0xa

    iget v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    .line 194
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_9
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    if-eq v1, v2, :cond_a

    .line 197
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    .line 198
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_a
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    if-eqz v1, :cond_b

    .line 201
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    .line 202
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_b
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 1

    .line 30
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    goto :goto_0

    :sswitch_c
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 114
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 120
    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x3

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 123
    :cond_2
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x4

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 126
    :cond_3
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    if-eqz v0, :cond_4

    .line 127
    const/4 v0, 0x5

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 129
    :cond_4
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    if-eqz v0, :cond_5

    .line 130
    const/4 v0, 0x6

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 133
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 139
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 141
    :cond_8
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    if-eq v0, v1, :cond_9

    .line 142
    const/16 v0, 0xa

    iget v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 144
    :cond_9
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    if-eq v0, v1, :cond_a

    .line 145
    const/16 v0, 0xb

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 147
    :cond_a
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    if-eqz v0, :cond_b

    .line 148
    const/16 v0, 0xc

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 150
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 151
    return-void
.end method
