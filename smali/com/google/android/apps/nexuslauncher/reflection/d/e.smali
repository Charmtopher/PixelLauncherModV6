.class public Lcom/google/android/apps/nexuslauncher/reflection/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final CK:Ljava/io/File;

.field private final CL:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CK:Ljava/io/File;

    .line 44
    iput-wide p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CL:J

    .line 45
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/apps/nexuslauncher/reflection/e/c;)V
    .locals 4

    monitor-enter p0

    .line 52
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->k(Ljava/util/List;)V

    .line 53
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CK:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CK:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CL:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->eh()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->k(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized eh()Ljava/util/List;
    .locals 7

    monitor-enter p0

    .line 97
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 99
    nop

    .line 100
    nop

    .line 102
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CK:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 105
    if-eqz v1, :cond_0

    array-length v4, v1

    if-ge v4, v3, :cond_1

    .line 106
    :cond_0
    new-array v1, v3, [B

    .line 108
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 109
    nop

    .line 110
    invoke-static {v1, v4, v3}, Lcom/google/protobuf/nano/a;->b([BII)Lcom/google/protobuf/nano/a;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->j(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    :cond_2
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_1

    .line 115
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_3

    .line 120
    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 117
    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 118
    :goto_1
    :try_start_3
    const-string v3, "Reflection.ClientActLog"

    const-string v4, "Failed in loading the log file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 115
    :catch_3
    move-exception v2

    .line 120
    :goto_3
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 121
    :goto_4
    nop

    .line 122
    monitor-exit p0

    return-object v0

    .line 96
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final k(Ljava/util/List;)V
    .locals 6

    .line 58
    nop

    .line 60
    nop

    .line 62
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->CK:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    .line 65
    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->getSerializedSize()I

    move-result v3

    .line 66
    if-eqz v0, :cond_0

    array-length v4, v0

    if-ge v4, v3, :cond_1

    .line 67
    :cond_0
    new-array v0, v3, [B

    .line 69
    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;[BII)V

    .line 70
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    :goto_1
    return-void

    .line 76
    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    .line 73
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    .line 76
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 73
    :catch_1
    move-exception p1

    .line 74
    :goto_2
    :try_start_2
    const-string v1, "Reflection.ClientActLog"

    const-string v2, "Failed to write the client action log file"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :goto_3
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method
