.class public Lcom/android/launcher3/allapps/AllAppsPagedView;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 4

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getDownMotionX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getDownMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 59
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 61
    :cond_0
    div-float v2, v1, v0

    .line 62
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 64
    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsPagedView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsPagedView;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->cancelCurrentPageLongPress()V

    .line 68
    :cond_2
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 69
    return-void

    .line 70
    :cond_3
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_4

    .line 71
    sub-float/2addr v2, v0

    .line 72
    div-float/2addr v2, v0

    float-to-double v0, v2

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-super {p0, p1, v1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 75
    return-void

    .line 76
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 78
    return-void
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 51
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsPagedView;->mPageIndicator:Landroid/view/View;

    check-cast p2, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;

    iget p3, p0, Lcom/android/launcher3/allapps/AllAppsPagedView;->mMaxScrollX:I

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateIndicatorPosition(F)V

    .line 52
    return-void
.end method
