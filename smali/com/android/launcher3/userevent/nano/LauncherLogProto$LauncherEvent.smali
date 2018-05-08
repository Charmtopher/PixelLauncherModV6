.class public final Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

.field public actionDurationMillis:J

.field public destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

.field public elapsedContainerMillis:J

.field public elapsedSessionMillis:J

.field public extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

.field public isInLandscapeMode:Z

.field public isInMultiWindowMode:Z

.field public srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 711
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-static {}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    iput-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    iput-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->cachedSize:I

    .line 713
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 774
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    .line 777
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 780
    move v1, v0

    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 781
    iget-object v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v4, v4, v0

    .line 782
    if-eqz v4, :cond_1

    .line 783
    const/4 v5, 0x2

    .line 784
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v4

    add-int/2addr v1, v4

    .line 780
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 789
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-ge v3, v1, :cond_5

    .line 790
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v3

    .line 791
    if-eqz v1, :cond_4

    .line 792
    const/4 v4, 0x3

    .line 793
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 789
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 797
    :cond_5
    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    .line 798
    const/4 v1, 0x4

    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    .line 799
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    :cond_6
    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 802
    const/4 v1, 0x5

    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    .line 803
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    :cond_7
    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    .line 806
    const/4 v1, 0x6

    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    .line 807
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 809
    :cond_8
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v1, :cond_9

    .line 810
    const/4 v1, 0x7

    .line 811
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 813
    :cond_9
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v1, :cond_a

    .line 814
    const/16 v1, 0x8

    .line 815
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 817
    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-eqz v1, :cond_b

    .line 818
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    .line 819
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    :cond_b
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 667
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 v1, 0x38

    if-eq v0, v1, :cond_4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    goto :goto_0

    :cond_8
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->c(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_f

    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    if-nez v0, :cond_11

    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto/16 :goto_0

    :cond_12
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 736
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 737
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v0

    .line 738
    if-eqz v2, :cond_1

    .line 739
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 736
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 744
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 745
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v0, v1

    .line 746
    if-eqz v0, :cond_3

    .line 747
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 744
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 751
    :cond_4
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 752
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 754
    :cond_5
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 755
    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 757
    :cond_6
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 758
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 760
    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v0, :cond_8

    .line 761
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 763
    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v0, :cond_9

    .line 764
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 766
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-eqz v0, :cond_a

    .line 767
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 769
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 770
    return-void
.end method
