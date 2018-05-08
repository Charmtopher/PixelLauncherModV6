.class public Lcom/android/launcher3/uioverrides/RecentsViewStateController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherStateManager$StateHandler;


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 45
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    .line 46
    return-void
.end method

.method public static synthetic lambda$setStateWithAnimation$0(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->loadVisibleTaskData()V

    .line 81
    return-void
.end method


# virtual methods
.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->setContentAlpha(F)V

    .line 51
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndTranslationYFactor$29c5cce7()[F

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/LauncherRecentsView;->setAdjacentScale(F)V

    .line 53
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->setTranslationYFactor(F)V

    .line 54
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->updateEmptyMessage()V

    .line 56
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->resetTaskVisuals()V

    .line 58
    :cond_1
    return-void
.end method

.method public final setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V
    .locals 7

    .line 63
    invoke-virtual {p3, p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->getProperSetter(Lcom/android/launcher3/anim/AnimatorSetBuilder;)Lcom/android/launcher3/anim/PropertySetter;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndTranslationYFactor$29c5cce7()[F

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v3, Lcom/android/quickstep/views/RecentsView;->ADJACENT_SCALE:Landroid/util/FloatProperty;

    const/4 v4, 0x0

    aget v4, v1, v4

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 66
    const/4 v6, 0x1

    invoke-virtual {p2, v6, v5}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 65
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 67
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v3, Lcom/android/quickstep/views/LauncherRecentsView;->TRANSLATION_Y_FACTOR:Landroid/util/FloatProperty;

    aget v1, v1, v6

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 68
    invoke-virtual {p2, v6, v4}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 67
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    iget-boolean v3, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 72
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/uioverrides/-$$Lambda$ldsbyJ0ZXSD31Pnc6Zv2bR9tO9U;

    invoke-direct {v1, v0}, Lcom/android/launcher3/uioverrides/-$$Lambda$ldsbyJ0ZXSD31Pnc6Zv2bR9tO9U;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;)V

    iget-object v0, p2, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mOnFinishRunnables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_2

    .line 77
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 78
    new-instance v0, Lcom/android/launcher3/uioverrides/-$$Lambda$RecentsViewStateController$uCLvY-j3l2lHPvrHnybJyPxD4-g;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/-$$Lambda$RecentsViewStateController$uCLvY-j3l2lHPvrHnybJyPxD4-g;-><init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    iget-wide v0, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 84
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->updateEmptyMessage()V

    .line 86
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
