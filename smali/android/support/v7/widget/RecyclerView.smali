.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/g;


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Landroid/support/v7/widget/aB;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

.field mAdapter:Landroid/support/v7/widget/V;

.field mAdapterHelper:Landroid/support/v7/widget/a;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/Y;

.field mChildHelper:Landroid/support/v7/widget/d;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Landroid/support/v7/widget/Z;

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z

.field mGapWorker:Landroid/support/v7/widget/w;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field mIsAttached:Z

.field mItemAnimator:Landroid/support/v7/widget/aa;

.field private mItemAnimatorListener:Landroid/support/v7/widget/ab;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/af;

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroid/support/v7/widget/as;

.field private mOnChildAttachStateListeners:Ljava/util/List;

.field private mOnFlingListener:Landroid/support/v7/widget/al;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroid/support/v7/widget/y;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroid/support/v7/widget/aq;

.field mRecyclerListener:Landroid/support/v7/widget/ar;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private final mScrollConsumed:[I

.field private mScrollListener:Landroid/support/v7/widget/an;

.field private mScrollListeners:Ljava/util/List;

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private final mScrollStepConsumed:[I

.field private mScrollingChildHelper:Landroid/support/v4/view/h;

.field final mState:Landroid/support/v7/widget/ax;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroid/support/v7/widget/az;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/aP;

.field final mViewInfoStore:Landroid/support/v7/widget/aN;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 169
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 172
    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 309
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 549
    new-instance v0, Landroid/support/v7/widget/R;

    invoke-direct {v0}, Landroid/support/v7/widget/R;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 598
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 605
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 312
    new-instance v0, Landroid/support/v7/widget/as;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/as;

    .line 314
    new-instance v0, Landroid/support/v7/widget/aq;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    .line 331
    new-instance v0, Landroid/support/v7/widget/aN;

    invoke-direct {v0}, Landroid/support/v7/widget/aN;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    .line 345
    new-instance v0, Landroid/support/v7/widget/P;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/P;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 366
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 367
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 417
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 426
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 436
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 445
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 447
    new-instance v1, Landroid/support/v7/widget/Z;

    invoke-direct {v1}, Landroid/support/v7/widget/Z;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/Z;

    .line 451
    new-instance v1, Landroid/support/v7/widget/g;

    invoke-direct {v1}, Landroid/support/v7/widget/g;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    .line 478
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 479
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 491
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 492
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 494
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 496
    new-instance v3, Landroid/support/v7/widget/az;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/az;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    .line 499
    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroid/support/v7/widget/y;

    invoke-direct {v3}, Landroid/support/v7/widget/y;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    .line 502
    new-instance v3, Landroid/support/v7/widget/ax;

    invoke-direct {v3}, Landroid/support/v7/widget/ax;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 508
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 509
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 510
    new-instance v3, Landroid/support/v7/widget/ad;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/ad;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/ab;

    .line 512
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 518
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 521
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 522
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 523
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 529
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    .line 536
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 539
    new-instance v4, Landroid/support/v7/widget/Q;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/Q;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 560
    new-instance v4, Landroid/support/v7/widget/S;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/S;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/aP;

    .line 606
    if-eqz p2, :cond_1

    .line 607
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 608
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 609
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 610
    goto :goto_1

    .line 611
    :cond_1
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 613
    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 614
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 616
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 617
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 618
    nop

    .line 619
    invoke-static {v4, p1}, Landroid/support/v4/view/p;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 620
    nop

    .line 621
    invoke-static {v4, p1}, Landroid/support/v4/view/p;->b(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 622
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 623
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 624
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 626
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/ab;

    iput-object v4, v3, Landroid/support/v7/widget/aa;->pU:Landroid/support/v7/widget/ab;

    .line 627
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 628
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 629
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initAutofill()V

    .line 631
    invoke-static {p0}, Landroid/support/v4/view/n;->g(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_3

    .line 633
    invoke-static {p0, v2}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    .line 636
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 637
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 638
    new-instance v3, Landroid/support/v7/widget/aB;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/aB;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/aB;)V

    .line 641
    nop

    .line 643
    const/high16 v3, 0x40000

    if-eqz p2, :cond_7

    .line 644
    sget-object v4, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 647
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 648
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 650
    if-ne v5, v1, :cond_4

    .line 651
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 653
    :cond_4
    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    .line 654
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    if-eqz v1, :cond_5

    .line 655
    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 656
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 657
    sget v3, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 658
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 659
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 660
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 661
    sget v6, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 662
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 663
    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/support/v7/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 666
    :cond_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 667
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move v10, p3

    invoke-direct/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 669
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_6

    .line 670
    sget-object v1, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 672
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 673
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 675
    move v2, p2

    :cond_6
    goto :goto_3

    .line 676
    :cond_7
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 680
    :goto_3
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 681
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 161
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 161
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/RecyclerView;)[I
    .locals 0

    .line 161
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView;)[I
    .locals 0

    .line 161
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;II[I)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->scrollStep(II[I)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/aA;)V
    .locals 5

    .line 1380
    iget-object v0, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 1381
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    .line 1382
    move v1, v2

    goto :goto_0

    .line 1381
    :cond_0
    const/4 v1, 0x0

    .line 1382
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/aq;->m(Landroid/support/v7/widget/aA;)V

    .line 1383
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    .line 1385
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/support/v7/widget/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    .line 1386
    :cond_1
    if-nez v1, :cond_2

    .line 1387
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {p1, v0, v3, v2}, Landroid/support/v7/widget/d;->a(Landroid/view/View;IZ)V

    return-void

    .line 1389
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v1, p1, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/f;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v2, p1, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/e;->set(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/d;->M(Landroid/view/View;)V

    .line 1391
    return-void

    .line 1389
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private animateChange(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;ZZ)V
    .locals 1

    .line 4125
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 4126
    if-eqz p5, :cond_0

    .line 4127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/aA;)V

    .line 4129
    :cond_0
    if-eq p1, p2, :cond_2

    .line 4130
    if-eqz p6, :cond_1

    .line 4131
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/aA;)V

    .line 4133
    :cond_1
    iput-object p2, p1, Landroid/support/v7/widget/aA;->mShadowedHolder:Landroid/support/v7/widget/aA;

    .line 4135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/aA;)V

    .line 4136
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {p5, p1}, Landroid/support/v7/widget/aq;->m(Landroid/support/v7/widget/aA;)V

    .line 4137
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 4138
    iput-object p1, p2, Landroid/support/v7/widget/aA;->mShadowingHolder:Landroid/support/v7/widget/aA;

    .line 4140
    :cond_2
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4141
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 4143
    :cond_3
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .line 3193
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 3194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3195
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/aA;)V
    .locals 3

    .line 5542
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 5543
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5544
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5545
    iget-object v2, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    .line 5546
    return-void

    .line 5549
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5550
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 5551
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 5553
    :cond_1
    nop

    .line 5555
    nop

    .line 5544
    move-object v0, v1

    goto :goto_0

    .line 5556
    :cond_2
    iput-object v1, p0, Landroid/support/v7/widget/aA;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5558
    :cond_3
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 732
    if-eqz p2, :cond_1

    .line 733
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 734
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 738
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 744
    :goto_0
    nop

    .line 745
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/af;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 747
    const/4 v1, 0x0

    .line 749
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 750
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 751
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p3, v5, v2

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 760
    nop

    .line 761
    move-object v1, v5

    goto :goto_1

    .line 752
    :catch_0
    move-exception p1

    .line 754
    :try_start_2
    new-array p4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 759
    nop

    .line 761
    :goto_1
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 762
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/af;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/af;)V

    .line 778
    return-void

    .line 755
    :catch_1
    move-exception p4

    .line 756
    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 757
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Error creating LayoutManager "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 775
    :catch_2
    move-exception p1

    .line 776
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 772
    :catch_3
    move-exception p1

    .line 773
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 769
    :catch_4
    move-exception p1

    .line 770
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 766
    :catch_5
    move-exception p1

    .line 767
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 763
    :catch_6
    move-exception p1

    .line 764
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 781
    :cond_1
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 3

    .line 4071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4072
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget p1, p1, v2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 4

    .line 3425
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3426
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3427
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3428
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3429
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3430
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 3431
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3433
    :cond_1
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    .line 3777
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ax;->aa(I)V

    .line 3778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/ax;)V

    .line 3779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/ax;->qI:Z

    .line 3780
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3781
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v0}, Landroid/support/v7/widget/aN;->clear()V

    .line 3782
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3783
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3784
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 3785
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v3, v3, Landroid/support/v7/widget/ax;->qJ:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v0, Landroid/support/v7/widget/ax;->qH:Z

    .line 3786
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v3, v3, Landroid/support/v7/widget/ax;->qK:Z

    iput-boolean v3, v0, Landroid/support/v7/widget/ax;->qG:Z

    .line 3788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v3}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/ax;->qE:I

    .line 3789
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3791
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qJ:Z

    if-eqz v0, :cond_3

    .line 3793
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 3794
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 3795
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v4

    .line 3796
    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v5, v5, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v5, :cond_2

    .line 3797
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    .line 3801
    invoke-static {v4}, Landroid/support/v7/widget/aa;->g(Landroid/support/v7/widget/aA;)I

    .line 3802
    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->getUnmodifiedPayloads()Ljava/util/List;

    .line 3800
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aa;->f(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;

    move-result-object v5

    .line 3803
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v6, v4, v5}, Landroid/support/v7/widget/aN;->a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V

    .line 3804
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v5, v5, Landroid/support/v7/widget/ax;->qH:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3805
    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3806
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/aA;)J

    move-result-wide v5

    .line 3814
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v7, v5, v6, v4}, Landroid/support/v7/widget/aN;->a(JLandroid/support/v7/widget/aA;)V

    .line 3794
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3818
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qK:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_9

    .line 3825
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 3826
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qF:Z

    .line 3827
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v2, v4, Landroid/support/v7/widget/ax;->qF:Z

    .line 3829
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/af;->onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V

    .line 3830
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v0, v4, Landroid/support/v7/widget/ax;->qF:Z

    .line 3832
    move v0, v2

    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 3833
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3834
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v4

    .line 3835
    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3836
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    iget-object v5, v5, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v5, v4}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/aO;

    if-eqz v5, :cond_4

    iget v5, v5, Landroid/support/v7/widget/aO;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    if-nez v5, :cond_7

    .line 3839
    invoke-static {v4}, Landroid/support/v7/widget/aa;->g(Landroid/support/v7/widget/aA;)I

    .line 3840
    const/16 v5, 0x2000

    .line 3841
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v5

    .line 3842
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    .line 3846
    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->getUnmodifiedPayloads()Ljava/util/List;

    .line 3845
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/aa;->f(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;

    move-result-object v6

    .line 3847
    if-eqz v5, :cond_5

    .line 3848
    invoke-virtual {p0, v4, v6}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V

    goto :goto_4

    .line 3850
    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    iget-object v7, v5, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v7, v4}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/aO;

    if-nez v7, :cond_6

    invoke-static {}, Landroid/support/v7/widget/aO;->ca()Landroid/support/v7/widget/aO;

    move-result-object v7

    iget-object v5, v5, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v5, v4, v7}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v4, v7, Landroid/support/v7/widget/aO;->flags:I

    or-int/2addr v4, v3

    iput v4, v7, Landroid/support/v7/widget/aO;->flags:I

    iput-object v6, v7, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    .line 3832
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3855
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3856
    goto :goto_5

    .line 3857
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3859
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3860
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3861
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput v3, v0, Landroid/support/v7/widget/ax;->qD:I

    .line 3862
    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .line 3869
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3870
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ax;->aa(I)V

    .line 3872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bn()V

    .line 3873
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ax;->qE:I

    .line 3874
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ax;->qC:I

    .line 3877
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->qG:Z

    .line 3878
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/af;->onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V

    .line 3880
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->qF:Z

    .line 3881
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3884
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->qJ:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroid/support/v7/widget/ax;->qJ:Z

    .line 3885
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/ax;->qD:I

    .line 3886
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3887
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3888
    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 13

    .line 3895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ax;->aa(I)V

    .line 3896
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3897
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3898
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/ax;->qD:I

    .line 3899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qJ:Z

    if-eqz v0, :cond_e

    .line 3903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ltz v0, :cond_6

    .line 3904
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v8

    .line 3905
    invoke-virtual {v8}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3906
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/aA;)J

    move-result-wide v5

    .line 3909
    nop

    .line 3910
    new-instance v7, Landroid/support/v7/widget/ac;

    invoke-direct {v7}, Landroid/support/v7/widget/ac;-><init>()V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ac;->j(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;

    move-result-object v7

    .line 3911
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    iget-object v9, v9, Landroid/support/v7/widget/aN;->rN:Landroid/support/v4/c/h;

    iget-object v10, v9, Landroid/support/v4/c/h;->ju:[J

    iget v11, v9, Landroid/support/v4/c/h;->mSize:I

    invoke-static {v10, v11, v5, v6}, Landroid/support/v4/c/e;->a([JIJ)I

    move-result v10

    if-ltz v10, :cond_1

    iget-object v11, v9, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aget-object v11, v11, v10

    sget-object v12, Landroid/support/v4/c/h;->js:Ljava/lang/Object;

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v9, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aget-object v4, v4, v10

    nop

    :cond_1
    :goto_1
    check-cast v4, Landroid/support/v7/widget/aA;

    .line 3912
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_4

    .line 3923
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v9, v4}, Landroid/support/v7/widget/aN;->n(Landroid/support/v7/widget/aA;)Z

    move-result v11

    .line 3925
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/aN;->n(Landroid/support/v7/widget/aA;)Z

    move-result v12

    .line 3926
    if-eqz v11, :cond_2

    if-eq v4, v8, :cond_4

    .line 3928
    :cond_2
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v9, v4, v1}, Landroid/support/v7/widget/aN;->a(Landroid/support/v7/widget/aA;I)Landroid/support/v7/widget/ac;

    move-result-object v9

    .line 3933
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v10, v8, v7}, Landroid/support/v7/widget/aN;->b(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V

    .line 3934
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v7, v8, v3}, Landroid/support/v7/widget/aN;->a(Landroid/support/v7/widget/aA;I)Landroid/support/v7/widget/ac;

    move-result-object v10

    .line 3935
    if-nez v9, :cond_3

    .line 3936
    invoke-direct {p0, v5, v6, v8, v4}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;)V

    goto :goto_2

    .line 3938
    :cond_3
    move-object v6, p0

    move-object v7, v4

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;ZZ)V

    .line 3942
    goto :goto_2

    .line 3943
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v3, v8, v7}, Landroid/support/v7/widget/aN;->b(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V

    .line 3903
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3948
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/aP;

    iget-object v6, v0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v6}, Landroid/support/v4/c/a;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_3
    if-ltz v6, :cond_e

    iget-object v7, v0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v7, v6}, Landroid/support/v4/c/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/aA;

    iget-object v8, v0, Landroid/support/v7/widget/aN;->rM:Landroid/support/v4/c/a;

    invoke-virtual {v8, v6}, Landroid/support/v4/c/a;->removeAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/aO;

    iget v9, v8, Landroid/support/v7/widget/aO;->flags:I

    const/4 v10, 0x3

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_7

    :goto_4
    invoke-interface {v5, v7}, Landroid/support/v7/widget/aP;->e(Landroid/support/v7/widget/aA;)V

    goto :goto_6

    :cond_7
    iget v9, v8, Landroid/support/v7/widget/aO;->flags:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_9

    iget-object v9, v8, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    iget-object v9, v8, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    iget-object v10, v8, Landroid/support/v7/widget/aO;->rP:Landroid/support/v7/widget/ac;

    invoke-interface {v5, v7, v9, v10}, Landroid/support/v7/widget/aP;->a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V

    goto :goto_6

    :cond_9
    iget v9, v8, Landroid/support/v7/widget/aO;->flags:I

    const/16 v10, 0xe

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_a

    :goto_5
    iget-object v9, v8, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    iget-object v10, v8, Landroid/support/v7/widget/aO;->rP:Landroid/support/v7/widget/ac;

    invoke-interface {v5, v7, v9, v10}, Landroid/support/v7/widget/aP;->b(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V

    goto :goto_6

    :cond_a
    iget v9, v8, Landroid/support/v7/widget/aO;->flags:I

    const/16 v10, 0xc

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_b

    iget-object v9, v8, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    iget-object v10, v8, Landroid/support/v7/widget/aO;->rP:Landroid/support/v7/widget/ac;

    invoke-interface {v5, v7, v9, v10}, Landroid/support/v7/widget/aP;->c(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V

    goto :goto_6

    :cond_b
    iget v9, v8, Landroid/support/v7/widget/aO;->flags:I

    and-int/2addr v9, v1

    if-eqz v9, :cond_c

    iget-object v9, v8, Landroid/support/v7/widget/aO;->rO:Landroid/support/v7/widget/ac;

    invoke-interface {v5, v7, v9, v4}, Landroid/support/v7/widget/aP;->a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V

    goto :goto_6

    :cond_c
    iget v9, v8, Landroid/support/v7/widget/aO;->flags:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_d

    goto :goto_5

    :cond_d
    iget v7, v8, Landroid/support/v7/widget/aO;->flags:I

    :goto_6
    invoke-static {v8}, Landroid/support/v7/widget/aO;->a(Landroid/support/v7/widget/aO;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 3951
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->removeAndRecycleScrapInt(Landroid/support/v7/widget/aq;)V

    .line 3952
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v1, v1, Landroid/support/v7/widget/ax;->qE:I

    iput v1, v0, Landroid/support/v7/widget/ax;->qB:I

    .line 3953
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3954
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 3955
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v0, v1, Landroid/support/v7/widget/ax;->qJ:Z

    .line 3957
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v0, v1, Landroid/support/v7/widget/ax;->qK:Z

    .line 3958
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iput-boolean v0, v1, Landroid/support/v7/widget/af;->mRequestedSimpleAnimations:Z

    .line 3959
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v1, v1, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    .line 3960
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v1, v1, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3962
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-boolean v1, v1, Landroid/support/v7/widget/af;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v1, :cond_10

    .line 3965
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iput v0, v1, Landroid/support/v7/widget/af;->mPrefetchMaxCountObserved:I

    .line 3966
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iput-boolean v0, v1, Landroid/support/v7/widget/af;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3967
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v1}, Landroid/support/v7/widget/aq;->bH()V

    .line 3970
    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/af;->onLayoutCompleted(Landroid/support/v7/widget/ax;)V

    .line 3971
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3972
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3973
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v1}, Landroid/support/v7/widget/aN;->clear()V

    .line 3974
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v1, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v3, v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3975
    invoke-virtual {p0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3977
    :cond_11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 3978
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    .line 3979
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2896
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2897
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2899
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    goto :goto_0

    .line 2901
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/am;->onTouchEvent$606727f8(Landroid/view/MotionEvent;)V

    .line 2902
    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    if-ne v0, v2, :cond_2

    .line 2904
    :cond_1
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    .line 2906
    :cond_2
    return v2

    .line 2912
    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2913
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2914
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    .line 2915
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/am;

    .line 2916
    invoke-interface {v4, p1}, Landroid/support/v7/widget/am;->onInterceptTouchEvent$606727fc(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2917
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    .line 2918
    return v2

    .line 2914
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2922
    :cond_5
    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2879
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2880
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    .line 2883
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2884
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 2885
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/am;

    .line 2886
    invoke-interface {v5, p1}, Landroid/support/v7/widget/am;->onInterceptTouchEvent$606727fc(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 2887
    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    .line 2888
    const/4 p1, 0x1

    return p1

    .line 2884
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2891
    :cond_3
    return v3
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .line 4045
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 4046
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4047
    const/4 v0, -0x1

    aput v0, p1, v2

    .line 4048
    aput v0, p1, v1

    .line 4049
    return-void

    .line 4051
    :cond_0
    const v3, 0x7fffffff

    .line 4052
    const/high16 v4, -0x80000000

    .line 4053
    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4054
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v6

    .line 4055
    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4056
    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v6

    .line 4059
    if-ge v6, v4, :cond_1

    .line 4060
    nop

    .line 4062
    move v4, v6

    :cond_1
    if-le v6, v5, :cond_2

    .line 4063
    nop

    .line 4053
    move v5, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4066
    :cond_3
    aput v4, p1, v2

    .line 4067
    aput v5, p1, v1

    .line 4068
    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4

    .line 5520
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5521
    return-object v1

    .line 5523
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 5524
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 5526
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 5527
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5528
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 5529
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5530
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 5531
    if-eqz v3, :cond_2

    .line 5532
    return-object v3

    .line 5528
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5535
    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 5

    .line 3646
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v0, v0, Landroid/support/v7/widget/ax;->qL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v0, v0, Landroid/support/v7/widget/ax;->qL:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3649
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v1

    .line 3650
    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 3651
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 3652
    if-eqz v3, :cond_2

    .line 3653
    iget-object v4, v3, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3656
    iget-object v0, v3, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    return-object v0

    .line 3650
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3659
    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3660
    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_5

    .line 3661
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/aA;

    move-result-object v2

    .line 3662
    if-nez v2, :cond_3

    .line 3663
    return-object v1

    .line 3665
    :cond_3
    iget-object v1, v2, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3666
    iget-object v0, v2, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    return-object v0

    .line 3660
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3669
    :cond_5
    return-object v1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;
    .locals 0

    .line 4560
    if-nez p0, :cond_0

    .line 4561
    const/4 p0, 0x0

    return-object p0

    .line 4563
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/aj;

    iget-object p0, p0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 4836
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 4837
    iget-object v1, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 4838
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4839
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/aj;->topMargin:I

    sub-int/2addr v3, v4

    .line 4840
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    add-int/2addr v4, v5

    .line 4841
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/support/v7/widget/aj;->bottomMargin:I

    add-int/2addr p0, v0

    .line 4838
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4842
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3

    .line 3747
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3748
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3749
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3750
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3751
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3752
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3754
    :cond_0
    goto :goto_0

    .line 3755
    :cond_1
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 784
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 787
    :cond_0
    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 788
    return-object p2

    .line 790
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/h;
    .locals 1

    .line 13181
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/h;

    if-nez v0, :cond_0

    .line 13182
    new-instance v0, Landroid/support/v4/view/h;

    invoke-direct {v0, p0}, Landroid/support/v4/view/h;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/h;

    .line 13184
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/h;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;)V
    .locals 5

    .line 3999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 4000
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4001
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4002
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v2

    .line 4003
    if-eq v2, p3, :cond_1

    .line 4004
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/aA;)J

    move-result-wide v3

    .line 4007
    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 4008
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean p1, p1, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz p1, :cond_0

    .line 4009
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " \n View Holder 2:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4012
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4014
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " \n View Holder 2:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4018
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4000
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4023
    :cond_2
    const-string p1, "RecyclerView"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " cannot be found but it is necessary for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4025
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4023
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    .line 1851
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 1852
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1853
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 1854
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1855
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1858
    const/4 v0, 0x1

    return v0

    .line 1852
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1861
    :cond_1
    return v1
.end method

.method private initAutofill()V
    .locals 1

    .line 702
    invoke-static {p0}, Landroid/support/v4/view/n;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/support/v4/view/n;->c(Landroid/view/View;I)V

    .line 706
    :cond_0
    return-void
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 794
    new-instance v0, Landroid/support/v7/widget/d;

    new-instance v1, Landroid/support/v7/widget/T;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/T;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/f;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    .line 914
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    .line 2617
    const/4 v0, 0x0

    if-eqz p2, :cond_19

    if-ne p2, p0, :cond_0

    goto/16 :goto_5

    .line 2621
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2622
    return v0

    .line 2624
    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 2625
    return v1

    .line 2628
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2629
    return v1

    .line 2632
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2633
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2634
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2635
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2636
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object p1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, v1, :cond_4

    .line 2637
    move p1, p2

    goto :goto_0

    .line 2636
    :cond_4
    nop

    .line 2637
    move p1, v1

    .line 2638
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_6

    .line 2641
    nop

    .line 2647
    move v2, v1

    goto :goto_1

    .line 2642
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_8

    .line 2645
    nop

    .line 2647
    move v2, p2

    goto :goto_1

    :cond_8
    move v2, v0

    .line 2648
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_a

    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_a

    .line 2651
    nop

    .line 2657
    move p2, v1

    goto :goto_2

    .line 2652
    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_c

    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_c

    .line 2655
    goto :goto_2

    .line 2657
    :cond_c
    move p2, v0

    :goto_2
    const/16 v3, 0x11

    if-eq p3, v3, :cond_17

    const/16 v3, 0x21

    if-eq p3, v3, :cond_15

    const/16 v3, 0x42

    if-eq p3, v3, :cond_13

    const/16 v3, 0x82

    if-eq p3, v3, :cond_11

    packed-switch p3, :pswitch_data_0

    .line 2671
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid direction: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2667
    :pswitch_0
    if-gtz p2, :cond_e

    if-nez p2, :cond_d

    mul-int/2addr v2, p1

    if-ltz v2, :cond_d

    goto :goto_3

    :cond_d
    return v0

    :cond_e
    :goto_3
    return v1

    .line 2669
    :pswitch_1
    if-ltz p2, :cond_10

    if-nez p2, :cond_f

    mul-int/2addr v2, p1

    if-gtz v2, :cond_f

    goto :goto_4

    :cond_f
    return v0

    :cond_10
    :goto_4
    return v1

    .line 2665
    :cond_11
    if-lez p2, :cond_12

    return v1

    :cond_12
    return v0

    .line 2661
    :cond_13
    if-lez v2, :cond_14

    return v1

    :cond_14
    return v0

    .line 2663
    :cond_15
    if-gez p2, :cond_16

    return v1

    :cond_16
    return v0

    .line 2659
    :cond_17
    if-gez v2, :cond_18

    return v1

    :cond_18
    return v0

    .line 2618
    :cond_19
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    .line 3201
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3202
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3203
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 3206
    :cond_1
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 3515
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 3525
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->reset()V

    .line 3529
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    .line 3530
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->onItemsChanged$57043c5d()V

    .line 3536
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3537
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bk()V

    goto :goto_0

    .line 3539
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bn()V

    .line 3541
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3542
    :cond_2
    move v0, v1

    goto :goto_2

    .line 3541
    :cond_3
    :goto_1
    nop

    .line 3542
    move v0, v2

    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-boolean v4, v4, Landroid/support/v7/widget/af;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    .line 3548
    iget-boolean v4, v4, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Landroid/support/v7/widget/ax;->qJ:Z

    .line 3549
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v4, v4, Landroid/support/v7/widget/ax;->qJ:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_7

    .line 3552
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    nop

    :cond_7
    iput-boolean v1, v3, Landroid/support/v7/widget/ax;->qK:Z

    .line 3553
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    .line 2321
    nop

    .line 2322
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-gez v1, :cond_0

    .line 2323
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2324
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    sub-float p3, v2, p3

    invoke-static {v1, v4, p3}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    .line 2325
    nop

    .line 2332
    :goto_0
    move p3, v3

    goto :goto_1

    .line 2326
    :cond_0
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    .line 2327
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2328
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-static {v1, v4, p3}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    .line 2329
    goto :goto_0

    .line 2332
    :cond_1
    const/4 p3, 0x0

    :goto_1
    cmpg-float v1, p4, v0

    if-gez v1, :cond_2

    .line 2333
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2334
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p3, v1, p1}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    .line 2335
    goto :goto_2

    .line 2336
    :cond_2
    cmpl-float v1, p4, v0

    if-lez v1, :cond_3

    .line 2337
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2338
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v2, p1

    invoke-static {p3, v1, v2}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    .line 2339
    goto :goto_2

    .line 2342
    :cond_3
    move v3, p3

    :goto_2
    if-nez v3, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_4

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_5

    .line 2343
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 2345
    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 6

    .line 3673
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3674
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_a

    .line 3675
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3683
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3684
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3685
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    .line 3686
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3698
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 3701
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 3702
    return-void

    .line 3704
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3707
    return-void

    .line 3710
    :cond_3
    nop

    .line 3714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-wide v0, v0, Landroid/support/v7/widget/ax;->qM:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v0, v0, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v0, :cond_4

    .line 3715
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-wide v4, v0, Landroid/support/v7/widget/ax;->qM:J

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/aA;

    move-result-object v0

    goto :goto_0

    .line 3717
    :cond_4
    move-object v0, v1

    .line 3718
    :goto_0
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v5, v0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 3719
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 3732
    :cond_5
    iget-object v1, v0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    goto :goto_2

    .line 3720
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 3727
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    .line 3735
    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 3736
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v0, v0, Landroid/support/v7/widget/ax;->qN:I

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 3737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v0, v0, Landroid/support/v7/widget/ax;->qN:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3738
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3739
    goto :goto_3

    .line 3742
    :cond_8
    move-object v0, v1

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3744
    :cond_9
    return-void

    .line 3680
    :cond_a
    :goto_4
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .line 2348
    nop

    .line 2349
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2351
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 2353
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 2354
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2355
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2357
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 2358
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2359
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2361
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 2362
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2363
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2365
    :cond_3
    if-eqz v0, :cond_4

    .line 2366
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 2368
    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 2692
    if-eqz p2, :cond_0

    .line 2693
    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2698
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2699
    instance-of v1, v0, Landroid/support/v7/widget/aj;

    if-eqz v1, :cond_1

    .line 2701
    check-cast v0, Landroid/support/v7/widget/aj;

    .line 2702
    iget-boolean v1, v0, Landroid/support/v7/widget/aj;->qc:Z

    if-nez v1, :cond_1

    .line 2703
    iget-object v0, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 2704
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2705
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2706
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2707
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2711
    :cond_1
    if-eqz p2, :cond_2

    .line 2712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2713
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2715
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/af;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 2717
    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    .line 3631
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/support/v7/widget/ax;->qM:J

    .line 3632
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/ax;->qL:I

    .line 3633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput v1, v0, Landroid/support/v7/widget/ax;->qN:I

    .line 3634
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 3185
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3186
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3188
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3189
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 3190
    return-void
.end method

.method private saveFocusInfo()V
    .locals 4

    .line 3610
    nop

    .line 3611
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v0, :cond_0

    .line 3612
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3615
    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v1

    .line 3616
    :goto_1
    if-nez v1, :cond_2

    .line 3617
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    return-void

    .line 3619
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v2, v2, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v2, :cond_3

    iget-wide v2, v1, Landroid/support/v7/widget/aA;->mItemId:J

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    iput-wide v2, v0, Landroid/support/v7/widget/ax;->qM:J

    .line 3623
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_3

    .line 3624
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v7/widget/aA;->mOldPosition:I

    goto :goto_3

    .line 3625
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->getAdapterPosition()I

    move-result v2

    :goto_3
    iput v2, v0, Landroid/support/v7/widget/ax;->qL:I

    .line 3626
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v1, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ax;->qN:I

    .line 3628
    return-void
.end method

.method private scrollStep(II[I)V
    .locals 4

    .line 1774
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1775
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1777
    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/ax;)V

    .line 1780
    nop

    .line 1781
    nop

    .line 1782
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1783
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v7/widget/af;->scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    goto :goto_0

    .line 1785
    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 1786
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v1, p2, v2, v3}, Landroid/support/v7/widget/af;->scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p2

    goto :goto_1

    .line 1789
    :cond_1
    move p2, v0

    :goto_1
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 1790
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1792
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1793
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1795
    if-eqz p3, :cond_2

    .line 1796
    aput p1, p3, v0

    .line 1797
    const/4 p1, 0x1

    aput p2, p3, p1

    .line 1799
    :cond_2
    return-void
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/V;ZZ)V
    .locals 2

    .line 1146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/as;

    iget-object v0, v0, Landroid/support/v7/widget/V;->mObservable:Landroid/support/v7/widget/W;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/W;->unregisterObserver(Ljava/lang/Object;)V

    .line 1148
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 1151
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1153
    :cond_2
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {p3}, Landroid/support/v7/widget/a;->reset()V

    .line 1154
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    .line 1155
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    .line 1156
    if-eqz p1, :cond_3

    .line 1157
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/as;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/V;->registerAdapterDataObserver(Landroid/support/v7/widget/X;)V

    .line 1158
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {p1}, Landroid/support/v7/widget/aq;->clear()V

    invoke-virtual {p1}, Landroid/support/v7/widget/aq;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object p1

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->detach()V

    :cond_4
    if-nez p2, :cond_5

    iget p2, p1, Landroid/support/v7/widget/ao;->qf:I

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->clear()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->attach()V

    .line 1164
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/ax;->qF:Z

    .line 1165
    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 2292
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->stop()V

    .line 2293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->stopSmoothScroller()V

    .line 2296
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    .line 2394
    if-gez p1, :cond_0

    .line 2395
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2396
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2397
    :cond_0
    if-lez p1, :cond_1

    .line 2398
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2399
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2402
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 2403
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2404
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2405
    :cond_2
    if-lez p2, :cond_3

    .line 2406
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2410
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 2411
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 2413
    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0

    .line 2726
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2729
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/ae;)V
    .locals 1

    .line 1546
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/ae;I)V

    .line 1547
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/ae;I)V
    .locals 2

    .line 1517
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1521
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1524
    :cond_1
    if-gez p2, :cond_2

    .line 1525
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1527
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1529
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1530
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1531
    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/ak;)V
    .locals 1

    .line 1222
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1225
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/am;)V
    .locals 1

    .line 2862
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2863
    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/an;)V
    .locals 1

    .line 1655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1658
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    return-void
.end method

.method animateAppearance(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V
    .locals 1

    .line 4107
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 4108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/aa;->e(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4109
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 4111
    :cond_0
    return-void
.end method

.method animateDisappearance(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V
    .locals 1

    .line 4115
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/aA;)V

    .line 4116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 4117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/aa;->d(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4118
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 4120
    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 2813
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2814
    if-nez p1, :cond_0

    .line 2815
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2818
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2821
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .line 2831
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2832
    if-nez p1, :cond_0

    .line 2833
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2834
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2836
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2838
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    .line 2839
    const-string p1, "RecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2844
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2839
    invoke-static {p1, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2846
    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z
    .locals 2

    .line 4418
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    .line 4419
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 4418
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/widget/aA;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 4244
    instance-of v0, p1, Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    check-cast p1, Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->checkLayoutParams(Landroid/support/v7/widget/aj;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method clearOldPositions()V
    .locals 5

    .line 4298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4299
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4300
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 4301
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4302
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->clearOldPosition()V

    .line 4299
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4305
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v2, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Landroid/support/v7/widget/aq;->qk:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/aq;->ql:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aA;

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4306
    :cond_4
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 1246
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1249
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 1676
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1679
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1961
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1962
    return v1

    .line 1964
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->computeHorizontalScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1936
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1937
    return v1

    .line 1939
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->computeHorizontalScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1984
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1985
    return v1

    .line 1987
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->computeHorizontalScrollRange(Landroid/support/v7/widget/ax;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 2033
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2034
    return v1

    .line 2036
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->computeVerticalScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 2009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2010
    return v1

    .line 2012
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->computeVerticalScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 2056
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2057
    return v1

    .line 2059
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->computeVerticalScrollRange(Landroid/support/v7/widget/ax;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    .line 2371
    nop

    .line 2372
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 2373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2374
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 2376
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2377
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2378
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2380
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 2381
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2382
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2384
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 2385
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2386
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2388
    :cond_3
    if-eqz v0, :cond_4

    .line 2389
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 2391
    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .line 1810
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1816
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1817
    return-void

    .line 1822
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a;->K(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    const/16 v1, 0xb

    .line 1823
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a;->K(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1825
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1827
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1828
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bk()V

    .line 1829
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_3

    .line 1830
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 1834
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bl()V

    .line 1837
    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1838
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1839
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    return-void

    .line 1840
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1841
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1843
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 1845
    :cond_5
    return-void

    .line 1811
    :cond_6
    :goto_1
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1813
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 1814
    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 2

    .line 3356
    nop

    .line 3357
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3358
    invoke-static {p0}, Landroid/support/v4/view/n;->i(Landroid/view/View;)I

    move-result v1

    .line 3356
    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/af;->chooseSize(III)I

    move-result p1

    .line 3359
    nop

    .line 3360
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 3361
    invoke-static {p0}, Landroid/support/v4/view/n;->j(Landroid/view/View;)I

    move-result v1

    .line 3359
    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/af;->chooseSize(III)I

    move-result p2

    .line 3363
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3364
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 1

    .line 7217
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    .line 7218
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 7219
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 7223
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 7224
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 7225
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7224
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 7228
    :cond_0
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 1

    .line 7203
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    .line 7204
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 7205
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 7209
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 7210
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 7211
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7210
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 7214
    :cond_0
    return-void
.end method

.method dispatchLayout()V
    .locals 4

    .line 3581
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-nez v0, :cond_0

    .line 3582
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    return-void

    .line 3586
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_1

    .line 3587
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    return-void

    .line 3591
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->qI:Z

    .line 3592
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v0, v0, Landroid/support/v7/widget/ax;->qD:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3593
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3594
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/af;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3595
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 3596
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    iget-object v3, v0, Landroid/support/v7/widget/a;->nF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, v0, Landroid/support/v7/widget/a;->nE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    if-nez v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    .line 3597
    iget v0, v0, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 3604
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/af;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 3600
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/af;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3601
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3606
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3607
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 11277
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/h;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 11282
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 11265
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/h;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 11271
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/h;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    .line 11252
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/h;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .line 11259
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/h;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 1

    .line 4934
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 4935
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->onScrollStateChanged(I)V

    .line 4940
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4943
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 4947
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 4948
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4947
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 4951
    :cond_1
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 4894
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4897
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 4898
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 4899
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4902
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 4906
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/an;

    if-eqz p1, :cond_0

    .line 4907
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/an;

    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/an;->onScrolled$5927c743(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4909
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 4910
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 4911
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/an;

    invoke-virtual {v0, p0, p2}, Landroid/support/v7/widget/an;->onScrolled$5927c743(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4910
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 4914
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4915
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 11164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 11165
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aA;

    .line 11166
    iget-object v2, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 11167
    iget v2, v1, Landroid/support/v7/widget/aA;->mPendingAccessibilityState:I

    .line 11170
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 11172
    iget-object v4, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    .line 11173
    iput v3, v1, Landroid/support/v7/widget/aA;->mPendingAccessibilityState:I

    .line 11164
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11177
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11178
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1368
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1369
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1360
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1361
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 4173
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 4175
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4176
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4177
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ae;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ae;->onDrawOver$13fcd2ff$2854d342(Landroid/graphics/Canvas;)V

    .line 4176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4181
    :cond_0
    nop

    .line 4182
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4184
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    .line 4185
    :cond_1
    move v3, v1

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4186
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4187
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4188
    move v3, v2

    goto :goto_2

    .line 4187
    :cond_2
    nop

    .line 4188
    move v3, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 4190
    :cond_3
    move v3, v1

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4192
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_4

    .line 4193
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4195
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    .line 4196
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4198
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4200
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 4201
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_5

    .line 4202
    :cond_7
    move v5, v1

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4203
    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4204
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    or-int/2addr v3, v4

    .line 4205
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4207
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4209
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4210
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_a

    .line 4211
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 4213
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4215
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    nop

    :cond_b
    or-int/2addr v1, v3

    .line 4216
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    .line 4222
    :cond_c
    move v1, v3

    :goto_8
    if-nez v1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    .line 4223
    invoke-virtual {p1}, Landroid/support/v7/widget/aa;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 4224
    nop

    .line 4227
    move v1, v2

    :cond_d
    if-eqz v1, :cond_e

    .line 4228
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 4230
    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 4770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 2456
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2457
    return-void

    .line 2459
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/Z;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/Z;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2460
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2461
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2462
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2461
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    .line 2464
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2466
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 2416
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2417
    return-void

    .line 2419
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/Z;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/Z;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2420
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2422
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2421
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    .line 2424
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2426
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 2429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2430
    return-void

    .line 2432
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/Z;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/Z;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2433
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2434
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2435
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2434
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    .line 2437
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2439
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 2442
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2443
    return-void

    .line 2445
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/Z;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/Z;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2446
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2447
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2448
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2447
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    .line 2450
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2453
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final fillRemainingScrollValues(Landroid/support/v7/widget/ax;)V
    .locals 3

    .line 3759
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3760
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    invoke-static {v0}, Landroid/support/v7/widget/az;->a(Landroid/support/v7/widget/az;)Landroid/widget/OverScroller;

    move-result-object v0

    .line 3761
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/ax;->qO:I

    .line 3762
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/support/v7/widget/ax;->qP:I

    .line 3763
    return-void

    .line 3764
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v7/widget/ax;->qO:I

    .line 3765
    iput v0, p1, Landroid/support/v7/widget/ax;->qP:I

    .line 3767
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    .line 4753
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 4754
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4755
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4756
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 4757
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 4758
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 4759
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    .line 4760
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 4761
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 4762
    return-object v1

    .line 4754
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4765
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 4536
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4537
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4538
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4539
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4541
    :cond_0
    if-ne v0, p0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;
    .locals 0

    .line 4554
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 4555
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/aA;
    .locals 5

    .line 4665
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4666
    return-object v1

    .line 4668
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4670
    nop

    .line 4671
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4672
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 4673
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4674
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/aA;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4675
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v4, v3, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4676
    nop

    .line 4671
    move-object v1, v3

    goto :goto_1

    .line 4678
    :cond_1
    return-object v3

    .line 4671
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4682
    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/aA;
    .locals 6

    .line 4726
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v0, v0, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 4729
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4730
    nop

    .line 4731
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4732
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 4733
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, v3, Landroid/support/v7/widget/aA;->mItemId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 4734
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v4, v3, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4735
    nop

    .line 4731
    move-object v1, v3

    goto :goto_1

    .line 4737
    :cond_1
    return-object v3

    .line 4731
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4741
    :cond_3
    return-object v1

    .line 4727
    :cond_4
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/aA;
    .locals 1

    .line 4644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/aA;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/aA;
    .locals 1

    .line 4621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/aA;

    move-result-object p1

    return-object p1
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/aA;
    .locals 5

    .line 4686
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4687
    nop

    .line 4688
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 4689
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 4690
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4691
    if-eqz p2, :cond_0

    .line 4692
    iget v4, v3, Landroid/support/v7/widget/aA;->mPosition:I

    if-eq v4, p1, :cond_1

    .line 4693
    goto :goto_1

    .line 4695
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 4696
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v4, v3, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/d;->O(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4699
    nop

    .line 4688
    move-object v1, v3

    goto :goto_1

    .line 4701
    :cond_2
    return-object v3

    .line 4688
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4708
    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 18

    move-object/from16 v0, p0

    .line 2229
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2230
    const-string v0, "RecyclerView"

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    return v2

    .line 2234
    :cond_0
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_1

    .line 2235
    return v2

    .line 2238
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v1

    .line 2239
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v3}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v3

    .line 2241
    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v4, v5, :cond_2

    goto :goto_0

    .line 2244
    :cond_2
    move/from16 v4, p1

    goto :goto_1

    .line 2242
    :cond_3
    :goto_0
    nop

    .line 2244
    move v4, v2

    :goto_1
    if-eqz v3, :cond_5

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_4

    goto :goto_2

    .line 2247
    :cond_4
    move/from16 v5, p2

    goto :goto_3

    .line 2245
    :cond_5
    :goto_2
    nop

    .line 2247
    move v5, v2

    :goto_3
    if-nez v4, :cond_6

    if-nez v5, :cond_6

    .line 2249
    return v2

    .line 2252
    :cond_6
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v0, v6, v7}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2253
    const/4 v8, 0x1

    if-nez v1, :cond_8

    if-eqz v3, :cond_7

    goto :goto_4

    .line 2254
    :cond_7
    move v9, v2

    goto :goto_5

    .line 2253
    :cond_8
    :goto_4
    nop

    .line 2254
    move v9, v8

    :goto_5
    invoke-virtual {v0, v6, v7, v9}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2256
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/al;

    if-eqz v6, :cond_9

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/al;

    invoke-virtual {v6}, Landroid/support/v7/widget/al;->bG()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2257
    return v8

    .line 2260
    :cond_9
    if-eqz v9, :cond_c

    .line 2261
    nop

    .line 2262
    if-eqz v1, :cond_a

    .line 2263
    nop

    .line 2265
    move v1, v8

    goto :goto_6

    :cond_a
    move v1, v2

    :goto_6
    if-eqz v3, :cond_b

    .line 2266
    or-int/lit8 v1, v1, 0x2

    .line 2268
    :cond_b
    invoke-virtual {v0, v1, v8}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2270
    iget v1, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2271
    iget v1, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2272
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    iget-object v1, v0, Landroid/support/v7/widget/az;->pT:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iput v2, v0, Landroid/support/v7/widget/az;->qR:I

    iput v2, v0, Landroid/support/v7/widget/az;->qQ:I

    iget-object v9, v0, Landroid/support/v7/widget/az;->ms:Landroid/widget/OverScroller;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v14, -0x80000000

    const v15, 0x7fffffff

    const/high16 v16, -0x80000000

    const v17, 0x7fffffff

    invoke-virtual/range {v9 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->bL()V

    .line 2273
    return v8

    .line 2276
    :cond_c
    return v2
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 2531
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 2536
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 2538
    move v0, v1

    goto :goto_0

    .line 2536
    :cond_0
    nop

    .line 2538
    move v0, v2

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    .line 2539
    const/4 v4, 0x0

    if-eqz v0, :cond_d

    const/4 v5, 0x2

    if-eq p2, v5, :cond_1

    if-ne p2, v1, :cond_d

    .line 2543
    :cond_1
    nop

    .line 2544
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2545
    if-ne p2, v5, :cond_2

    const/16 v0, 0x82

    goto :goto_1

    :cond_2
    const/16 v0, 0x21

    .line 2547
    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2548
    if-nez v6, :cond_3

    .line 2549
    move v6, v1

    goto :goto_2

    .line 2548
    :cond_3
    nop

    .line 2549
    move v6, v2

    :goto_2
    sget-boolean v7, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v7, :cond_5

    .line 2551
    nop

    .line 2554
    move p2, v0

    goto :goto_3

    :cond_4
    move v6, v2

    :cond_5
    :goto_3
    if-nez v6, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v0, v0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 2556
    move v0, v1

    goto :goto_4

    .line 2555
    :cond_6
    nop

    .line 2556
    move v0, v2

    :goto_4
    if-ne p2, v5, :cond_7

    move v5, v1

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    xor-int/2addr v0, v5

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    goto :goto_6

    :cond_8
    const/16 v0, 0x11

    .line 2558
    :goto_6
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2559
    if-nez v5, :cond_9

    .line 2560
    move v6, v1

    goto :goto_7

    .line 2559
    :cond_9
    nop

    .line 2560
    move v6, v2

    :goto_7
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v1, :cond_a

    .line 2562
    nop

    .line 2565
    move p2, v0

    :cond_a
    if-eqz v6, :cond_c

    .line 2566
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2567
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2568
    if-nez v0, :cond_b

    .line 2570
    return-object v4

    .line 2572
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, p1, p2, v1, v5}, Landroid/support/v7/widget/af;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;

    .line 2574
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2576
    :cond_c
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2577
    goto :goto_8

    .line 2578
    :cond_d
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2579
    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    .line 2580
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2581
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2582
    if-nez v0, :cond_e

    .line 2584
    return-object v4

    .line 2586
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2587
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/support/v7/widget/af;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;

    move-result-object v0

    .line 2588
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_8

    .line 2591
    :cond_f
    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_11

    .line 2592
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    .line 2595
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2601
    :cond_10
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2602
    return-object p1

    .line 2604
    :cond_11
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    .line 2605
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 4249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 4252
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->generateDefaultLayoutParams()Landroid/support/v7/widget/aj;

    move-result-object v0

    return-object v0

    .line 4250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4257
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 4260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/af;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/aj;

    move-result-object p1

    return-object p1

    .line 4258
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4265
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 4268
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aj;

    move-result-object p1

    return-object p1

    .line 4266
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroid/support/v7/widget/V;
    .locals 1

    .line 1175
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    return-object v0
.end method

.method getAdapterPositionFor(Landroid/support/v7/widget/aA;)I
    .locals 7

    .line 11181
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_7

    .line 11183
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 11186
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    iget p1, p1, Landroid/support/v7/widget/aA;->mPosition:I

    iget-object v2, v0, Landroid/support/v7/widget/a;->nE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    iget-object v4, v0, Landroid/support/v7/widget/a;->nE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/c;

    iget v5, v4, Landroid/support/v7/widget/c;->cG:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v5, v4, Landroid/support/v7/widget/c;->nL:I

    if-gt v5, p1, :cond_5

    iget v5, v4, Landroid/support/v7/widget/c;->nL:I

    iget v6, v4, Landroid/support/v7/widget/c;->nN:I

    add-int/2addr v5, v6

    if-le v5, p1, :cond_1

    return v1

    :cond_1
    iget v4, v4, Landroid/support/v7/widget/c;->nN:I

    sub-int/2addr p1, v4

    goto :goto_1

    :pswitch_1
    iget v5, v4, Landroid/support/v7/widget/c;->nL:I

    if-gt v5, p1, :cond_5

    iget v4, v4, Landroid/support/v7/widget/c;->nN:I

    add-int/2addr p1, v4

    goto :goto_1

    :cond_2
    iget v5, v4, Landroid/support/v7/widget/c;->nL:I

    if-ne v5, p1, :cond_3

    iget p1, v4, Landroid/support/v7/widget/c;->nN:I

    goto :goto_1

    :cond_3
    iget v5, v4, Landroid/support/v7/widget/c;->nL:I

    if-ge v5, p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    iget v4, v4, Landroid/support/v7/widget/c;->nN:I

    if-gt v4, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return p1

    .line 11184
    :cond_7
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBaseline()I
    .locals 1

    .line 1202
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 1203
    const/4 v0, -0x1

    return v0

    .line 1205
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/aA;)J
    .locals 2

    .line 4102
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v0, v0, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroid/support/v7/widget/aA;->mItemId:J

    return-wide v0

    :cond_0
    iget p1, p1, Landroid/support/v7/widget/aA;->mPosition:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    .line 4582
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 4583
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->getAdapterPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 13151
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/Y;

    if-nez v0, :cond_0

    .line 13152
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    .line 13154
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/Y;

    invoke-interface {p1}, Landroid/support/v7/widget/Y;->bC()I

    move-result p1

    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    .line 4608
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v0, v0, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4611
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 4612
    if-eqz p1, :cond_1

    iget-wide v0, p1, Landroid/support/v7/widget/aA;->mItemId:J

    return-wide v0

    :cond_1
    return-wide v1

    .line 4609
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    .line 4597
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 4598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0

    .line 4572
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;
    .locals 3

    .line 4513
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4514
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 4515
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4518
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    return-object p1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1048
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/aB;
    .locals 1

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/aB;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 4832
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4833
    return-void
.end method

.method public getEdgeEffectFactory()Landroid/support/v7/widget/Z;
    .locals 1

    .line 2496
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/Z;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/aa;
    .locals 1

    .line 3500
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .line 4845
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 4846
    iget-boolean v1, v0, Landroid/support/v7/widget/aj;->qc:Z

    if-nez v1, :cond_0

    .line 4847
    iget-object p1, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    return-object p1

    .line 4850
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v1, v1, Landroid/support/v7/widget/ax;->qG:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4852
    :cond_1
    iget-object p1, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    return-object p1

    .line 4854
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 4855
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4856
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4857
    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 4858
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4859
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/aj;

    iget-object v6, v6, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4860
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4861
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4862
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4863
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 4857
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4865
    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/widget/aj;->qc:Z

    .line 4866
    return-object v1
.end method

.method public getItemDecorationAt(I)Landroid/support/v7/widget/ae;
    .locals 3

    .line 1558
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    .line 1559
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1563
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ae;

    return-object p1

    .line 1560
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/af;
    .locals 1

    .line 1423
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 2314
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 2304
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .line 5567
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    .line 5568
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 5570
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/al;
    .locals 1

    .line 1324
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/al;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 4485
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/ao;
    .locals 1

    .line 1436
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1484
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .line 1019
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .line 11241
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/h;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 11246
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/h;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .line 4967
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    .line 4968
    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bm()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method initAdapterManager()V
    .locals 2

    .line 917
    new-instance v0, Landroid/support/v7/widget/a;

    new-instance v1, Landroid/support/v7/widget/U;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/U;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/a;-><init>(Landroid/support/v7/widget/b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    .line 997
    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 11193
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 11199
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11200
    new-instance v1, Landroid/support/v7/widget/r;

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 11202
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 11203
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_margin:I

    .line 11204
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 11205
    return-void

    .line 11195
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11196
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method invalidateGlows()V
    .locals 1

    .line 2469
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2470
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 4462
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4463
    return-void

    .line 4465
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_1

    .line 4466
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4469
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4470
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4471
    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .line 3421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 4280
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 2802
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .line 3455
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .line 2174
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 11216
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v4/view/h;->jX:Z

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    .line 1704
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_0

    .line 1705
    return-void

    .line 1707
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->scrollToPosition(I)V

    .line 1708
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1709
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .line 4163
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4164
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 4165
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v4

    .line 4166
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aj;

    iput-boolean v3, v4, Landroid/support/v7/widget/aj;->qc:Z

    .line 4164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4168
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v2, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v4, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    iget-object v4, v4, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aj;

    if-eqz v4, :cond_1

    iput-boolean v3, v4, Landroid/support/v7/widget/aj;->qc:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4169
    :cond_2
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    .line 4446
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4447
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v0, :cond_1

    .line 4448
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v4

    .line 4449
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4450
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 4447
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4453
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4454
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v2, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aA;->addFlags(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/aA;->addChangePayload(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v1, v1, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->bI()V

    .line 4455
    :cond_5
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    .line 4818
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 4819
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4820
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4819
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4822
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    .line 4780
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 4781
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4782
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4784
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 6

    .line 4343
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4344
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 4345
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v4

    .line 4346
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v5, p1, :cond_0

    .line 4351
    invoke-virtual {v4, p2, v1}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    .line 4352
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v3, v4, Landroid/support/v7/widget/ax;->qF:Z

    .line 4344
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4355
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v2, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    if-eqz v4, :cond_2

    iget v5, v4, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v5, p1, :cond_2

    invoke-virtual {v4, p2, v3}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4356
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4357
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 10

    .line 4309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4311
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ge p1, p2, :cond_0

    .line 4312
    nop

    .line 4313
    nop

    .line 4314
    nop

    .line 4321
    move v3, p1

    move v4, p2

    move v5, v1

    goto :goto_0

    .line 4316
    :cond_0
    nop

    .line 4317
    nop

    .line 4318
    nop

    .line 4321
    move v4, p1

    move v3, p2

    move v5, v2

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_3

    .line 4322
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v8

    .line 4323
    if-eqz v8, :cond_2

    iget v9, v8, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v9, v3, :cond_2

    iget v9, v8, Landroid/support/v7/widget/aA;->mPosition:I

    if-gt v9, v4, :cond_2

    .line 4324
    iget v9, v8, Landroid/support/v7/widget/aA;->mPosition:I

    if-ne v9, p1, :cond_1

    .line 4331
    sub-int v9, p2, p1

    invoke-virtual {v8, v9, v6}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    goto :goto_2

    .line 4333
    :cond_1
    invoke-virtual {v8, v5, v6}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    .line 4336
    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v2, v8, Landroid/support/v7/widget/ax;->qF:Z

    .line 4321
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4338
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    if-ge p1, p2, :cond_4

    move v2, p2

    move v3, v1

    move v1, p1

    goto :goto_3

    :cond_4
    move v1, p2

    move v3, v2

    move v2, p1

    :goto_3
    iget-object v4, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v6

    :goto_4
    if-ge v5, v4, :cond_7

    iget-object v7, v0, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/aA;

    if-eqz v7, :cond_6

    iget v8, v7, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v8, v1, :cond_6

    iget v8, v7, Landroid/support/v7/widget/aA;->mPosition:I

    if-gt v8, v2, :cond_6

    iget v8, v7, Landroid/support/v7/widget/aA;->mPosition:I

    if-ne v8, p1, :cond_5

    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v6}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    goto :goto_5

    :cond_5
    invoke-virtual {v7, v3, v6}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4339
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4340
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 8

    .line 4361
    add-int v0, p1, p2

    .line 4362
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v1}, Landroid/support/v7/widget/d;->bo()I

    move-result v1

    .line 4363
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    .line 4364
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 4365
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4366
    iget v6, v5, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v6, v0, :cond_0

    .line 4372
    neg-int v3, p2

    invoke-virtual {v5, v3, p3}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    .line 4373
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v4, v3, Landroid/support/v7/widget/ax;->qF:Z

    goto :goto_1

    .line 4374
    :cond_0
    iget v6, v5, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v6, p1, :cond_1

    .line 4379
    add-int/lit8 v6, p1, -0x1

    neg-int v7, p2

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/aA;->addFlags(I)V

    invoke-virtual {v5, v7, p3}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    iput v6, v5, Landroid/support/v7/widget/aA;->mPosition:I

    .line 4381
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v4, v3, Landroid/support/v7/widget/ax;->qF:Z

    .line 4363
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4385
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v2, v1, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, v1, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    if-eqz v4, :cond_4

    iget v5, v4, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v5, v0, :cond_3

    neg-int v5, p2

    invoke-virtual {v4, v5, p3}, Landroid/support/v7/widget/aA;->offsetPosition(IZ)V

    goto :goto_3

    :cond_3
    iget v5, v4, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v5, p1, :cond_4

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aA;->addFlags(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/aq;->Y(I)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4386
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4387
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 2743
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2744
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2745
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2746
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2747
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v2, :cond_1

    .line 2748
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iput-boolean v1, v2, Landroid/support/v7/widget/af;->mIsAttachedToWindow:Z

    .line 2750
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2752
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    .line 2754
    sget-object v0, Landroid/support/v7/widget/w;->oZ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/w;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    .line 2755
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    if-nez v0, :cond_3

    .line 2756
    new-instance v0, Landroid/support/v7/widget/w;

    invoke-direct {v0}, Landroid/support/v7/widget/w;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    .line 2760
    invoke-static {p0}, Landroid/support/v4/view/n;->v(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 2761
    const/high16 v1, 0x42700000    # 60.0f

    .line 2762
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 2763
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 2764
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    .line 2765
    goto :goto_1

    .line 2768
    :cond_2
    move v0, v1

    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Landroid/support/v7/widget/w;->pc:J

    .line 2769
    sget-object v0, Landroid/support/v7/widget/w;->oZ:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2771
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    iget-object v0, v0, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2773
    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 4797
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 4809
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2777
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    .line 2779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->bs()V

    .line 2781
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2782
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_1

    .line 2784
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/af;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V

    .line 2786
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2788
    invoke-static {}, Landroid/support/v7/widget/aO;->cb()V

    .line 2790
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    if-eqz v0, :cond_2

    .line 2792
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    iget-object v0, v0, Landroid/support/v7/widget/w;->pa:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2793
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    .line 2795
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 4234
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4237
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4238
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ae;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ae;->onDraw$13fcd2ff$2854d342(Landroid/graphics/Canvas;)V

    .line 4237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4240
    :cond_0
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .line 3398
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3399
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    .line 3402
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 3403
    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 1

    .line 3406
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3407
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-gtz v0, :cond_0

    .line 3412
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3413
    if-eqz p1, :cond_0

    .line 3414
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3415
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3418
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 3210
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3211
    return v1

    .line 3213
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 3214
    return v1

    .line 3216
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    .line 3218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3219
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3222
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 3224
    :cond_2
    nop

    .line 3226
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v3}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3227
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_3

    .line 3229
    :cond_3
    goto :goto_1

    .line 3231
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 3232
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3233
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v3}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3236
    neg-float v0, v0

    .line 3237
    nop

    .line 3250
    :goto_1
    move v3, v2

    goto :goto_3

    .line 3238
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v3}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3239
    nop

    .line 3240
    nop

    .line 3250
    move v3, v0

    move v0, v2

    goto :goto_3

    .line 3242
    :cond_6
    nop

    .line 3243
    nop

    .line 3245
    goto :goto_2

    .line 3246
    :cond_7
    nop

    .line 3247
    nop

    .line 3250
    :goto_2
    move v0, v2

    move v3, v0

    :goto_3
    cmpl-float v4, v0, v2

    if-nez v4, :cond_8

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_9

    .line 3251
    :cond_8
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 3255
    :cond_9
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2927
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2930
    return v1

    .line 2932
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2933
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2934
    return v2

    .line 2937
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_2

    .line 2938
    return v1

    .line 2941
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    .line 2942
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v3}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v3

    .line 2944
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 2945
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2947
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2949
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 2950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2952
    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 3014
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 3015
    goto/16 :goto_2

    .line 2980
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2981
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2982
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2983
    goto/16 :goto_2

    .line 3023
    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_2

    .line 2986
    :pswitch_4
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2987
    if-gez v4, :cond_4

    .line 2988
    const-string p1, "RecyclerView"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    return v1

    .line 2993
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 2994
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    .line 2995
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v4, v2, :cond_7

    .line 2996
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v4, v5, v4

    .line 2997
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, p1, v6

    .line 2998
    nop

    .line 2999
    if-eqz v0, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v4, :cond_5

    .line 3000
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 3001
    nop

    .line 3003
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    if-eqz v3, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_6

    .line 3004
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 3005
    nop

    .line 3007
    move v0, v2

    :cond_6
    if-eqz v0, :cond_7

    .line 3008
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3011
    :cond_7
    goto :goto_2

    .line 3018
    :pswitch_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 3019
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3020
    goto :goto_2

    .line 2954
    :pswitch_6
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_8

    .line 2955
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2957
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2961
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_9

    .line 2962
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2963
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2967
    :cond_9
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v4, v2

    aput v1, p1, v1

    .line 2969
    nop

    .line 2970
    if-eqz v0, :cond_a

    .line 2971
    nop

    .line 2973
    move p1, v2

    goto :goto_1

    :cond_a
    move p1, v1

    :goto_1
    if-eqz v3, :cond_b

    .line 2974
    or-int/lit8 p1, p1, 0x2

    .line 2976
    :cond_b
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2977
    nop

    .line 3026
    :goto_2
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v2, :cond_c

    return v2

    :cond_c
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4147
    const-string p1, "RV OnLayout"

    invoke-static {p1}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 4149
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    .line 4150
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 4151
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 3260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_0

    .line 3261
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3262
    return-void

    .line 3264
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 3265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3266
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3275
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v4, p1, p2}, Landroid/support/v7/widget/af;->onMeasure$19b62fcb(II)V

    .line 3277
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    .line 3279
    move v2, v1

    goto :goto_0

    .line 3277
    :cond_1
    nop

    .line 3279
    :goto_0
    if-nez v2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-nez v0, :cond_2

    goto :goto_1

    .line 3283
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v0, v0, Landroid/support/v7/widget/ax;->qD:I

    if-ne v0, v1, :cond_3

    .line 3284
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3288
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/af;->setMeasureSpecs(II)V

    .line 3289
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->qI:Z

    .line 3290
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/af;->setMeasuredDimensionFromChildren(II)V

    .line 3297
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    .line 3299
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3300
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3298
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/af;->setMeasureSpecs(II)V

    .line 3301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->qI:Z

    .line 3302
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/af;->setMeasuredDimensionFromChildren(II)V

    .line 3306
    :cond_4
    return-void

    .line 3280
    :cond_5
    :goto_1
    return-void

    .line 3307
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    .line 3308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/af;->onMeasure$19b62fcb(II)V

    .line 3309
    return-void

    .line 3312
    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    .line 3313
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3314
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3315
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3316
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3318
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qK:Z

    if-eqz v0, :cond_8

    .line 3319
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->qG:Z

    goto :goto_2

    .line 3322
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->bn()V

    .line 3323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v2, v0, Landroid/support/v7/widget/ax;->qG:Z

    .line 3325
    :goto_2
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3326
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_3

    .line 3327
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qK:Z

    if-eqz v0, :cond_a

    .line 3333
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3334
    return-void

    .line 3337
    :cond_a
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v0, :cond_b

    .line 3338
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ax;->qE:I

    goto :goto_4

    .line 3340
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput v2, v0, Landroid/support/v7/widget/ax;->qE:I

    .line 3342
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3343
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/af;->onMeasure$19b62fcb(II)V

    .line 3344
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3345
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iput-boolean v2, p1, Landroid/support/v7/widget/ax;->qG:Z

    .line 3347
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 2733
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    const/4 p1, 0x0

    return p1

    .line 2738
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1343
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 1344
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1345
    return-void

    .line 1348
    :cond_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1349
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object p1, p1, Landroid/support/v4/view/AbsSavedState;->jR:Landroid/os/Parcelable;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1350
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$SavedState;->qs:Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 1351
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->qs:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/af;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1353
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1329
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1330
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1331
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->qs:Landroid/os/Parcelable;

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->qs:Landroid/os/Parcelable;

    goto :goto_0

    .line 1332
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v1, :cond_1

    .line 1333
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->qs:Landroid/os/Parcelable;

    goto :goto_0

    .line 1335
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->qs:Landroid/os/Parcelable;

    .line 1338
    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 4929
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 4891
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 3368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3369
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 3370
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 3373
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 3041
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 3044
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3045
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 3046
    return v2

    .line 3049
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_2

    .line 3050
    return v1

    .line 3053
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    .line 3054
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v3}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v3

    .line 3056
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 3057
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3059
    :cond_3
    nop

    .line 3061
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 3062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 3063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 3065
    if-nez v5, :cond_4

    .line 3066
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v8, v2

    aput v1, v7, v1

    .line 3068
    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3070
    const/high16 v7, 0x3f000000    # 0.5f

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 3154
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 3155
    goto/16 :goto_8

    .line 3087
    :pswitch_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3088
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3089
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 3090
    goto/16 :goto_8

    .line 3172
    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_8

    .line 3093
    :pswitch_4
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 3094
    if-gez v5, :cond_5

    .line 3095
    const-string p1, "RecyclerView"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    return v1

    .line 3100
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 3101
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 3102
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v5, v6

    .line 3103
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int v13, v7, p1

    .line 3105
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3106
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v7, v7, v1

    sub-int/2addr v5, v7

    .line 3107
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v7, v7, v2

    sub-int/2addr v13, v7

    .line 3108
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3110
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v7, v1

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v9, v1

    add-int/2addr v8, v9

    aput v8, v7, v1

    .line 3111
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v7, v2

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v9, v2

    add-int/2addr v8, v9

    aput v8, v7, v2

    .line 3114
    :cond_6
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v7, v2, :cond_b

    .line 3115
    nop

    .line 3116
    if-eqz v0, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v7, v8, :cond_8

    .line 3117
    if-lez v5, :cond_7

    .line 3118
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v5, v7

    goto :goto_0

    .line 3120
    :cond_7
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v5, v7

    .line 3122
    :goto_0
    nop

    .line 3124
    move v7, v2

    goto :goto_1

    :cond_8
    move v7, v1

    :goto_1
    if-eqz v3, :cond_a

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_a

    .line 3125
    if-lez v13, :cond_9

    .line 3126
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v13, v7

    goto :goto_2

    .line 3128
    :cond_9
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v13, v7

    .line 3130
    :goto_2
    nop

    .line 3132
    move v7, v2

    :cond_a
    if-eqz v7, :cond_b

    .line 3133
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3137
    :cond_b
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v7, v2, :cond_10

    .line 3138
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 3139
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v6, v6, v2

    sub-int/2addr p1, v6

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 3141
    if-eqz v0, :cond_c

    move p1, v5

    goto :goto_3

    :cond_c
    move p1, v1

    :goto_3
    if-eqz v3, :cond_d

    move v0, v13

    goto :goto_4

    :cond_d
    move v0, v1

    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3145
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3147
    :cond_e
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    if-eqz p1, :cond_10

    if-nez v5, :cond_f

    if-eqz v13, :cond_10

    .line 3148
    :cond_f
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/w;

    invoke-virtual {p1, p0, v5, v13}, Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3151
    :cond_10
    goto/16 :goto_8

    .line 3158
    :pswitch_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3159
    nop

    .line 3160
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3161
    const/4 p1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3162
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_5

    .line 3163
    :cond_11
    move v0, p1

    :goto_5
    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3164
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_6

    .line 3165
    :cond_12
    move v3, p1

    :goto_6
    cmpl-float v5, v0, p1

    if-nez v5, :cond_13

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_14

    :cond_13
    float-to-int p1, v0

    float-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_15

    .line 3166
    :cond_14
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3168
    :cond_15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 3169
    nop

    .line 3176
    move v1, v2

    goto :goto_8

    .line 3072
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3073
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3074
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 3076
    nop

    .line 3077
    if-eqz v0, :cond_16

    .line 3078
    nop

    .line 3080
    move p1, v2

    goto :goto_7

    :cond_16
    move p1, v1

    :goto_7
    if-eqz v3, :cond_17

    .line 3081
    or-int/lit8 p1, p1, 0x2

    .line 3083
    :cond_17
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 3084
    nop

    .line 3176
    :goto_8
    if-nez v1, :cond_18

    .line 3177
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3179
    :cond_18
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 3181
    return v2

    .line 3042
    :cond_19
    :goto_9
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .line 3508
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3509
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/n;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3512
    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 1

    .line 4436
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 4437
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4438
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4439
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V
    .locals 3

    .line 4035
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/aA;->setFlags(II)V

    .line 4036
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->qH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4037
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4038
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/aA;)J

    move-result-wide v0

    .line 4039
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/aN;->a(JLandroid/support/v7/widget/aA;)V

    .line 4041
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/aN;->a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V

    .line 4042
    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .line 1120
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->bs()V

    .line 1127
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V

    .line 1129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->removeAndRecycleScrapInt(Landroid/support/v7/widget/aq;)V

    .line 1132
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->clear()V

    .line 1133
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 4

    .line 1400
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1401
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v1, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/f;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->N(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/e;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/e;->P(I)Z

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->N(Landroid/view/View;)Z

    iget-object v0, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/f;->removeViewAt(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1402
    :goto_0
    if-eqz v2, :cond_2

    .line 1403
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 1404
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aq;->m(Landroid/support/v7/widget/aA;)V

    .line 1405
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    .line 1411
    :cond_2
    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1412
    return v2
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 4078
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 4079
    if-eqz v0, :cond_2

    .line 4080
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4081
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->clearTmpDetachFlag()V

    goto :goto_0

    .line 4082
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4083
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4084
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4091
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4093
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 4094
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 4095
    return-void
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/ae;)V
    .locals 2

    .line 1599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1603
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1604
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1605
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1607
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1608
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1609
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 3

    .line 1581
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    .line 1582
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1586
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationAt(I)Landroid/support/v7/widget/ae;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/ae;)V

    .line 1587
    return-void

    .line 1583
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/ak;)V
    .locals 1

    .line 1235
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1236
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1239
    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/am;)V
    .locals 1

    .line 2871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    if-ne v0, p1, :cond_0

    .line 2873
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/am;

    .line 2875
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/an;)V
    .locals 1

    .line 1667
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1670
    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 7

    .line 5208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    .line 5209
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5210
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5211
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 5212
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/aA;->mShadowingHolder:Landroid/support/v7/widget/aA;

    if-eqz v4, :cond_1

    .line 5213
    iget-object v3, v3, Landroid/support/v7/widget/aA;->mShadowingHolder:Landroid/support/v7/widget/aA;

    iget-object v3, v3, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 5214
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 5215
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5216
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 5217
    :cond_0
    nop

    .line 5218
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 5219
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 5217
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 5209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5223
    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 2676
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2677
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2679
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2680
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 2721
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/af;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 3031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3032
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3033
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3034
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3036
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 3037
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 4155
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 4156
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    .line 4158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 4160
    return-void
.end method

.method saveOldPositions()V
    .locals 5

    .line 4284
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4285
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4286
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v2

    .line 4291
    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4292
    iget v3, v2, Landroid/support/v7/widget/aA;->mOldPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/support/v7/widget/aA;->mPosition:I

    iput v3, v2, Landroid/support/v7/widget/aA;->mOldPosition:I

    .line 4285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4295
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_0

    .line 1747
    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    return-void

    .line 1751
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 1752
    return-void

    .line 1754
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    .line 1755
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v1

    .line 1756
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 1757
    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 1759
    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 1876
    move-object/from16 v10, p3

    .line 1877
    nop

    .line 1879
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1880
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    invoke-direct {v7, v8, v9, v0}, Landroid/support/v7/widget/RecyclerView;->scrollStep(II[I)V

    .line 1882
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    aget v0, v0, v12

    .line 1883
    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollStepConsumed:[I

    aget v1, v1, v11

    .line 1884
    sub-int v2, v8, v0

    .line 1885
    sub-int v3, v9, v1

    .line 1887
    move v13, v0

    move v14, v1

    move v15, v2

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    :goto_0
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1888
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1891
    :cond_1
    iget-object v5, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/16 v16, 0x0

    move-object v0, v7

    move v1, v13

    move v2, v14

    move v3, v15

    move v4, v6

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1894
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v12

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1895
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v11

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1896
    if-eqz v10, :cond_2

    .line 1897
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v12

    int-to-float v0, v0

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1899
    :cond_2
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v12

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    aput v1, v0, v12

    .line 1900
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v11

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    goto :goto_2

    .line 1901
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1902
    if-eqz v10, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    move v0, v11

    goto :goto_1

    :cond_4
    move v0, v12

    :goto_1
    if-nez v0, :cond_5

    .line 1903
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move/from16 v3, v17

    int-to-float v3, v3

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1905
    :cond_5
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 1907
    :cond_6
    :goto_2
    if-nez v13, :cond_7

    if-eqz v14, :cond_8

    .line 1908
    :cond_7
    invoke-virtual {v7, v13, v14}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1910
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1911
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1913
    :cond_9
    if-nez v13, :cond_b

    if-eqz v14, :cond_a

    goto :goto_3

    :cond_a
    return v12

    :cond_b
    :goto_3
    return v11
.end method

.method public scrollTo(II)V
    .locals 0

    .line 1740
    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1690
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1691
    return-void

    .line 1693
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_1

    .line 1695
    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    return-void

    .line 1699
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->scrollToPosition(I)V

    .line 1700
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1701
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3483
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3484
    return-void

    .line 3486
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3487
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/aB;)V
    .locals 0

    .line 723
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/aB;

    .line 724
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/aB;

    invoke-static {p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 725
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/V;)V
    .locals 2

    .line 1109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1110
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/V;ZZ)V

    .line 1111
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1112
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1113
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/Y;)V
    .locals 1

    .line 1625
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/Y;

    if-ne p1, v0, :cond_0

    .line 1626
    return-void

    .line 1628
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/Y;

    .line 1629
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/Y;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1630
    return-void
.end method

.method setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/aA;I)Z
    .locals 1

    .line 11154
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11155
    iput p2, p1, Landroid/support/v7/widget/aA;->mPendingAccessibilityState:I

    .line 11156
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11157
    const/4 p1, 0x0

    return p1

    .line 11159
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    .line 11160
    const/4 p1, 0x1

    return p1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1024
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 1027
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 1028
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1029
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    .line 1030
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1032
    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroid/support/v7/widget/Z;)V
    .locals 0

    .line 2482
    if-eqz p1, :cond_0

    .line 2483
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mEdgeEffectFactory:Landroid/support/v7/widget/Z;

    .line 2484
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 2485
    return-void

    .line 2482
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1011
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 1012
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/aa;)V
    .locals 2

    .line 3387
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    .line 3388
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->bs()V

    .line 3389
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/aa;->pU:Landroid/support/v7/widget/ab;

    .line 3391
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    .line 3392
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz p1, :cond_1

    .line 3393
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/ab;

    iput-object v0, p1, Landroid/support/v7/widget/aa;->pU:Landroid/support/v7/widget/ab;

    .line 3395
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1474
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iput p1, v0, Landroid/support/v7/widget/aq;->qo:I

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->bH()V

    .line 1475
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .line 2147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    .line 2148
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2149
    if-nez p1, :cond_1

    .line 2150
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2151
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v0, :cond_0

    .line 2152
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2154
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    return-void

    .line 2156
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2157
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2159
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2160
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2161
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2162
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2165
    :cond_2
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/af;)V
    .locals 5

    .line 1264
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-ne p1, v0, :cond_0

    .line 1265
    return-void

    .line 1267
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_3

    .line 1272
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->bs()V

    .line 1275
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V

    .line 1276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->removeAndRecycleScrapInt(Landroid/support/v7/widget/aq;)V

    .line 1277
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->clear()V

    .line 1279
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/af;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V

    .line 1282
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1283
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    goto :goto_0

    .line 1285
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->clear()V

    .line 1288
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v1, v0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/support/v7/widget/e;->nR:J

    iget-object v2, v1, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    if-eqz v2, :cond_4

    iget-object v1, v1, Landroid/support/v7/widget/e;->nS:Landroid/support/v7/widget/e;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_5

    iget-object v3, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    iget-object v4, v0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/f;->Q(Landroid/view/View;)V

    iget-object v3, v0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0}, Landroid/support/v7/widget/f;->removeAllViews()V

    .line 1289
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    .line 1290
    if-eqz p1, :cond_7

    .line 1291
    iget-object v0, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 1296
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/af;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1297
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_7

    .line 1298
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iput-boolean v2, p1, Landroid/support/v7/widget/af;->mIsAttachedToWindow:Z

    goto :goto_3

    .line 1292
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LayoutManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1294
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_7
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {p1}, Landroid/support/v7/widget/aq;->bH()V

    .line 1302
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1303
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 11211
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/h;->setNestedScrollingEnabled(Z)V

    .line 11212
    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/al;)V
    .locals 0

    .line 1314
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/al;

    .line 1315
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/an;)V
    .locals 0

    .line 1642
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/an;

    .line 1643
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 4503
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4504
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/ao;)V
    .locals 2

    .line 1448
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v1, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->detach()V

    :cond_0
    iput-object p1, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    iget-object p1, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroid/support/v7/widget/aq;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/V;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroid/support/v7/widget/aq;->qq:Landroid/support/v7/widget/ao;

    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->attach()V

    .line 1449
    :cond_1
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/ar;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/ar;

    .line 1190
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 1488
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1489
    return-void

    .line 1495
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1496
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1497
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1499
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1500
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .line 1061
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1062
    packed-switch p1, :pswitch_data_0

    .line 1064
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1072
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 1075
    return-void

    .line 1068
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 1069
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/ay;)V
    .locals 1

    .line 1459
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iput-object p1, v0, Landroid/support/v7/widget/aq;->qr:Landroid/support/v7/widget/ay;

    .line 1460
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 3467
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3468
    nop

    .line 3469
    if-eqz p1, :cond_0

    .line 3470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    goto :goto_0

    .line 3472
    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 3473
    nop

    .line 3475
    move p1, v1

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3476
    const/4 p1, 0x1

    return p1

    .line 3478
    :cond_2
    return v1
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .line 2184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2185
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 2196
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_0

    .line 2197
    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    return-void

    .line 2201
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 2202
    return-void

    .line 2204
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2205
    nop

    .line 2207
    move p1, v1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2208
    nop

    .line 2210
    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_6

    .line 2211
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/support/v7/widget/az;->b(IIII)I

    move-result v1

    if-nez p3, :cond_5

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_5
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/v7/widget/az;->b(IIILandroid/view/animation/Interpolator;)V

    .line 2213
    :cond_6
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 1727
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1728
    return-void

    .line 1730
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-nez v0, :cond_1

    .line 1731
    const-string p1, "RecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void

    .line 1735
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/af;->smoothScrollToPosition$7d69765f(Landroid/support/v7/widget/RecyclerView;I)V

    .line 1736
    return-void
.end method

.method startInterceptRequestLayout()V
    .locals 2

    .line 2074
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2075
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 2076
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2078
    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2

    .line 11221
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/h;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 11226
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 3

    .line 2091
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 2098
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2100
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 2109
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2111
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    .line 2113
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz p1, :cond_2

    .line 2115
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 2117
    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_3

    .line 2118
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2121
    :cond_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2122
    return-void
.end method

.method public stopNestedScroll()V
    .locals 2

    .line 11231
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/h;->stopNestedScroll(I)V

    .line 11232
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 11236
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/h;->stopNestedScroll(I)V

    .line 11237
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 2284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2285
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 2286
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/V;Z)V
    .locals 1

    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1094
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/V;ZZ)V

    .line 1095
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1096
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1097
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7

    .line 4396
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->bo()I

    move-result v0

    .line 4397
    add-int/2addr p2, p1

    .line 4399
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 4400
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/d;->O(I)Landroid/view/View;

    move-result-object v4

    .line 4401
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 4402
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4403
    iget v6, v5, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v6, p1, :cond_0

    iget v6, v5, Landroid/support/v7/widget/aA;->mPosition:I

    if-ge v6, p2, :cond_0

    .line 4408
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 4409
    invoke-virtual {v5, p3}, Landroid/support/v7/widget/aA;->addChangePayload(Ljava/lang/Object;)V

    .line 4411
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aj;

    iput-boolean v3, v2, Landroid/support/v7/widget/aj;->qc:Z

    .line 4399
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4414
    :cond_1
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v0, p3, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p3, Landroid/support/v7/widget/aq;->qm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aA;

    if-eqz v1, :cond_2

    iget v3, v1, Landroid/support/v7/widget/aA;->mPosition:I

    if-lt v3, p1, :cond_2

    if-ge v3, p2, :cond_2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/aA;->addFlags(I)V

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/aq;->Y(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4415
    :cond_3
    return-void
.end method
