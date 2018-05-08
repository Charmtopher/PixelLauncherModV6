.class public Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationController:Landroid/view/IRecentsAnimationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/IRecentsAnimationController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    .line 36
    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->finish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 75
    :catch_0
    move-exception p1

    .line 76
    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to finish recents animation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to screenshot task"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    return-object p1
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->setAnimationTargetsBehindSystemBars(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 59
    :catch_0
    move-exception p1

    .line 60
    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set whether animation targets are behind system bars"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 2

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->setInputConsumerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set input consumer enabled state"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->setSplitScreenMinimized(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 67
    :catch_0
    move-exception p1

    .line 68
    sget-object v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set minimize dock"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    return-void
.end method
