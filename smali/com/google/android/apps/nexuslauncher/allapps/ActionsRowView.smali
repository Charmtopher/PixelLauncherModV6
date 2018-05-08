.class public Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/j;


# instance fields
.field private dx:Z

.field private mIsDarkTheme:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private xW:Lcom/google/android/apps/nexuslauncher/allapps/d;

.field xX:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

.field private xY:Z

.field private xZ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setOrientation(I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 49
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mIsDarkTheme:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xZ:I

    .line 51
    return-void
.end method


# virtual methods
.method public final cO()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xY:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final cP()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cO()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->dx:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 7

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_4

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 121
    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->removeViewAt(I)V

    goto :goto_0

    .line 123
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040002

    .line 125
    invoke-virtual {v1, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    .line 126
    iget-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mIsDarkTheme:Z

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 128
    invoke-virtual {v4}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 129
    const v5, 0x33ffffff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 131
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 134
    invoke-virtual {v1, v4}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->addView(Landroid/view/View;)V

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_4

    .line 138
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_3

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xZ:I

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 144
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    .line 145
    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->reset()V

    .line 146
    if-le v0, v1, :cond_5

    .line 147
    invoke-virtual {v4, v3}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setVisibility(I)V

    .line 148
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/nexuslauncher/allapps/a;

    .line 149
    iget-object v6, v5, Lcom/google/android/apps/nexuslauncher/allapps/a;->xw:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v4, v6, v3}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 150
    invoke-virtual {v4, v5, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->a(Lcom/google/android/apps/nexuslauncher/allapps/a;I)V

    .line 151
    goto :goto_5

    .line 152
    :cond_5
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setVisibility(I)V

    .line 153
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->a(Lcom/google/android/apps/nexuslauncher/allapps/a;I)V

    .line 143
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 157
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cP()V

    .line 158
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xX:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->cT()V

    .line 159
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->b(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xW:Lcom/google/android/apps/nexuslauncher/allapps/d;

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xW:Lcom/google/android/apps/nexuslauncher/allapps/d;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xM:Lcom/google/android/apps/nexuslauncher/allapps/j;

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xW:Lcom/google/android/apps/nexuslauncher/allapps/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->gL:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->d(Ljava/util/ArrayList;)V

    .line 101
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xW:Lcom/google/android/apps/nexuslauncher/allapps/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xM:Lcom/google/android/apps/nexuslauncher/allapps/j;

    .line 109
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingRight()I

    move-result v1

    :goto_0
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    goto :goto_0

    .line 74
    :goto_1
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    div-int v1, p1, v1

    .line 75
    const v2, 0x3f6b851f    # 0.92f

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 76
    sub-int/2addr v1, v0

    .line 77
    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 78
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 79
    return-void
.end method

.method public final q(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->xY:Z

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cP()V

    .line 169
    return-void
.end method

.method public final setHidden(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->dx:Z

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cP()V

    .line 164
    return-void
.end method
