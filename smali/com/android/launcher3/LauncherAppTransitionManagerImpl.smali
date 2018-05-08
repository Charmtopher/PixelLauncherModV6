.class public Lcom/android/launcher3/LauncherAppTransitionManagerImpl;
.super Lcom/android/launcher3/LauncherAppTransitionManager;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field private final mContentTransY:F

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mFloatingView:Landroid/view/View;

.field private final mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsRtl:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mReapplyStateListener:Landroid/animation/AnimatorListenerAdapter;

.field mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

.field private final mWorkspaceTransY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 138
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppTransitionManager;-><init>()V

    .line 119
    new-instance v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$1;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mReapplyStateListener:Landroid/animation/AnimatorListenerAdapter;

    .line 126
    new-instance v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$2;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    .line 139
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 140
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 141
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    .line 142
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mIsRtl:Z

    .line 143
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 145
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 146
    const v0, 0x7f0b00a7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mContentTransY:F

    .line 147
    const v0, 0x7f0b00a8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mWorkspaceTransY:F

    .line 149
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 150
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;

    invoke-direct {p1}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;-><init>()V

    const/16 v0, 0xd

    const/4 v1, 0x1

    new-instance v8, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    new-instance v3, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$8;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/os/Handler;)V

    const-wide/16 v4, 0x15e

    const-wide/16 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJ)V

    invoke-virtual {p1, v0, v1, v8}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(IILcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)V

    new-instance v0, Lcom/android/systemui/shared/system/ActivityCompat;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/ActivityCompat;->registerRemoteAnimations(Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;)V

    .line 151
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/quickstep/util/RemoteAnimationProvider;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
    .locals 5

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v1, v1

    :cond_0
    const v2, 0x3f947ae1    # 1.16f

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$9;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1200(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/animation/AnimatorSet;)V
    .locals 10

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const-wide/16 v1, 0x64

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mWorkspaceTransY:F

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Workspace;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    iget v8, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mWorkspaceTransY:F

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x0

    aput v8, v7, v3

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    const v5, 0x3fa72a8b

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    sget-object v5, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    new-array v7, v6, [F

    fill-array-data v7, :array_1

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v1, 0x13d

    invoke-virtual {v5, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    invoke-static {v4, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x99

    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v0, v6, [Landroid/animation/Animator;

    aput-object v5, v0, v9

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mReapplyStateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->getLauncherContentAnimator(Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$10;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$10;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa72a8b
        0x3f7eedad
    .end array-data

    :array_2
    .array-data 4
        0x3f7eedad
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/animation/AnimatorSet;)Z
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5, p1, p2}, Lcom/android/quickstep/TaskUtils;->findTaskViewToLaunch(Lcom/android/launcher3/BaseDraggingActivity;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v5, 0x0

    const-wide/16 v6, 0x150

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mReapplyStateListener:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    iget-object v5, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mOriginalTarget:Landroid/animation/AnimatorSet;

    iget-object v0, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$4;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)V

    :goto_0
    invoke-static {p1, v4, p2}, Lcom/android/quickstep/TaskUtils;->getRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    new-array p1, v2, [Landroid/animation/Animator;

    aput-object v5, p1, v1

    invoke-virtual {p0, p3, p1}, Lcom/android/launcher3/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-virtual {p3, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return v2
.end method

.method static synthetic access$300(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 17

    move-object/from16 v0, p0

    .line 85
    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/launcher3/BubbleTextView;

    new-instance v3, Landroid/view/View;

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ItemInfoWithIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iget-object v6, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v5, v5, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    invoke-virtual {v6, v5, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    :goto_0
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v2, v2, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v4, v2, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v4, :cond_4

    check-cast v2, Lcom/android/launcher3/FastBitmapDrawable;

    iget-object v4, v2, Lcom/android/launcher3/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v7, v2, Lcom/android/launcher3/FastBitmapDrawable;->mScale:F

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v8, v8, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    :goto_1
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget v2, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mIsRtl:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    new-instance v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v4, v9, v10}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {v4, v2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    iput v6, v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLeft(I)V

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setTop(I)V

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v5, v10

    invoke-virtual {v2, v5}, Landroid/view/View;->setRight(I)V

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual {v2, v6}, Landroid/view/View;->setBottom(I)V

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v10, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v10, v10, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    div-int/2addr v10, v6

    int-to-float v10, v10

    iget-boolean v11, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mIsRtl:Z

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v11, v11, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v4}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->getMarginStart()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    :goto_3
    int-to-float v11, v11

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->getMarginStart()I

    move-result v11

    goto :goto_3

    :goto_4
    sub-float/2addr v5, v11

    iget v11, v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    div-int/2addr v11, v6

    int-to-float v11, v11

    sub-float/2addr v5, v11

    iget v11, v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    int-to-float v11, v11

    sub-float v11, v10, v11

    iget v12, v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    div-int/2addr v12, v6

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget-object v12, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    sget-object v13, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v6, [F

    const/4 v15, 0x0

    aput v15, v14, v8

    aput v5, v14, v9

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v12, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v6, [F

    aput v15, v14, v8

    aput v11, v14, v9

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget v4, v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    int-to-float v4, v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_7

    move v4, v9

    goto :goto_5

    :cond_7
    move v4, v8

    :goto_5
    const-wide/16 v14, 0x1f4

    if-eqz v4, :cond_8

    move-wide v12, v14

    goto :goto_6

    :cond_8
    const-wide/16 v12, 0xe9

    :goto_6
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_9

    const-wide/16 v12, 0xe9

    goto :goto_7

    :cond_9
    move-wide v12, v14

    :goto_7
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    new-array v10, v6, [F

    aput v7, v10, v8

    aput v3, v10, v9

    invoke-static {v4, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$400(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Z)Landroid/util/Pair;
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->getLauncherContentAnimator(Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;
    .locals 8

    .line 85
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    goto :goto_0

    :goto_1
    const/4 p1, 0x2

    new-array v4, p1, [I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;

    move-object v0, v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$7;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/graphics/Rect;Landroid/graphics/Matrix;[ILandroid/graphics/Rect;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$600(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/view/View;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/DeviceProfile;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method private getLauncherContentAnimator(Z)Landroid/util/Pair;
    .locals 13

    .line 279
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 282
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 283
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    goto :goto_0

    .line 284
    :cond_0
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    .line 285
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 286
    new-array p1, v1, [F

    iget v6, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mContentTransY:F

    aput v6, p1, v5

    aput v3, p1, v4

    goto :goto_1

    .line 287
    :cond_1
    new-array p1, v1, [F

    aput v3, p1, v5

    iget v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mContentTransY:F

    aput v3, p1, v4

    .line 289
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x15e

    const-wide/16 v8, 0xd9

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-nez v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 292
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .line 294
    aget v12, v2, v5

    invoke-virtual {v3, v12}, Landroid/view/View;->setAlpha(F)V

    .line 295
    aget v5, p1, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 297
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 298
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    invoke-virtual {v3, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 301
    new-instance v1, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$5;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$5;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v3, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 308
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 311
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 312
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 314
    new-instance p1, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;

    invoke-direct {p1, v3, v10, v11}, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$KVZmo8UsSSOsE6Xh8v06J74ZvKE;-><init>(Landroid/view/View;FF)V

    .line 319
    goto :goto_2

    .line 320
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    aget v10, v2, v5

    invoke-virtual {v3, v10}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 321
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    aget v5, p1, v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->setTranslationY(F)V

    .line 323
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 324
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 325
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v3, v5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 328
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 332
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 333
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, v1, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 334
    new-instance p1, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$clqgnqL4A6fKTWpaIMkE5tPTYvw;

    invoke-direct {p1, p0}, Lcom/android/launcher3/-$$Lambda$LauncherAppTransitionManagerImpl$clqgnqL4A6fKTWpaIMkE5tPTYvw;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)V

    .line 340
    :goto_2
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hasControlRemoteAppTransitionPermission()Z
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getLauncherContentAnimator$0(Landroid/view/View;FF)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 316
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 317
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 318
    return-void
.end method

.method public static synthetic lambda$getLauncherContentAnimator$1(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setTranslationY(F)V

    .line 338
    return-void
.end method

.method private launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTaskId()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/quickstep/TaskUtils;->taskIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 7

    .line 164
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v2, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/os/Handler;Landroid/view/View;)V

    .line 202
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/quickstep/TaskUtils;->findTaskViewToLaunch(Lcom/android/launcher3/BaseDraggingActivity;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    const/16 p1, 0x150

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    .line 204
    :goto_0
    add-int/lit8 p2, p1, -0x78

    .line 205
    new-instance v0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    int-to-long v3, p1

    int-to-long v5, p2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJ)V

    invoke-static {v0}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1

    .line 208
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->getDefaultActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 156
    return-void
.end method
