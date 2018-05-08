.class public abstract Lcom/android/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field private static final OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION:I = 0x10e

.field public static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field public static final SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

.field public static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mChildCountOnLastLayout:I

.field public mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDownMotionX:F

.field private mDownMotionY:F

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field private mFreeScroll:Z

.field public final mInsets:Landroid/graphics/Rect;

.field protected mIsLayoutValid:Z

.field protected mIsPageInTransition:Z

.field public mIsRtl:Z

.field private mLastMotionX:F

.field private mLastMotionXRemainder:F

.field public mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field public mPageIndicator:Landroid/view/View;

.field mPageIndicatorViewId:I

.field private mPageScrolls:[I

.field public mPageSpacing:I

.field public mScroller:Lcom/android/launcher3/LauncherScroller;

.field private mSettleOnPageInFreeScroll:Z

.field private mTotalMotionX:F

.field public mTouchSlop:I

.field public mTouchState:I

.field protected mUnboundedScrollX:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-object v0, Lcom/android/launcher3/-$$Lambda$PagedView$8WXZR5QBUDgMQgE75xb-eR6qPZg;->INSTANCE:Lcom/android/launcher3/-$$Lambda$PagedView$8WXZR5QBUDgMQgE75xb-eR6qPZg;

    sput-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    .line 144
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mSettleOnPageInFreeScroll:Z

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 97
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 103
    iput v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 118
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 122
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 126
    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 128
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 165
    sget-object v1, Lcom/android/launcher3/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->init()V

    .line 173
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 267
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/PagedView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateMaxScrollX()V

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1282
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1285
    return-void
.end method

.method private dispatchPageCountChanged()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 674
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .line 1365
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1366
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1367
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private forceFinishScroller(Z)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 273
    if-eqz p1, :cond_0

    .line 274
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 277
    :cond_0
    return-void
.end method

.method private getPageNearestToCenterOfScreen(I)I
    .locals 6

    .line 1327
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 1328
    nop

    .line 1329
    nop

    .line 1330
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 1331
    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1332
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1333
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1334
    div-int/lit8 v4, v4, 0x2

    .line 1335
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 1336
    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1337
    if-ge v4, v1, :cond_0

    .line 1338
    nop

    .line 1339
    nop

    .line 1331
    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1342
    :cond_1
    return v2
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    .line 815
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x3

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 816
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$static$0(Landroid/view/View;)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1298
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1299
    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1303
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1304
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1305
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1306
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1307
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1308
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 1311
    :cond_1
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1290
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1293
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .line 1235
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1237
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1238
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 3

    .line 407
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 409
    nop

    .line 410
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 411
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 414
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 415
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 420
    :cond_0
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .locals 2

    .line 1035
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1036
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1038
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v1, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1040
    :cond_0
    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1044
    :cond_1
    :goto_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setEnableOverscroll(Z)V

    .line 1045
    return-void
.end method

.method private updateMaxScrollX()V
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    .line 650
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setPageDescription(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 316
    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    return p1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    .line 752
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 753
    return-void

    .line 757
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 758
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 760
    :cond_1
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 761
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v0, :cond_3

    .line 762
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    return-void

    .line 764
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_3

    .line 765
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 766
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 769
    :cond_3
    return-void
.end method

.method protected announcePageForAccessibility()V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 432
    :cond_0
    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 1

    .line 1549
    const/4 v0, 0x1

    return v0
.end method

.method public cancelCurrentPageLongPress()V
    .locals 1

    .line 957
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 958
    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 961
    :cond_0
    return-void
.end method

.method protected computeMaxScrollX()I
    .locals 3

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 654
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 655
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 656
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    return v0

    .line 658
    :cond_1
    return v1
.end method

.method public computeScroll()V
    .locals 0

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    .line 472
    return-void
.end method

.method public computeScrollHelper()Z
    .locals 1

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->computeScrollHelper(Z)Z

    move-result v0

    return v0
.end method

.method protected computeScrollHelper(Z)Z
    .locals 10

    .line 435
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-int v1, v5

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    if-ge v1, v5, :cond_3

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    int-to-float v1, v1

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v6, v5, v1

    float-to-int v6, v6

    const/4 v7, 0x0

    const/16 v8, 0x64

    if-ge v6, v8, :cond_1

    int-to-float v7, v6

    div-float/2addr v7, v5

    add-int/lit8 v8, v6, 0x1

    int-to-float v9, v8

    div-float/2addr v9, v5

    sget-object v5, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    aget v5, v5, v6

    sget-object v6, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    aget v6, v6, v8

    sub-float/2addr v6, v5

    sub-float/2addr v9, v7

    div-float/2addr v6, v9

    sub-float/2addr v1, v7

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    goto :goto_0

    :cond_1
    move v1, v3

    move v6, v7

    :goto_0
    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    int-to-float v5, v5

    mul-float/2addr v6, v5

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v5

    iput v6, v0, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v7, v0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v7, v0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    if-ne v1, v5, :cond_4

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    if-ne v1, v5, :cond_4

    goto :goto_2

    :pswitch_1
    int-to-float v1, v1

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    mul-float/2addr v1, v5

    iget-object v5, v0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/android/launcher3/LauncherScroller;->viscousFluid(F)F

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v5, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    :goto_1
    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    goto :goto_3

    :cond_3
    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    :goto_2
    iput-boolean v4, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    :cond_4
    :goto_3
    move v0, v4

    :goto_4
    if-eqz v0, :cond_9

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    if-ne v0, v1, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 439
    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    if-eq v0, v1, :cond_7

    .line 440
    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v0

    goto :goto_5

    .line 441
    :cond_6
    move v0, v3

    :goto_5
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    int-to-float v1, v1

    div-float/2addr v3, v0

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 442
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 444
    :cond_7
    if-eqz p1, :cond_8

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 447
    :cond_8
    return v4

    .line 448
    :cond_9
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-eqz p1, :cond_b

    .line 449
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 451
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 452
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 453
    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 458
    iget p1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez p1, :cond_a

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 462
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canAnnouncePageDescription()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 463
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->announcePageForAccessibility()V

    .line 466
    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dampedOverScroll(F)V
    .locals 2

    .line 1011
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result v1

    .line 1014
    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 1015
    iput v1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 1016
    iget p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 1018
    :cond_1
    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 1019
    iget p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1021
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1022
    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    .line 918
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 919
    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 2

    .line 927
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 928
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 931
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 932
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 933
    float-to-int v0, v1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 935
    :cond_1
    iget p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 937
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 938
    const/4 v0, 0x1

    if-le p1, p2, :cond_2

    .line 940
    move p1, v0

    goto :goto_0

    .line 938
    :cond_2
    const/4 p1, 0x0

    .line 940
    :goto_0
    if-eqz p1, :cond_3

    .line 942
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 943
    iget p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget p2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 944
    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 945
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 947
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 949
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    .line 951
    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .line 725
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 726
    return v0

    .line 729
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/16 v1, 0x42

    const/16 v2, 0x11

    if-eqz p1, :cond_2

    .line 730
    if-ne p2, v2, :cond_1

    .line 731
    nop

    .line 736
    move p2, v1

    goto :goto_0

    .line 732
    :cond_1
    if-ne p2, v1, :cond_2

    .line 733
    nop

    .line 736
    move p2, v2

    :cond_2
    :goto_0
    if-ne p2, v2, :cond_3

    .line 737
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    if-lez p1, :cond_4

    .line 738
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 739
    return v0

    .line 741
    :cond_3
    if-ne p2, v1, :cond_4

    .line 742
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_4

    .line 743
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 744
    return v0

    .line 747
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public enableFreeScroll(Z)V
    .locals 1

    .line 1030
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1031
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mSettleOnPageInFreeScroll:Z

    .line 1032
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 780
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 781
    nop

    .line 783
    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 784
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 785
    return-void

    .line 787
    :cond_0
    if-ne v1, p0, :cond_1

    .line 788
    return-void

    .line 790
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 791
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 792
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 794
    :cond_2
    return-void
.end method

.method public forceLayout()V
    .locals 1

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 501
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 502
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1485
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildGap()I
    .locals 1

    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 1

    .line 690
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1

    .line 690
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentPage()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .line 1553
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1554
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1553
    const v2, 0x7f0c004d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownMotionX()F
    .locals 1

    .line 1558
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    return v0
.end method

.method public getDownMotionY()F
    .locals 1

    .line 1562
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    return v0
.end method

.method public getExpectedHeight()I
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getExpectedWidth()I
    .locals 1

    .line 484
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 3

    .line 999
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 1002
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1004
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    .line 1005
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget p1, v2, p1

    add-int/2addr p1, v1

    .line 1006
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    .line 1000
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public getNextPage()I
    .locals 2

    .line 228
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method public getNormalChildHeight()I
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNormalChildWidth()I
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getPageCount()I
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .line 1545
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method public getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 608
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 609
    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 610
    move v1, v5

    :cond_1
    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_2

    goto :goto_1

    .line 612
    :cond_2
    const/4 v5, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    .line 614
    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    .line 615
    nop

    .line 616
    nop

    .line 618
    move v8, v7

    :goto_2
    if-eq v2, v1, :cond_6

    .line 619
    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    .line 620
    move-object/from16 v10, p3

    invoke-interface {v10, v9}, Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v11

    iget-object v12, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget-object v13, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v4

    .line 623
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 624
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 626
    if-eqz p2, :cond_3

    .line 627
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 628
    nop

    .line 629
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v6, v8, v15

    add-int/2addr v14, v11

    .line 628
    invoke-virtual {v9, v8, v11, v6, v14}, Landroid/view/View;->layout(IIII)V

    .line 632
    :cond_3
    sub-int v6, v8, v7

    .line 633
    aget v9, p1, v2

    if-eq v9, v6, :cond_4

    .line 634
    nop

    .line 635
    aput v6, p1, v2

    .line 638
    const/4 v3, 0x1

    :cond_4
    iget v6, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildGap()I

    move-result v6

    add-int/2addr v12, v6

    add-int/2addr v8, v12

    .line 618
    :cond_5
    add-int/2addr v2, v5

    goto :goto_2

    .line 641
    :cond_6
    return v3
.end method

.method protected getPageSnapDuration()I
    .locals 1

    .line 1354
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    const/16 v0, 0x10e

    return v0

    .line 1357
    :cond_0
    const/16 v0, 0x2ee

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget p1, v0, p1

    return p1

    .line 990
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 3

    .line 964
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 966
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 967
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 971
    add-int/lit8 v1, p3, 0x1

    .line 972
    if-gez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    .line 973
    :cond_1
    add-int/lit8 v1, p3, -0x1

    .line 976
    :cond_2
    if-ltz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_3

    goto :goto_0

    .line 979
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_1

    .line 977
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget p3, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr p2, p3

    .line 982
    :goto_1
    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    .line 983
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 984
    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 985
    return p1
.end method

.method protected getUnboundedScrollX()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    return v0
.end method

.method protected indexToPage(I)I
    .locals 0

    .line 240
    return p1
.end method

.method protected init()V
    .locals 3

    .line 179
    new-instance v0, Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 180
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    .line 185
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 188
    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    .line 189
    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    .line 190
    const v2, 0x44bb8000    # 1500.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    .line 192
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDefaultFocusHighlightEnabled(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    if-ltz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    .line 205
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 206
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setPageDescription(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    return-void
.end method

.method public isHandlingTouch()Z
    .locals 1

    .line 914
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isInOverScroll()Z
    .locals 2

    .line 1350
    iget v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isPageInTransition()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return v0
.end method

.method public notifyPageSwitchListener(I)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 309
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 1252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_5

    .line 1257
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1258
    nop

    .line 1259
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1264
    move v2, v3

    goto :goto_0

    .line 1261
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .line 1262
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 1264
    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_9

    .line 1265
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_4

    cmpg-float p1, v2, v3

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_3

    .line 1267
    :cond_4
    :goto_1
    move v5, v1

    goto :goto_3

    .line 1266
    :cond_5
    if-gtz v4, :cond_7

    cmpl-float p1, v2, v3

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    goto :goto_3

    :cond_7
    :goto_2
    goto :goto_1

    .line 1267
    :goto_3
    if-eqz v5, :cond_8

    .line 1268
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    goto :goto_4

    .line 1270
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 1272
    :goto_4
    return v1

    .line 1277
    :cond_9
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1567
    const/4 p1, 0x1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1518
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1519
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1520
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1492
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1493
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1494
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 1495
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1497
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_2

    .line 1498
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1504
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1505
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1506
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 826
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 836
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 837
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v1, v2, :cond_1

    .line 839
    return v2

    .line 842
    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 848
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 897
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 898
    goto :goto_2

    .line 860
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 863
    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 864
    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 865
    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 867
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 868
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 875
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget p1, p1, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v0, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 876
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 878
    :cond_2
    move p1, v3

    goto :goto_1

    .line 876
    :cond_3
    :goto_0
    nop

    .line 878
    move p1, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 879
    iput v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 880
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez p1, :cond_7

    .line 881
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 882
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    goto :goto_2

    .line 885
    :cond_4
    iget p1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    float-to-int p1, p1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 886
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto :goto_2

    .line 888
    :cond_5
    iput v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 892
    goto :goto_2

    .line 901
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 902
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 910
    :cond_7
    :goto_2
    iget p1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 547
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 548
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 549
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result p2

    .line 555
    nop

    .line 556
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    move p3, p4

    goto :goto_1

    .line 557
    :cond_2
    :goto_0
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 558
    nop

    .line 560
    move p3, p1

    :goto_1
    iget-object p5, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    sget-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    invoke-virtual {p0, p5, p1, v0}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 561
    goto :goto_2

    .line 564
    :cond_3
    move p1, p3

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p3

    .line 567
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 568
    new-instance p5, Lcom/android/launcher3/PagedView$1;

    invoke-direct {p5, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {p3, p5}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_3

    .line 585
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateMaxScrollX()V

    .line 588
    :goto_3
    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz p3, :cond_5

    iget p3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ge p3, p2, :cond_5

    .line 589
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 590
    iput-boolean p4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 593
    :cond_5
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p3, p3, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    .line 594
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 596
    :cond_6
    iput p2, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    .line 597
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 508
    return-void

    .line 513
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 514
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 515
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 516
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 518
    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 524
    :cond_1
    if-lez v1, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 533
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int p1, v1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 535
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->measureChildren(II)V

    .line 541
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/PagedView;->setMeasuredDimension(II)V

    .line 542
    return-void

    .line 525
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 526
    return-void

    .line 519
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 520
    return-void
.end method

.method public onPageBeginTransition()V
    .locals 0

    .line 340
    return-void
.end method

.method public onPageEndTransition()V
    .locals 1

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 348
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 711
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 712
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    goto :goto_0

    .line 714
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 716
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 720
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .line 1244
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .line 1247
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    .line 1053
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1058
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1062
    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eq v2, v3, :cond_23

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_10

    .line 1214
    :pswitch_0
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v1, v4, :cond_1

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1218
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1219
    goto/16 :goto_10

    .line 1086
    :pswitch_1
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v2, v4, :cond_4

    .line 1088
    iget v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1090
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    return v4

    .line 1092
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1093
    iget v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v5, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v2, v5

    sub-float/2addr v2, v1

    .line 1095
    iget v5, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v5, v7

    iput v5, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1100
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_3

    .line 1101
    float-to-int v3, v2

    invoke-virtual {v0, v3, v6}, Lcom/android/launcher3/PagedView;->scrollBy(II)V

    .line 1102
    iput v1, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1103
    int-to-float v1, v3

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_10

    .line 1105
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->awakenScrollBars()Z

    .line 1107
    goto/16 :goto_10

    .line 1108
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1110
    goto/16 :goto_10

    .line 1113
    :pswitch_2
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v2, v4, :cond_1d

    .line 1114
    iget v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1115
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 1116
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1117
    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1118
    const/16 v8, 0x3e8

    iget v9, v0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1119
    invoke-virtual {v7, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 1120
    iget v7, v0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float v7, v1, v7

    float-to-int v7, v7

    .line 1121
    iget v8, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v8}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1122
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    int-to-float v8, v8

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v8

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 1125
    move v9, v4

    goto :goto_0

    .line 1122
    :cond_5
    nop

    .line 1125
    move v9, v6

    :goto_0
    iget v10, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v11, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v12, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v11, v12

    sub-float/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v10, v1

    iput v10, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1126
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v10, v0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v1, v1, v10

    if-lez v1, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1128
    move v1, v4

    goto :goto_1

    .line 1126
    :cond_6
    nop

    .line 1128
    move v1, v6

    :goto_1
    iget-boolean v10, v0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v10, :cond_14

    .line 1132
    nop

    .line 1133
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v8, v5

    cmpl-float v3, v3, v8

    if-lez v3, :cond_7

    int-to-float v3, v2

    .line 1134
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    int-to-float v5, v7

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 1135
    nop

    .line 1142
    move v3, v4

    goto :goto_2

    :cond_7
    move v3, v6

    :goto_2
    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_9

    if-lez v7, :cond_8

    .line 1143
    :goto_3
    move v5, v4

    goto :goto_4

    .line 1142
    :cond_8
    nop

    .line 1143
    move v5, v6

    goto :goto_4

    .line 1142
    :cond_9
    if-gez v7, :cond_8

    goto :goto_3

    .line 1143
    :goto_4
    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_b

    if-lez v2, :cond_a

    .line 1144
    :goto_5
    move v6, v4

    goto :goto_6

    .line 1143
    :cond_a
    goto :goto_6

    :cond_b
    if-gez v2, :cond_a

    goto :goto_5

    .line 1144
    :goto_6
    if-eqz v9, :cond_c

    if-nez v5, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v1, :cond_f

    if-nez v6, :cond_f

    :cond_d
    iget v7, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v7, :cond_f

    .line 1146
    if-eqz v3, :cond_e

    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_7

    :cond_e
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    sub-int/2addr v1, v4

    .line 1147
    :goto_7
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    goto/16 :goto_e

    .line 1148
    :cond_f
    if-eqz v9, :cond_10

    if-eqz v5, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    if-eqz v1, :cond_13

    if-eqz v6, :cond_13

    :cond_11
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_13

    .line 1151
    if-eqz v3, :cond_12

    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_8

    :cond_12
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr v1, v4

    .line 1152
    :goto_8
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    goto/16 :goto_e

    .line 1154
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1156
    goto/16 :goto_e

    .line 1157
    :cond_14
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v1, :cond_15

    .line 1158
    invoke-direct {v0, v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1161
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v1

    .line 1162
    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    .line 1165
    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v9, v8, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1166
    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v9

    .line 1166
    iget-boolean v10, v8, Lcom/android/launcher3/LauncherScroller;->mFlywheel:Z

    if-eqz v10, :cond_16

    iget-boolean v10, v8, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v10, :cond_16

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherScroller;->getCurrVelocity()F

    move-result v10

    iget v11, v8, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v12, v8, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v8, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v13, v8, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    float-to-double v13, v11

    move/from16 v16, v7

    float-to-double v6, v12

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v11, v6

    div-float/2addr v12, v6

    mul-float/2addr v11, v10

    mul-float/2addr v12, v10

    int-to-float v6, v2

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpl-float v7, v7, v10

    if-nez v7, :cond_17

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpl-float v7, v7, v10

    if-nez v7, :cond_17

    add-float/2addr v6, v11

    float-to-int v2, v6

    add-float/2addr v12, v5

    float-to-int v6, v12

    goto :goto_9

    :cond_16
    move/from16 v16, v7

    :cond_17
    const/4 v6, 0x0

    :goto_9
    iput v4, v8, Lcom/android/launcher3/LauncherScroller;->mMode:I

    const/4 v7, 0x0

    iput-boolean v7, v8, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    int-to-double v10, v2

    int-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v7, v10

    iput v7, v8, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    invoke-virtual {v8, v7}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v10

    sget v12, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v12, v12

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, v17

    const-wide v19, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double v10, v10, v19

    double-to-int v10, v10

    iput v10, v8, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    move/from16 v10, v16

    iput v10, v8, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iput v9, v8, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    cmpl-float v5, v7, v5

    if-nez v5, :cond_18

    move v2, v3

    goto :goto_a

    :cond_18
    int-to-float v2, v2

    div-float/2addr v2, v7

    :goto_a
    if-nez v5, :cond_19

    move v5, v3

    goto :goto_b

    :cond_19
    int-to-float v5, v6

    div-float/2addr v5, v7

    :goto_b
    invoke-virtual {v8, v7}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v11

    sget v6, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v13, v6

    sub-double v13, v13, v17

    iget v6, v8, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    iget v15, v8, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v6, v15

    float-to-double v3, v6

    sget v6, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    move/from16 v21, v1

    float-to-double v0, v6

    div-double/2addr v0, v13

    mul-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    const/high16 v0, -0x80000000

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    const v0, 0x7fffffff

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    const/4 v0, 0x0

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    float-to-double v0, v2

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int v7, v10, v0

    iput v7, v8, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v1, v8, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v1, v8, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    float-to-double v0, v5

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v9, v0

    iput v9, v8, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v1, v8, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v1, v8, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 1168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    int-to-float v1, v1

    div-float v1, v1, v21

    float-to-int v1, v1

    .line 1169
    invoke-direct {v0, v1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1170
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v2, :cond_1a

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_c

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v6, v2, -0x1

    :goto_c
    invoke-virtual {v0, v6}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 1171
    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    goto :goto_d

    :cond_1b
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v0, v6}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    .line 1172
    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mSettleOnPageInFreeScroll:Z

    if-eqz v4, :cond_1c

    if-le v1, v2, :cond_1c

    if-ge v1, v3, :cond_1c

    .line 1176
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v2, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherScroller;->setFinalX(I)V

    .line 1178
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1179
    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    rsub-int v1, v1, 0x10e

    .line 1180
    if-lez v1, :cond_1c

    .line 1181
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->timePassed()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    iget v1, v2, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    iput v3, v2, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 1184
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1186
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1187
    goto :goto_f

    :cond_1d
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 1191
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1192
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_1e

    .line 1193
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    goto :goto_f

    .line 1195
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1197
    goto :goto_f

    :cond_1f
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1202
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_20

    .line 1203
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    goto :goto_f

    .line 1205
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1210
    :cond_21
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1211
    goto :goto_10

    .line 1068
    :pswitch_3
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v2, :cond_22

    .line 1069
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1073
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1074
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1075
    iput v5, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1076
    iput v5, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1077
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1079
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    goto :goto_10

    .line 1222
    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1223
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1227
    :cond_24
    :goto_10
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 678
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 679
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    .line 680
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 684
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 685
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 686
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    .line 687
    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .line 1025
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->dampedOverScroll(F)V

    .line 1026
    return-void
.end method

.method protected pageBeginTransition()V
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 322
    :cond_0
    return-void
.end method

.method protected pageEndTransition()V
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 329
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1524
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1525
    return v0

    .line 1527
    :cond_0
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 1535
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    if-lez p1, :cond_3

    .line 1536
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 1537
    return v0

    .line 1529
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 1530
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 1531
    return v0

    .line 1541
    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1315
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1316
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result p1

    .line 1317
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1318
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1320
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 696
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result p1

    .line 697
    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p2, p2, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 698
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_1

    .line 701
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 703
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 804
    if-eqz p1, :cond_0

    .line 807
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 810
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 811
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 495
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 496
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 357
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 1474
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1475
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 1478
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1479
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    .line 362
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 366
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 369
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 372
    :cond_2
    iput p1, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    .line 374
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_3

    .line 375
    :goto_0
    move v0, v2

    goto :goto_1

    .line 374
    :cond_3
    nop

    .line 375
    move v0, v1

    goto :goto_1

    .line 374
    :cond_4
    if-gez p1, :cond_3

    goto :goto_0

    .line 375
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_6

    if-gez p1, :cond_5

    .line 376
    :goto_2
    move v3, v2

    goto :goto_3

    .line 375
    :cond_5
    nop

    .line 376
    move v3, v1

    goto :goto_3

    .line 375
    :cond_6
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v3, :cond_5

    goto :goto_2

    .line 376
    :goto_3
    if-eqz v0, :cond_9

    .line 377
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    nop

    :cond_7
    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 378
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_e

    .line 379
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 380
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_8

    .line 381
    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    return-void

    .line 383
    :cond_8
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    return-void

    .line 386
    :cond_9
    if-eqz v3, :cond_c

    .line 387
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    :goto_4
    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 388
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_e

    .line 389
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 390
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_b

    .line 391
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    return-void

    .line 393
    :cond_b
    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    return-void

    .line 397
    :cond_c
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    if-eqz v0, :cond_d

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 399
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 401
    :cond_d
    iput p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 402
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 404
    :cond_e
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .line 1511
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 1512
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1514
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 294
    return-void

    .line 296
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 297
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 301
    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 198
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 199
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p1, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 200
    return-void
.end method

.method public setEnableOverscroll(Z)V
    .locals 0

    .line 1048
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1049
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    .line 663
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 664
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 665
    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 1

    .line 1231
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected snapToDestination()V
    .locals 2

    .line 1346
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    .line 1347
    return-void
.end method

.method public snapToPage(I)Z
    .locals 1

    .line 1404
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result p1

    return p1
.end method

.method public snapToPage(II)Z
    .locals 2

    .line 1412
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)Z

    move-result p1

    return p1
.end method

.method protected snapToPage(III)Z
    .locals 6

    .line 1429
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)Z

    move-result p1

    return p1
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)Z
    .locals 6

    .line 1434
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1436
    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1438
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->awakenScrollBars(I)Z

    .line 1439
    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 1440
    nop

    .line 1445
    move v5, p1

    goto :goto_0

    .line 1441
    :cond_0
    if-nez p3, :cond_1

    .line 1442
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1445
    :cond_1
    move v5, p3

    :goto_0
    if-eqz v5, :cond_2

    .line 1446
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1449
    :cond_2
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p3, p3, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez p3, :cond_3

    .line 1450
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1453
    :cond_3
    if-eqz p5, :cond_4

    .line 1454
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iput-object p5, p3, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 1456
    :cond_4
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object p5, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p3, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1459
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 1461
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 1464
    if-eqz p4, :cond_5

    .line 1465
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1466
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1469
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1470
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_6

    const/4 p1, 0x1

    :cond_6
    return p1
.end method

.method protected snapToPage(IILandroid/animation/TimeInterpolator;)Z
    .locals 1

    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)Z

    move-result p1

    return p1
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)Z
    .locals 6

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    .line 1423
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    .line 1424
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    sub-int v2, p1, v0

    .line 1425
    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)Z

    move-result p1

    return p1
.end method

.method public snapToPageImmediately(I)Z
    .locals 3

    .line 1408
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)Z

    move-result p1

    return p1
.end method

.method protected snapToPageWithVelocity(II)Z
    .locals 5

    .line 1371
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1372
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 1375
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1376
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_0

    .line 1381
    const/16 p2, 0x2ee

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result p1

    return p1

    .line 1388
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    mul-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1389
    int-to-float v0, v0

    .line 1390
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v1

    mul-float/2addr v1, v0

    add-float/2addr v0, v1

    .line 1392
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1393
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1398
    const/4 v1, 0x4

    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr v1, p2

    .line 1400
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/PagedView;->snapToPage(III)Z

    move-result p1

    return p1
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .line 250
    nop

    .line 251
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 252
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    goto :goto_0

    .line 254
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 255
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherScroller;->setFinalX(I)V

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 257
    return-void
.end method
