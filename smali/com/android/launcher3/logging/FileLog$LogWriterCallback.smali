.class Lcom/android/launcher3/logging/FileLog$LogWriterCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mCurrentFileName:Ljava/lang/String;

.field private mCurrentWriter:Ljava/io/PrintWriter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;-><init>()V

    return-void
.end method

.method private closeWriter()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 140
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$100()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/launcher3/logging/FileLog;->ENABLED:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 143
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 202
    return v1

    .line 190
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 191
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 194
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    const-string v2, "log-0"

    invoke-static {v0, v2}, Lcom/android/launcher3/logging/FileLog;->access$300(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 196
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    const-string v2, "log-1"

    invoke-static {v0, v2}, Lcom/android/launcher3/logging/FileLog;->access$300(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 199
    return v1

    .line 186
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 187
    return v1

    .line 145
    :pswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    and-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 154
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_5

    .line 155
    iput-object v2, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    .line 157
    nop

    .line 158
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$100()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 161
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 165
    const/16 v5, 0xa

    const/16 v6, 0x24

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 166
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x400000

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    .line 169
    move v4, v1

    goto :goto_0

    .line 167
    :cond_3
    nop

    .line 169
    :cond_4
    :goto_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 176
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$200()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$200()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_1

    .line 178
    :catch_0
    move-exception p1

    .line 179
    const-string v0, "FileLog"

    const-string v2, "Error writing logs to file"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 183
    :goto_1
    return v1

    .line 141
    :cond_6
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
