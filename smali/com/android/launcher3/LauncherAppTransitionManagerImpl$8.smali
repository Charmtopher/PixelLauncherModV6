.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;
.super Lcom/android/launcher3/LauncherAnimationRunner;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 577
    nop

    .line 578
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$1000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/quickstep/util/RemoteAnimationProvider;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p1}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    .line 583
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 584
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 585
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v1, p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$1100(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 595
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$100(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    .line 596
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isForceInvisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 598
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    new-array v1, v2, [Landroid/animation/Animator;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 599
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$1200(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/animation/AnimatorSet;)V

    .line 603
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->clearForceInvisibleFlag(I)V

    .line 604
    return-object v0
.end method
