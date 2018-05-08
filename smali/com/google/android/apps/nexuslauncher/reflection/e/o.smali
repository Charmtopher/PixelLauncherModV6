.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/o;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile Dn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;


# instance fields
.field public key:I

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 805
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->cachedSize:I

    .line 807
    return-void
.end method

.method public static ek()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;
    .locals 2

    .line 788
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->Dn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v0, :cond_1

    .line 789
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->Dn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_0

    .line 792
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->Dn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    .line 794
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 796
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->Dn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 830
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 831
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    if-eqz v1, :cond_0

    .line 832
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    .line 833
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 836
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    .line 837
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 839
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 782
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 819
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 822
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 823
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 825
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 826
    return-void
.end method
