.class public final Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile CA:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;


# instance fields
.field public CB:[Ljava/lang/String;

.field public CC:[D

.field public CD:[J

.field public sc:Ljava/lang/String;

.field public time:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 842
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->sc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->type:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->time:J

    sget-object v0, Lcom/google/protobuf/nano/j;->afj:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/j;->afh:[D

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    sget-object v0, Lcom/google/protobuf/nano/j;->aff:[J

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->cachedSize:I

    .line 844
    return-void
.end method

.method public static ed()[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;
    .locals 2

    .line 813
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CA:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    if-nez v0, :cond_1

    .line 814
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CA:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    if-nez v1, :cond_0

    .line 817
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CA:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    .line 819
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 821
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CA:[Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 892
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 893
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->sc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->sc:Ljava/lang/String;

    .line 895
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->type:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 898
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->type:Ljava/lang/String;

    .line 899
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 901
    :cond_1
    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->time:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 902
    const/4 v1, 0x3

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->time:J

    .line 903
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 905
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 906
    nop

    .line 907
    nop

    .line 908
    move v1, v3

    move v4, v1

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 909
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 910
    if-eqz v6, :cond_3

    .line 911
    add-int/lit8 v5, v5, 0x1

    .line 912
    nop

    .line 913
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    .line 908
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    :cond_4
    add-int/2addr v0, v4

    .line 917
    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    .line 919
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    array-length v1, v1

    if-lez v1, :cond_6

    .line 920
    const/16 v1, 0x8

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    array-length v4, v4

    mul-int/2addr v1, v4

    .line 921
    add-int/2addr v0, v1

    .line 922
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 924
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    array-length v1, v1

    if-lez v1, :cond_8

    .line 925
    nop

    .line 926
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 927
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    aget-wide v5, v4, v3

    .line 928
    nop

    .line 929
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->p(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 926
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 931
    :cond_7
    add-int/2addr v0, v1

    .line 932
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    array-length v1, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 934
    :cond_8
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 6

    .line 807
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_17

    const/16 v1, 0xa

    if-eq v0, v1, :cond_16

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    const/16 v1, 0x18

    if-eq v0, v1, :cond_14

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x30

    if-eq v0, v1, :cond_c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->bp(I)I

    move-result v1

    div-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    array-length v3, v3

    :goto_1
    add-int/2addr v0, v3

    new-array v0, v0, [D

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v2, v0

    if-ge v3, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->bq(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x29

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [D

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ir()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->bp(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getPosition()I

    move-result v1

    move v3, v2

    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->it()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->br(I)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    array-length v1, v1

    :goto_6
    add-int/2addr v3, v1

    new-array v3, v3, [J

    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_7
    array-length v2, v3

    if-ge v1, v2, :cond_b

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->bq(I)V

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v0, v0, [J

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_9
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_f

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    goto/16 :goto_0

    :cond_10
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_a

    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    array-length v1, v1

    :goto_a
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_b
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->time:J

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->type:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->sc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 860
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->sc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->sc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 866
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 867
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->time:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 869
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 870
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 871
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CB:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 872
    if-eqz v2, :cond_3

    .line 873
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 870
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    array-length v0, v0

    if-lez v0, :cond_5

    .line 878
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 879
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CC:[D

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)V

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    array-length v0, v0

    if-lez v0, :cond_6

    .line 883
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 884
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;->CD:[J

    aget-wide v3, v2, v1

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 887
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 888
    return-void
.end method
