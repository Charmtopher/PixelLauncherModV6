.class public Lcom/android/launcher3/views/RecyclerViewFastScroller;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TRACK_WIDTH:Landroid/util/Property;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mCanThumbDetach:Z

.field private final mConfig:Landroid/view/ViewConfiguration;

.field private final mDeltaThreshold:F

.field private mDownX:I

.field private mDownY:I

.field private mDy:I

.field private mIgnoreDragGesture:Z

.field public mIsDragging:Z

.field public mIsThumbDetached:Z

.field private mLastTouchY:F

.field private mLastY:I

.field private final mMaxWidth:I

.field private final mMinWidth:I

.field private mOnScrollListener:Landroid/support/v7/widget/an;

.field private mPopupSectionName:Ljava/lang/String;

.field private mPopupView:Landroid/widget/TextView;

.field private mPopupVisible:Z

.field protected mRv:Lcom/android/launcher3/BaseRecyclerView;

.field protected final mThumbHeight:I

.field protected mThumbOffsetY:I

.field private final mThumbPadding:I

.field private final mThumbPaint:Landroid/graphics/Paint;

.field protected mTouchOffsetY:I

.field private final mTrackPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private mWidthAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->TRACK_WIDTH:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    .line 121
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    const v2, 0x1010036

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    const v2, 0x1010435

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMinWidth:I

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    .line 132
    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    .line 134
    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    .line 135
    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    .line 137
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mConfig:Landroid/view/ViewConfiguration;

    .line 138
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDeltaThreshold:F

    .line 140
    sget-object v1, Lcom/android/launcher3/R$styleable;->RecyclerViewFastScroller:[I

    .line 141
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mCanThumbDetach:Z

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/views/RecyclerViewFastScroller;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic access$202(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    return p1
.end method

.method private animatePopupVisibility(Z)V
    .locals 3

    .line 348
    iget-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupVisible:Z

    if-eq v0, p1, :cond_2

    .line 349
    iput-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupVisible:Z

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 351
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x96

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 353
    :cond_2
    return-void
.end method

.method private calcTouchOffsetAndPrepToFastScroll(II)V
    .locals 2

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    .line 267
    iget-boolean v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mCanThumbDetach:Z

    if-eqz v1, :cond_0

    .line 268
    iput-boolean v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    .line 270
    :cond_0
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    .line 271
    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 272
    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->showActiveScrollbar(Z)V

    .line 273
    return-void
.end method

.method private showActiveScrollbar(Z)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 317
    :cond_0
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->TRACK_WIDTH:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 318
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMinWidth:I

    :goto_0
    aput p1, v1, v2

    .line 317
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    .line 319
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 321
    return-void
.end method

.method private updateFastScrollSectionNameAndThumbOffset(II)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    sub-int/2addr v0, v1

    .line 278
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    sub-int/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    .line 279
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float p1, p1

    const/high16 v1, 0x3f400000    # 0.75f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseRecyclerView;->getScrollBarTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 286
    iput p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastTouchY:F

    .line 287
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastTouchY:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 288
    return-void
.end method


# virtual methods
.method public final getThumbHeight()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    return v0
.end method

.method public final getThumbOffsetY()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    return v0
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 4

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 235
    :pswitch_0
    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    .line 239
    iget-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    .line 240
    iget-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->supportsFastScrolling()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    sub-int p1, v1, p1

    .line 242
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 243
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->calcTouchOffsetAndPrepToFastScroll(II)V

    .line 245
    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-eqz p1, :cond_5

    .line 246
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(II)V

    goto/16 :goto_2

    .line 251
    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->onFastScrollCompleted()V

    .line 252
    iput v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    .line 253
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastTouchY:F

    .line 254
    iput-boolean v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIgnoreDragGesture:Z

    .line 255
    iget-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-eqz p1, :cond_5

    .line 256
    iput-boolean v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    .line 257
    invoke-direct {p0, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 258
    invoke-direct {p0, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->showActiveScrollbar(Z)V

    goto :goto_2

    .line 216
    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    .line 217
    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    iput v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    .line 219
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDy:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDeltaThreshold:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    .line 220
    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->stopScroll()V

    .line 225
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 226
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTouchOffsetY:I

    goto :goto_2

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    .line 228
    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->supportsFastScrolling()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownX:I

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mMaxWidth:I

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    if-eqz p2, :cond_5

    .line 230
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mDownY:I

    iget p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->calcTouchOffsetAndPrepToFastScroll(II)V

    .line 231
    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mLastY:I

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(II)V

    .line 262
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isHitInParent(FFLandroid/graphics/Point;)Z
    .locals 3

    .line 365
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-gez v0, :cond_0

    .line 366
    const/4 p1, 0x0

    return p1

    .line 368
    :cond_0
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getHitRect(Landroid/graphics/Rect;)V

    .line 369
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerView;->getScrollBarTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 370
    if-eqz p3, :cond_1

    .line 371
    sget-object v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 373
    :cond_1
    sget-object p3, Lcom/android/launcher3/views/RecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public final isNearThumb(II)Z
    .locals 1

    .line 327
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    sub-int/2addr p2, v0

    .line 329
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 291
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-gez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerView;->getScrollBarTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 298
    neg-float v3, v1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v2

    int-to-float v6, v2

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    int-to-float v7, v2

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    int-to-float v8, v2

    iget-object v9, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 301
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 302
    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    int-to-float v2, v2

    add-float v6, v1, v2

    .line 303
    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mWidth:I

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPadding:I

    add-int/2addr v1, v2

    int-to-float v9, v1

    .line 304
    neg-float v4, v6

    const/4 v5, 0x0

    iget v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbHeight:I

    int-to-float v7, v1

    iget-object v10, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 305
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 306
    return-void
.end method

.method public final setRecyclerView(Lcom/android/launcher3/BaseRecyclerView;Landroid/widget/TextView;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mOnScrollListener:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mOnScrollListener:Landroid/support/v7/widget/an;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/an;)V

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    .line 152
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    new-instance v0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;-><init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    iput-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mOnScrollListener:Landroid/support/v7/widget/an;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BaseRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/an;)V

    .line 165
    iput-object p2, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    .line 166
    iget-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    new-instance p2, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;

    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/android/launcher3/graphics/FastScrollThumbDrawable;-><init>(Landroid/graphics/Paint;Z)V

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-void
.end method

.method public final setThumbOffsetY(I)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    if-ne v0, p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mThumbOffsetY:I

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->invalidate()V

    .line 180
    return-void
.end method
