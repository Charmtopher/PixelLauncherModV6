.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/c;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

.field public CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

.field public packageName:Ljava/lang/String;

.field public tM:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->cachedSize:I

    .line 42
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 77
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    .line 80
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    .line 84
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    if-eqz v1, :cond_2

    .line 87
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    .line 88
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    if-eqz v1, :cond_3

    .line 91
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    .line 92
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    .line 96
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_4
    return v0
.end method

.method public final j(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/c;
    .locals 2

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    .line 107
    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 111
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    return-object p0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    .line 143
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    if-nez v0, :cond_3

    .line 133
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 136
    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    if-nez v0, :cond_5

    .line 126
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    .line 129
    goto :goto_0

    .line 121
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    .line 122
    goto :goto_0

    .line 117
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    .line 118
    goto :goto_0

    .line 109
    :cond_8
    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->j(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 60
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CT:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 72
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 73
    return-void
.end method
