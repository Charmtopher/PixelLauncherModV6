.class public Lcom/android/launcher3/util/ConfigMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final mContext:Landroid/content/Context;

.field private final mDensity:I

.field private final mFontScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/util/ConfigMonitor;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 40
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/launcher3/util/ConfigMonitor;->mFontScale:F

    .line 41
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/launcher3/util/ConfigMonitor;->mDensity:I

    .line 42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 47
    iget p2, p0, Lcom/android/launcher3/util/ConfigMonitor;->mFontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/launcher3/util/ConfigMonitor;->mDensity:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq p2, p1, :cond_1

    .line 48
    :cond_0
    const-string p1, "ConfigMonitor"

    const-string p2, "Configuration changed, restarting launcher"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/android/launcher3/util/ConfigMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 52
    :cond_1
    return-void
.end method
