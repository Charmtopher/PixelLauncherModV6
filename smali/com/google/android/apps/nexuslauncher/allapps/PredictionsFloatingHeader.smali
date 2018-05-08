.class public Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;
.super Lcom/android/launcher3/allapps/FloatingHeaderView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# static fields
.field private static final CONTENT_ALPHA:Landroid/util/FloatProperty;


# instance fields
.field private mContentAlpha:F

.field private mIsVerticalLayout:Z

.field private final yi:I

.field public yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

.field private yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/l;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mContentAlpha:F

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 55
    const p2, 0x7f0b0040

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yi:I

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mContentAlpha:F

    return p0
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;F)V
    .locals 1

    .line 25
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mContentAlpha:F

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mTabLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setAlpha(F)V

    return-void
.end method

.method private cS()V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mTabsHidden:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cO()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yg:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setPadding(IIII)V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getExpectedHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cO()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getLineHeight()I

    move-result v1

    iget v4, v2, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getPaddingTop()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getPaddingBottom()I

    move-result v1

    add-int v2, v3, v1

    nop

    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    .line 81
    return-void
.end method


# virtual methods
.method protected final applyScroll(II)V
    .locals 1

    .line 124
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yi:I

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    .line 126
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setHidden(Z)V

    .line 127
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setHidden(Z)V

    return-void

    .line 129
    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setHidden(Z)V

    .line 130
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setHidden(Z)V

    .line 131
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setTranslationY(F)V

    .line 132
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setTranslationY(F)V

    .line 134
    return-void
.end method

.method public final cT()V
    .locals 2

    .line 114
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    .line 115
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->cS()V

    .line 117
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    if-eq v1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setupHeader()V

    .line 120
    :cond_0
    return-void
.end method

.method public final getMaxTranslation()I
    .locals 2

    .line 85
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mTabsHidden:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 87
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mTabsHidden:Z

    if-eqz v0, :cond_1

    .line 88
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 90
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    return v0
.end method

.method public final hasVisibleContent()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onFinishInflate()V

    .line 61
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    .line 62
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    .line 63
    return-void
.end method

.method public final setContentVisibility(ZZLcom/android/launcher3/anim/PropertySetter;)V
    .locals 5

    .line 139
    iput-boolean p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllowTouchForwarding:Z

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getAlpha()F

    move-result v0

    .line 142
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 144
    if-eqz p2, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    goto :goto_1

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yh:I

    .line 146
    :goto_1
    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setTextAlpha(I)V

    goto :goto_2

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->ya:Landroid/util/IntProperty;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, v3, v2, v4}, Lcom/android/launcher3/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    .line 152
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, v2, p1, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 153
    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    if-eqz p2, :cond_5

    move v1, v3

    nop

    :cond_5
    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1, v1, p2}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 154
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    .line 101
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v0, v1

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    .line 105
    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    .line 107
    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingBottom()I

    move-result v3

    .line 103
    invoke-virtual {v1, v0, v2, v0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setPadding(IIII)V

    .line 109
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mIsVerticalLayout:Z

    .line 110
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mIsVerticalLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mTabsHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->q(Z)V

    .line 111
    return-void
.end method

.method public final setup([Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;Z)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->xX:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cP()V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xX:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cP()V

    .line 69
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mTabsHidden:Z

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yk:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mIsVerticalLayout:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mTabsHidden:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->q(Z)V

    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->cS()V

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setup([Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;Z)V

    .line 75
    return-void
.end method
