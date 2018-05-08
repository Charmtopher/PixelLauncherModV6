.class public final Lcom/google/android/apps/nexuslauncher/smartspace/a/i;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile Go:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;


# instance fields
.field public Gm:I

.field public Gp:I

.field public Gq:Z

.field public tl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gq:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->cachedSize:I

    .line 85
    return-void
.end method

.method public static eY()[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;
    .locals 2

    .line 60
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Go:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Go:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Go:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    .line 66
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Go:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .line 116
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    .line 119
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    if-eqz v1, :cond_1

    .line 122
    const/4 v1, 0x2

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    .line 123
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_1
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    if-eqz v1, :cond_2

    .line 126
    const/4 v1, 0x3

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    .line 127
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gq:Z

    if-eqz v1, :cond_3

    .line 130
    const/4 v1, 0x4

    .line 131
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 133
    :cond_3
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gq:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->io()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    goto :goto_0

    :cond_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->tl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 105
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->I(II)V

    .line 108
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gq:Z

    if-eqz v0, :cond_3

    .line 109
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->Gq:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->h(IZ)V

    .line 111
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 112
    return-void
.end method
