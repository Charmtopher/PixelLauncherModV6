.class public Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/LauncherStateManager$StateHandler;


# static fields
.field public static final ALL_APPS_PROGRESS:Landroid/util/Property;


# instance fields
.field public mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private final mIsDarkTheme:Z

.field private mIsVerticalLayout:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mProgress:F

.field private mScrollRangeDelta:F

.field public mShiftRange:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "allAppsProgress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollRangeDelta:F

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 76
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 77
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 79
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v0, 0x7f01002b

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsDarkTheme:Z

    .line 80
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 81
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AllAppsTransitionController;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    return-void
.end method

.method private onProgressAnimationEnd()V
    .locals 4

    .line 223
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset(Z)V

    return-void

    .line 226
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0e0032

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;

    iget-object v2, v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "showed_peek_work_tab"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->highlightWorkTab()V

    iget-object v0, v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showed_peek_work_tab"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 232
    return-void
.end method

.method private setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result p1

    .line 182
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 183
    move v0, v2

    goto :goto_0

    .line 182
    :cond_0
    nop

    .line 183
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_1

    .line 184
    move v3, v2

    goto :goto_1

    .line 183
    :cond_1
    nop

    .line 184
    move v3, v1

    :goto_1
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2

    .line 186
    move v1, v2

    goto :goto_2

    .line 184
    :cond_2
    nop

    .line 186
    :goto_2
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1, v0, v5}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 187
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1, v0, v5}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 188
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :goto_5
    if-eqz v1, :cond_6

    move v2, v4

    nop

    :cond_6
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1, v2, v0}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 189
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p1, v3, v1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setContentVisibility(ZZLcom/android/launcher3/anim/PropertySetter;)V

    .line 190
    return-void
.end method


# virtual methods
.method public final getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 193
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    return-object v0
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 96
    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollRangeDelta:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setScrollRangeDelta(F)V

    .line 98
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setAlpha(F)V

    .line 100
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    .line 101
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setTranslationY(F)V

    .line 102
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragHandleIndicator:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    :cond_0
    return-void
.end method

.method public final setProgress(F)V
    .locals 2

    .line 116
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 117
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr p1, v0

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setTranslationY(F)V

    .line 120
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float v0, v0

    add-float/2addr v0, p1

    .line 122
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    .line 124
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setTranslationY(F)V

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragHandleIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 130
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_1

    .line 131
    move p1, v1

    goto :goto_0

    .line 130
    :cond_1
    nop

    .line 131
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsDarkTheme:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    return-void

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 136
    return-void
.end method

.method public final setScrollRangeDelta(F)V
    .locals 1

    .line 214
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollRangeDelta:F

    .line 215
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollRangeDelta:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 216
    return-void
.end method

.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 149
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 150
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    .line 151
    return-void
.end method

.method public final setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    .line 161
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {p3, p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->getProperSetter(Lcom/android/launcher3/anim/AnimatorSetBuilder;)Lcom/android/launcher3/anim/PropertySetter;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 164
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    .line 165
    return-void

    .line 168
    :cond_0
    iget-boolean v1, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 169
    :goto_0
    sget-object v2, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v0, v3, v4

    .line 170
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 171
    iget-wide v2, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 172
    invoke-virtual {p2, v5, v1}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    invoke-virtual {p2, v0}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 177
    invoke-virtual {p3, p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->getProperSetter(Lcom/android/launcher3/anim/AnimatorSetBuilder;)Lcom/android/launcher3/anim/PropertySetter;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 178
    return-void
.end method
