.class public abstract Lcom/android/systemui/shared/system/TaskStackChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkCurrentUserId(IZ)Z
    .locals 3

    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 58
    if-eq v0, p1, :cond_1

    .line 59
    if-eqz p2, :cond_0

    .line 60
    const-string p2, "TaskStackChangeListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID mismatch. Process is uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and the current user is uid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 65
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityDismissingDockedStack()V
    .locals 0

    .line 43
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    .line 42
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    .line 44
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 37
    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 0

    .line 48
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    .line 38
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 0

    .line 39
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    .line 41
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 0

    .line 40
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    .line 47
    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 0

    .line 45
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0

    .line 46
    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    .line 36
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    .line 35
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 0

    .line 32
    return-void
.end method
