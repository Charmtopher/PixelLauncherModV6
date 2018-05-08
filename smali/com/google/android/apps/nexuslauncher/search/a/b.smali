.class public final Lcom/google/android/apps/nexuslauncher/search/a/b;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public height:I

.field public left:I

.field public top:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->cachedSize:I

    .line 47
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 79
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    .line 81
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    if-eqz v1, :cond_1

    .line 84
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    .line 85
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_1
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    if-eqz v1, :cond_2

    .line 88
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    .line 89
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    if-eqz v1, :cond_3

    .line 92
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    .line 93
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 61
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 64
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 67
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 70
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 73
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 74
    return-void
.end method
