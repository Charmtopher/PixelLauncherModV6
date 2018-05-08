.class public final Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public predictedRankFromTensorflow:I

.field public smartspaceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->predictedRankFromTensorflow:I

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->cachedSize:I

    .line 98
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 122
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->predictedRankFromTensorflow:I

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->predictedRankFromTensorflow:I

    .line 124
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_0
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    if-eqz v1, :cond_1

    .line 127
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    .line 128
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->predictedRankFromTensorflow:I

    goto :goto_0

    :cond_3
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
    .locals 2

    .line 110
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->predictedRankFromTensorflow:I

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->predictedRankFromTensorflow:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 113
    :cond_0
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 117
    return-void
.end method
