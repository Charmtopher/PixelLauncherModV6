.class public Lcom/android/launcher3/util/UiThreadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static getBackgroundLooper()Landroid/os/Looper;
    .locals 3

    .line 38
    sget-object v0, Lcom/android/launcher3/util/UiThreadHelper;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UiThreadHelper"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v0, Lcom/android/launcher3/util/UiThreadHelper;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/UiThreadHelper;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 3

    .line 55
    sget-object v0, Lcom/android/launcher3/util/UiThreadHelper;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/launcher3/util/UiThreadHelper;->sHandler:Landroid/os/Handler;

    :cond_0
    sget-object p0, Lcom/android/launcher3/util/UiThreadHelper;->sHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    return-void
.end method
