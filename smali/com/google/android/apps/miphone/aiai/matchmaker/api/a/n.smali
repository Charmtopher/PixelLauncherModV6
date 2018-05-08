.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public sI:Z

.field public sJ:Z

.field public sK:Z

.field public sL:I

.field public sM:I

.field public sN:I

.field public sO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 924
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sI:Z

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sJ:Z

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sK:Z

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->cachedSize:I

    .line 926
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 970
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 971
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sI:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 972
    nop

    .line 973
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 975
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sJ:Z

    if-eqz v1, :cond_1

    .line 976
    const/4 v1, 0x2

    .line 977
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 979
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sK:Z

    if-eqz v1, :cond_2

    .line 980
    const/4 v1, 0x3

    .line 981
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 983
    :cond_2
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    if-eqz v1, :cond_3

    .line 984
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    .line 985
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 987
    :cond_3
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    if-eqz v1, :cond_4

    .line 988
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    .line 989
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 991
    :cond_4
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    if-eqz v1, :cond_5

    .line 992
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    .line 993
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 995
    :cond_5
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    if-eqz v1, :cond_6

    .line 996
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    .line 997
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 999
    :cond_6
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 884
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sK:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sJ:Z

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sI:Z

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 944
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sI:Z

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sI:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 947
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sJ:Z

    if-eqz v0, :cond_1

    .line 948
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sJ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 950
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sK:Z

    if-eqz v0, :cond_2

    .line 951
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sK:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 953
    :cond_2
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    if-eqz v0, :cond_3

    .line 954
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 956
    :cond_3
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    if-eqz v0, :cond_4

    .line 957
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 959
    :cond_4
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    if-eqz v0, :cond_5

    .line 960
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 962
    :cond_5
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    if-eqz v0, :cond_6

    .line 963
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 965
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 966
    return-void
.end method
