.class public Lcom/android/systemui/shared/system/LatencyTrackerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static logToggleRecents(I)V
    .locals 1

    .line 32
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    .line 33
    return-void
.end method
