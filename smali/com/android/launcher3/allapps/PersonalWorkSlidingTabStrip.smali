.class public Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# instance fields
.field mContainerView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private final mDividerPaint:Landroid/graphics/Paint;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIsRtl:Z

.field mLastActivePage:I

.field private mScrollOffset:F

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    .line 49
    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    .line 51
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedPosition:I

    .line 54
    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->setOrientation(I)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->setWillNotDraw(Z)V

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b003f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 65
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 66
    iget-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 67
    const v0, 0x1010435

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 66
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 70
    iget-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0044

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIsRtl:Z

    .line 76
    return-void
.end method

.method static synthetic lambda$highlightWorkTab$0(Landroid/view/View;)V
    .locals 1

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 146
    return-void
.end method

.method private updateTabTextColor(I)V
    .locals 4

    .line 84
    iput p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedPosition:I

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 87
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method final highlightWorkTab()V
    .locals 2

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/android/launcher3/allapps/-$$Lambda$PersonalWorkSlidingTabStrip$J-TkCQjnY8hDIMkKUDDYAg9supI;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/-$$Lambda$PersonalWorkSlidingTabStrip$J-TkCQjnY8hDIMkKUDDYAg9supI;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v6, v0, v1

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v7, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    int-to-float v4, v0

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 126
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 93
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 94
    iget p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    .line 95
    iget p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mScrollOffset:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateIndicatorPosition(F)V

    .line 96
    return-void
.end method

.method public final setActiveMarker(I)V
    .locals 1

    .line 157
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mContainerView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    if-eq v0, p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mContainerView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->onTabChanged(I)V

    .line 161
    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    .line 162
    return-void
.end method

.method public final setMarkersCount(I)V
    .locals 0

    .line 169
    return-void
.end method

.method public final setPageDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 175
    return-void
.end method

.method final updateIndicatorPosition(F)V
    .locals 3

    .line 79
    iput p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mScrollOffset:F

    .line 80
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIsRtl:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mScrollOffset:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_2

    :cond_1
    move p1, v0

    :goto_2
    iget v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    if-eq p1, v1, :cond_3

    :cond_2
    iput v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    iput p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->invalidate()V

    .line 81
    :cond_3
    return-void
.end method
