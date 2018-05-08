.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/d;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile FU:[Lcom/google/android/apps/nexuslauncher/smartspace/a/d;


# instance fields
.field public FV:Z

.field public FW:I

.field public FX:I

.field public FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

.field public FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

.field public Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

.field public Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

.field public Gc:I

.field public Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

.field public Ge:J

.field public Gf:J

.field public Gg:J

.field public Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 825
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FV:Z

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FX:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gc:I

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ge:J

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->cachedSize:I

    .line 827
    return-void
.end method

.method public static eX()[Lcom/google/android/apps/nexuslauncher/smartspace/a/d;
    .locals 2

    .line 775
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FU:[Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    if-nez v0, :cond_1

    .line 776
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FU:[Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    if-nez v1, :cond_0

    .line 779
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FU:[Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    .line 781
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 783
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FU:[Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 894
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 895
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FV:Z

    if-eqz v1, :cond_0

    .line 896
    nop

    .line 897
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 899
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FX:I

    if-eqz v1, :cond_1

    .line 900
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FX:I

    .line 901
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v1, :cond_2

    .line 904
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    .line 905
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 907
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v1, :cond_3

    .line 908
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    .line 909
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 911
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v1, :cond_4

    .line 912
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    .line 913
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 915
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    if-eqz v1, :cond_5

    .line 916
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    .line 917
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 919
    :cond_5
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gc:I

    if-eqz v1, :cond_6

    .line 920
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gc:I

    .line 921
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 923
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    if-eqz v1, :cond_7

    .line 924
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    .line 925
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 927
    :cond_7
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ge:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    .line 928
    const/16 v1, 0x9

    iget-wide v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ge:J

    .line 929
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 931
    :cond_8
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 932
    const/16 v1, 0xa

    iget-wide v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    .line 933
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 935
    :cond_9
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 936
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    .line 937
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    if-eqz v1, :cond_b

    .line 940
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    .line 941
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_b
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    if-eqz v1, :cond_c

    .line 944
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    .line 945
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 947
    :cond_c
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 11
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
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->ip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ge:J

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gc:I

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    goto :goto_1

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    goto :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    goto :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FX:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FV:Z

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x42 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x62 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 850
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FV:Z

    if-eqz v0, :cond_0

    .line 851
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FV:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 853
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FX:I

    if-eqz v0, :cond_1

    .line 854
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v0, :cond_2

    .line 857
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FY:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v0, :cond_3

    .line 860
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FZ:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    if-eqz v0, :cond_4

    .line 863
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ga:Lcom/google/android/apps/nexuslauncher/smartspace/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 865
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    if-eqz v0, :cond_5

    .line 866
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gb:Lcom/google/android/apps/nexuslauncher/smartspace/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 868
    :cond_5
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gc:I

    if-eqz v0, :cond_6

    .line 869
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gc:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 871
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    if-eqz v0, :cond_7

    .line 872
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gd:Lcom/google/android/apps/nexuslauncher/smartspace/a/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 874
    :cond_7
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 875
    const/16 v0, 0x9

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Ge:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 877
    :cond_8
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 878
    const/16 v0, 0xa

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gf:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 880
    :cond_9
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 881
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gg:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)V

    .line 883
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    if-eqz v0, :cond_b

    .line 884
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->Gh:Lcom/google/android/apps/nexuslauncher/smartspace/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 886
    :cond_b
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    if-eqz v0, :cond_c

    .line 887
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/d;->FW:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 889
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 890
    return-void
.end method
