.class public Lcom/google/android/apps/nexuslauncher/qsb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherRootView$WindowStateListener;
.implements Lcom/android/launcher3/LauncherStateManager$StateListener;


# instance fields
.field AG:Landroid/animation/AnimatorSet;

.field public AH:Z

.field private AI:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 37
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherStateManager;->addStateListener(Lcom/android/launcher3/LauncherStateManager$StateListener;)V

    .line 38
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/LauncherRootView;

    iput-object p0, p1, Lcom/android/launcher3/LauncherRootView;->mWindowStateListener:Lcom/android/launcher3/LauncherRootView$WindowStateListener;

    .line 39
    return-void
.end method

.method private a(Lcom/android/launcher3/LauncherState;)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AH:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/i;->a(ZZ)V

    .line 154
    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 102
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    return-void

    .line 106
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/qsb/j;

    invoke-direct {v4, p0}, Lcom/google/android/apps/nexuslauncher/qsb/j;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/i;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    const-wide/16 v4, 0xc8

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    aput v3, v7, v1

    invoke-static {v0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 119
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v6, [F

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 120
    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/Hotseat;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v2, v1

    .line 119
    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 121
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 123
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    aput v2, v8, v1

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v6, [F

    aput v3, v2, v1

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 129
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 131
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 132
    if-nez p2, :cond_3

    .line 133
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 135
    :cond_3
    return-void
.end method

.method private dK()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AI:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AH:Z

    invoke-direct {p0, v0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/i;->a(ZZ)V

    .line 59
    return-void
.end method


# virtual methods
.method public final dJ()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AI:Z

    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/i;->dK()V

    .line 51
    return-void
.end method

.method public final onStateSetImmediately(Lcom/android/launcher3/LauncherState;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/i;->a(Lcom/android/launcher3/LauncherState;)V

    .line 148
    return-void
.end method

.method public final onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/i;->a(Lcom/android/launcher3/LauncherState;)V

    .line 143
    return-void
.end method

.method public final onStateTransitionStart$503aab85()V
    .locals 0

    .line 138
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 77
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AI:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/i;->dK()V

    return-void

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/i;->u(Z)V

    .line 82
    :cond_1
    return-void
.end method

.method public final onWindowVisibilityChanged$13462e()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/i;->u(Z)V

    .line 91
    return-void
.end method

.method public final u(Z)V
    .locals 2

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AI:Z

    .line 69
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AH:Z

    if-eqz v1, :cond_0

    .line 70
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AH:Z

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/i;->a(ZZ)V

    .line 73
    :cond_0
    return-void
.end method
