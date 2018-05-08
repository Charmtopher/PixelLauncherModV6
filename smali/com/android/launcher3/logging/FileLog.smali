.class public final Lcom/android/launcher3/logging/FileLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field protected static final ENABLED:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sLogsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    sput-boolean v0, Lcom/android/launcher3/logging/FileLog;->ENABLED:Z

    .line 35
    nop

    .line 36
    const/4 v0, 0x3

    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    .line 41
    sput-object v0, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    return-void
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 30
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--- logfile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ---"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    move-exception p0

    :goto_2
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 74
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 67
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/logging/FileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    return-void
.end method

.method public static flushAll(Ljava/io/PrintWriter;)V
    .locals 3

    .line 107
    sget-boolean v0, Lcom/android/launcher3/logging/FileLog;->ENABLED:Z

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 111
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    .line 112
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 111
    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    const-wide/16 v1, 0x2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 115
    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 5

    .line 92
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "file-logger"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;-><init>(B)V

    invoke-direct {v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v2, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    .line 98
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    return-object v0

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .line 81
    sget-boolean v0, Lcom/android/launcher3/logging/FileLog;->ENABLED:Z

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 85
    if-eqz p2, :cond_1

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    :cond_1
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    return-void
.end method

.method public static setDir(Ljava/io/File;)V
    .locals 2

    .line 44
    sget-boolean v0, Lcom/android/launcher3/logging/FileLog;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/android/launcher3/logging/FileLog;->DATE_FORMAT:Ljava/text/DateFormat;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    sget-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 49
    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher3/logging/FileLog;->sHandler:Landroid/os/Handler;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 53
    :cond_1
    :goto_0
    sput-object p0, Lcom/android/launcher3/logging/FileLog;->sLogsDirectory:Ljava/io/File;

    .line 54
    return-void
.end method
