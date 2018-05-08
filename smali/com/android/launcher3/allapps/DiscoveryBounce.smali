.class public Lcom/android/launcher3/allapps/DiscoveryBounce;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# instance fields
.field private final mDiscoBounceAnimation:Landroid/animation/Animator;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 47
    iget-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    const v0, 0x7f060001

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    .line 49
    iget-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    iget-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/allapps/DiscoveryBounce$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/DiscoveryBounce$1;-><init>(Lcom/android/launcher3/allapps/DiscoveryBounce;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    return-void
.end method

.method public static showIfNeeded(Lcom/android/launcher3/Launcher;)V
    .locals 3

    .line 100
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.apps_view_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isDemoUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/DiscoveryBounce;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/DiscoveryBounce;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mIsOpen:Z

    .line 110
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 111
    return-void

    .line 105
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 0

    .line 83
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mIsOpen:Z

    if-eqz p1, :cond_0

    .line 84
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mIsOpen:Z

    .line 85
    iget-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    .line 96
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logActionCommand(I)V
    .locals 0

    .line 92
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 65
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/DiscoveryBounce;->handleClose(Z)V

    .line 78
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 73
    :cond_0
    return-void
.end method
