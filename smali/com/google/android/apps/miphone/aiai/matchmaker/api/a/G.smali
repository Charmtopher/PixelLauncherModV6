.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# instance fields
.field public className:Ljava/lang/String;

.field public flags:I

.field public mimeType:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

.field public tM:Ljava/lang/String;

.field public tN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1071
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 1072
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;->ck()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->cachedSize:I

    .line 1073
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 1122
    invoke-super {p0}, Lcom/google/protobuf/nano/b;->computeSerializedSize()I

    move-result v0

    .line 1123
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1124
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    aget-object v2, v2, v1

    .line 1126
    if-eqz v2, :cond_0

    .line 1127
    nop

    .line 1128
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1133
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    .line 1134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1136
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1137
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    .line 1138
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1140
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1141
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    .line 1142
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1144
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1145
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    .line 1146
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1148
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1149
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    .line 1150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1152
    :cond_6
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    if-eqz v1, :cond_7

    .line 1153
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    .line 1154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1156
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 1031
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

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

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    invoke-direct {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    goto/16 :goto_0

    :cond_b
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1091
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1092
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tL:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/H;

    aget-object v1, v1, v0

    .line 1094
    if-eqz v1, :cond_0

    .line 1095
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 1092
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1103
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->className:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1105
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1106
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1108
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1109
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->tN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1111
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1112
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 1114
    :cond_6
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    if-eqz v0, :cond_7

    .line 1115
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/G;->flags:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 1117
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/b;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1118
    return-void
.end method
