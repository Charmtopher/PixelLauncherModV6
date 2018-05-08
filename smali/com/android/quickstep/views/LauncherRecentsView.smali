.class public Lcom/android/quickstep/views/LauncherRecentsView;
.super Lcom/android/quickstep/views/RecentsView;
.source "SourceFile"


# static fields
.field public static final TRANSLATION_Y_FACTOR:Landroid/util/FloatProperty;


# instance fields
.field private mTranslationYFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/android/quickstep/views/LauncherRecentsView$1;

    const-string v1, "translationYFactor"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/LauncherRecentsView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/LauncherRecentsView;->TRANSLATION_Y_FACTOR:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/LauncherRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/LauncherRecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LauncherRecentsView;->setContentAlpha(F)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/LauncherRecentsView;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mTranslationYFactor:F

    return p0
.end method


# virtual methods
.method public createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 115
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 117
    nop

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 119
    iget-object v1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    .line 121
    iget-object v1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    check-cast v1, Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget v1, v1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 122
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    div-float/2addr v1, v0

    add-float/2addr v2, v1

    goto :goto_0

    .line 124
    :cond_0
    const v2, 0x3fa72a8b

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 125
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    sget-object v1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 124
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LauncherRecentsView;->maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V

    .line 95
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->draw(Landroid/graphics/Canvas;)V

    .line 96
    return-void
.end method

.method protected getTaskSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/android/quickstep/views/LauncherRecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/quickstep/util/LayoutUtils;->calculateLauncherTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 132
    return-void
.end method

.method protected onAllTasksRemoved()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 79
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 83
    invoke-super/range {p0 .. p5}, Lcom/android/quickstep/views/RecentsView;->onLayout(ZIIII)V

    .line 84
    iget p1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mTranslationYFactor:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LauncherRecentsView;->setTranslationYFactor(F)V

    .line 85
    return-void
.end method

.method protected onTaskStackUpdated()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/android/quickstep/views/LauncherRecentsView;->updateEmptyMessage()V

    .line 108
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onViewAdded(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/quickstep/views/LauncherRecentsView;->updateEmptyMessage()V

    .line 102
    return-void
.end method

.method public setTranslationYFactor(F)V
    .locals 2

    .line 88
    iput p1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mTranslationYFactor:F

    .line 89
    iget p1, p0, Lcom/android/quickstep/views/LauncherRecentsView;->mTranslationYFactor:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/LauncherRecentsView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/LauncherRecentsView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LauncherRecentsView;->setTranslationY(F)V

    .line 90
    return-void
.end method
