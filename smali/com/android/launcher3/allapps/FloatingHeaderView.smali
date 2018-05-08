.class public Lcom/android/launcher3/allapps/FloatingHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public mAllowTouchForwarding:Z

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private final mClip:Landroid/graphics/Rect;

.field private mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mForwardToRecyclerView:Z

.field public mHeaderCollapsed:Z

.field private mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field public mMaxTranslation:I

.field private final mOnScrollListener:Landroid/support/v7/widget/an;

.field private mParent:Landroid/view/ViewGroup;

.field private mSnappedScrolledY:I

.field public mTabLayout:Landroid/view/ViewGroup;

.field public mTabsHidden:Z

.field private final mTempOffset:Landroid/graphics/Point;

.field private mTranslationY:I

.field private mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    const p2, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mClip:Landroid/graphics/Rect;

    .line 40
    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 41
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    .line 42
    new-instance p1, Lcom/android/launcher3/allapps/FloatingHeaderView$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/FloatingHeaderView$1;-><init>(Lcom/android/launcher3/allapps/FloatingHeaderView;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroid/support/v7/widget/an;

    .line 84
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/FloatingHeaderView;I)V
    .locals 4

    .line 36
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    if-gt p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    sub-int v0, p1, v0

    iget v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    if-ltz v0, :cond_4

    iput v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    return-void

    :cond_4
    iget p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int v0, v0

    if-gt p1, v0, :cond_5

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    iget p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int p1, p1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    :cond_5
    return-void
.end method

.method private calcOffset(Landroid/graphics/Point;)V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 226
    return-void
.end method

.method private setupRV(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    .line 103
    if-eq p1, p2, :cond_0

    if-eqz p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroid/support/v7/widget/an;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/an;)V

    .line 106
    :cond_0
    return-object p2
.end method


# virtual methods
.method protected final apply()V
    .locals 3

    .line 154
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 155
    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 156
    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->applyScroll(II)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mClip:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 164
    :cond_0
    return-void
.end method

.method public applyScroll(II)V
    .locals 0

    .line 151
    return-void
.end method

.method public getMaxTranslation()I
    .locals 2

    .line 114
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 116
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v0, :cond_1

    .line 117
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 119
    :cond_1
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    return v0
.end method

.method public hasVisibleContent()Z
    .locals 1

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 190
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->apply()V

    .line 192
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 89
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    .line 90
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 196
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllowTouchForwarding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    .line 198
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->calcOffset(Landroid/graphics/Point;)V

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 204
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->calcOffset(Landroid/graphics/Point;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 214
    return v0

    .line 216
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final reset(Z)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 170
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 172
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 176
    :cond_1
    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->apply()V

    .line 179
    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    .line 180
    iget p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int p1, p1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    .line 181
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 182
    return-void
.end method

.method public setContentVisibility(ZZLcom/android/launcher3/anim/PropertySetter;)V
    .locals 1

    .line 229
    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, p1, v0}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 230
    iput-boolean p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllowTouchForwarding:Z

    .line 231
    return-void
.end method

.method public final setMainActive(Z)V
    .locals 0

    .line 110
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 111
    return-void
.end method

.method public setup([Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;Z)V
    .locals 2

    .line 93
    iput-boolean p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    iget-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setupRV(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 96
    iget-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setupRV(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 97
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mParent:Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setMainActive(Z)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    .line 100
    return-void
.end method
