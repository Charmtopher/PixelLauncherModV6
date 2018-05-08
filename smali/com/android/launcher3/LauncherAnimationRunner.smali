.class public abstract Lcom/android/launcher3/LauncherAnimationRunner;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;


# static fields
.field private static final REFRESH_RATE_MS:I = 0x10


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private final mHandler:Landroid/os/Handler;

.field private mSysFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private finishSystemAnimation()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mSysFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mSysFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mSysFinishRunnable:Ljava/lang/Runnable;

    .line 101
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onAnimationCancelled$1(Lcom/android/launcher3/LauncherAnimationRunner;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    .line 92
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onAnimationStart$0(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishSystemAnimation()V

    .line 53
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mSysFinishRunnable:Ljava/lang/Runnable;

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherAnimationRunner;->getAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    .line 55
    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishSystemAnimation()V

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 63
    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    .line 65
    return-void
.end method


# virtual methods
.method public abstract getAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end method

.method public onAnimationCancelled()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$TqL14dHB8-DA72YSvoxUe8KCiy0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$TqL14dHB8-DA72YSvoxUe8KCiy0;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    .line 75
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimator:Landroid/animation/AnimatorSet;

    .line 76
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishSystemAnimation()V

    .line 78
    :cond_0
    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method
