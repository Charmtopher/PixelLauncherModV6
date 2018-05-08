.class public Lcom/android/launcher3/LauncherStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

.field private mCurrentStableState:Lcom/android/launcher3/LauncherState;

.field public mLastStableState:Lcom/android/launcher3/LauncherState;

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field public final mListeners:Ljava/util/ArrayList;

.field public mRestState:Lcom/android/launcher3/LauncherState;

.field public mState:Lcom/android/launcher3/LauncherState;

.field private mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    .line 89
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 91
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 92
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mCurrentStableState:Lcom/android/launcher3/LauncherState;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 99
    return-void
.end method

.method private goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    if-eqz p5, :cond_0

    .line 173
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 175
    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 178
    if-eqz p5, :cond_2

    .line 179
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {p1}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/LauncherStateManager$1;

    invoke-direct {p2, p0, p5}, Lcom/android/launcher3/LauncherStateManager$1;-><init>(Lcom/android/launcher3/LauncherStateManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    :cond_2
    return-void

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->reset()V

    .line 193
    if-nez p2, :cond_7

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherStateManager;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherStateManager;->getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_4

    aget-object v0, p2, p4

    .line 196
    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherStateManager$StateHandler;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 195
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 199
    :cond_4
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 200
    iget-object p3, p0, Lcom/android/launcher3/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/LauncherStateManager$StateListener;

    invoke-interface {p3, p1}, Lcom/android/launcher3/LauncherStateManager$StateListener;->onStateSetImmediately(Lcom/android/launcher3/LauncherState;)V

    .line 199
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 202
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherStateManager;->onStateTransitionEnd(Lcom/android/launcher3/LauncherState;)V

    .line 205
    if-eqz p5, :cond_6

    .line 206
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 208
    :cond_6
    return-void

    .line 213
    :cond_7
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->transitionDuration:I

    :goto_2
    int-to-long v0, v0

    goto :goto_3

    :cond_8
    iget v0, p1, Lcom/android/launcher3/LauncherState;->transitionDuration:I

    goto :goto_2

    :goto_3
    iput-wide v0, p2, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    .line 215
    new-instance p2, Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-direct {p2}, Lcom/android/launcher3/anim/AnimatorSetBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 217
    new-instance p5, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getFinalFocus(Lcom/android/launcher3/Launcher;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p5, p0, p2, p1}, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateManager;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 218
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_9

    .line 219
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, p5, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 221
    :cond_9
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method


# virtual methods
.method public final addStateListener(Lcom/android/launcher3/LauncherStateManager$StateListener;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public final createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 1

    .line 234
    new-instance v0, Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatorSetBuilder;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method public final createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->reset()V

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    iput-wide p3, v0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    .line 242
    nop

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 242
    invoke-static {p1, p3, p4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method protected final createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherStateManager;->getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 250
    iget-object v4, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-interface {v3, p1, p2, v4}, Lcom/android/launcher3/LauncherStateManager$StateHandler;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 255
    new-instance v0, Lcom/android/launcher3/LauncherStateManager$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/LauncherStateManager$2;-><init>(Lcom/android/launcher3/LauncherStateManager;Lcom/android/launcher3/LauncherState;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;)V

    .line 284
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {p1}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public final getRestState()Lcom/android/launcher3/LauncherState;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mRestState:Lcom/android/launcher3/LauncherState;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mRestState:Lcom/android/launcher3/LauncherState;

    return-object v0
.end method

.method public final getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/launcher3/LauncherStateManager$StateHandler;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    invoke-direct {v3, v0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;-><init>(Lcom/android/launcher3/Launcher;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    return-object v0
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isForceInvisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 125
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;J)V
    .locals 6

    .line 156
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;JLjava/lang/Runnable;)V
    .locals 6

    .line 149
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;Z)V
    .locals 6

    .line 131
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;ZLjava/lang/Runnable;)V
    .locals 6

    .line 142
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method final onStateTransitionEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mCurrentStableState:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mCurrentStableState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 304
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mCurrentStableState:Lcom/android/launcher3/LauncherState;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->onStateTransitionEnd(Lcom/android/launcher3/Launcher;)V

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->disablePageClipping:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    .line 311
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 312
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mRestState:Lcom/android/launcher3/LauncherState;

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/android/launcher3/Launcher;)V

    .line 316
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/UiFactory;->onLauncherStateOrResumeChanged(Lcom/android/launcher3/Launcher;)V

    .line 317
    return-void
.end method

.method final onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->onStateDisabled(Lcom/android/launcher3/Launcher;)V

    .line 289
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->onStateEnabled(Lcom/android/launcher3/Launcher;)V

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eq v1, v4, :cond_3

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    .line 293
    :cond_3
    :goto_2
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->disablePageClipping:Z

    if-eqz p1, :cond_4

    .line 295
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 297
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/UiFactory;->onLauncherStateOrResumeChanged(Lcom/android/launcher3/Launcher;)V

    .line 298
    return-void
.end method

.method public final reapplyState()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherStateManager;->getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 162
    iget-object v4, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    invoke-interface {v3, v4}, Lcom/android/launcher3/LauncherStateManager$StateHandler;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public final varargs setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V
    .locals 5

    .line 361
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 362
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {v4}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 363
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$002(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 365
    goto :goto_1

    .line 361
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 369
    const/4 v1, 0x1

    goto :goto_2

    .line 368
    :cond_2
    nop

    .line 369
    :goto_2
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->reset()V

    .line 370
    if-eqz v1, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherStateManager;->reapplyState()V

    .line 373
    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;)V

    .line 374
    return-void
.end method
