.class public Lcom/android/launcher3/AppWidgetResizeFrame;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static sCellSize:[Landroid/graphics/Point;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mBackgroundPadding:I

.field private final mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mBottomBorderActive:Z

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private final mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field private final mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mDirectionVector:[I

.field private final mDragHandles:[Landroid/view/View;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mLastDirectionVector:[I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLeftBorderActive:Z

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private final mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field private final mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mTopBorderActive:Z

.field private mTopTouchRegionAdjustment:I

.field private final mTouchTargetWidth:I

.field private mWidgetPadding:Landroid/graphics/Rect;

.field private mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    .line 54
    const/4 p2, 0x2

    new-array p3, p2, [I

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 55
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 57
    new-instance p3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(B)V

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 58
    new-instance p3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(B)V

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 60
    new-instance p3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(B)V

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 61
    new-instance p3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(B)V

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 63
    new-instance p3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(B)V

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 64
    new-instance p3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(B)V

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 82
    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 83
    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 98
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 99
    invoke-static {p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 102
    const p3, 0x7f0b002a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 103
    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/AppWidgetResizeFrame;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method private getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 6

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mScaleToFit:F

    .line 386
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 388
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v1, v3

    .line 390
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr v2, v3

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 393
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 394
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    add-float/2addr v4, v0

    float-to-int v0, v4

    .line 396
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 397
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 398
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 399
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 400
    return-void
.end method

.method private static getSpanIncrement(F)I
    .locals 2

    .line 243
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f28f5c3    # 0.66f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 329
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sCellSize:[Landroid/graphics/Point;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 330
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 333
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Point;

    .line 334
    sput-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sCellSize:[Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v4

    aput-object v4, v3, v2

    .line 335
    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sCellSize:[Landroid/graphics/Point;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    aput-object v0, v3, v1

    .line 338
    :cond_0
    if-nez p3, :cond_1

    .line 339
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 344
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sCellSize:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-int v0, v0

    .line 345
    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sCellSize:[Landroid/graphics/Point;

    aget-object v2, v3, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p2

    int-to-float v2, v2

    div-float/2addr v2, p0

    float-to-int v2, v2

    .line 348
    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sCellSize:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p1, p1

    .line 349
    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sCellSize:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-int p0, p2

    .line 350
    invoke-virtual {p3, p1, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 351
    return-object p3
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 474
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 479
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v3

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    iget v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge v0, v8, :cond_2

    if-eqz v4, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    iput-boolean v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v8, v9

    if-le v0, v8, :cond_3

    if-eqz v4, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v0, v4

    if-ge v3, v0, :cond_4

    if-eqz v6, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v0, v4

    if-le v3, v0, :cond_5

    if-eqz v6, :cond_5

    move v0, v5

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v5

    :goto_7
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v2

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v4, :cond_8

    move v4, v8

    goto :goto_8

    :cond_8
    move v4, v6

    :goto_8
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v7

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v4, :cond_9

    move v4, v8

    goto :goto_9

    :cond_9
    move v4, v6

    :goto_9
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v5

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v4, :cond_a

    move v4, v8

    goto :goto_a

    :cond_a
    move v4, v6

    :goto_a
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_b

    move v6, v8

    nop

    :cond_b
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v6

    iget v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v8, v7

    :goto_b
    sub-int/2addr v6, v8

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_c

    :cond_d
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getRight()I

    move-result v8

    goto :goto_b

    :cond_e
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v3, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    :goto_c
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getRight()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v6

    iget v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_d

    :cond_f
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v7, v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v4

    sub-int/2addr v7, v4

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getBottom()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_d

    :cond_10
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v3, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    :goto_d
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getBottom()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    if-eqz v0, :cond_11

    .line 481
    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    .line 482
    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    .line 483
    return v5

    .line 486
    :cond_11
    return v2
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 26

    move-object/from16 v0, p0

    .line 250
    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    int-to-float v2, v2

    .line 251
    iget-object v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v3, v3, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    int-to-float v3, v3

    .line 253
    iget v4, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-static {v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v8

    .line 254
    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget v4, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v12

    .line 256
    if-nez v1, :cond_0

    if-nez v8, :cond_0

    if-nez v12, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 259
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 261
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 263
    iget v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 264
    iget v13, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 265
    iget-boolean v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v6, :cond_1

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_1
    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 266
    :goto_0
    iget-boolean v7, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_2

    iget v7, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 270
    :goto_1
    move v14, v7

    goto :goto_2

    .line 266
    :cond_2
    iget v7, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_1

    .line 270
    :goto_2
    iget-object v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int/2addr v5, v6

    invoke-virtual {v7, v6, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 271
    iget-object v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v6, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v9, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget-object v10, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 272
    iget v10, v10, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget-object v11, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 271
    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v5

    .line 273
    iget-object v6, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v6, v6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 274
    iget-object v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v7}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v7

    .line 275
    const/4 v8, -0x1

    if-eqz v5, :cond_4

    .line 276
    iget-object v9, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v10, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v10, :cond_3

    move v10, v8

    goto :goto_3

    :cond_3
    move v10, v4

    :goto_3
    aput v10, v9, v3

    .line 279
    :cond_4
    iget-object v9, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int/2addr v13, v14

    invoke-virtual {v9, v14, v13}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 280
    iget-object v9, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v10, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v11, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    iget-object v14, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 281
    iget v14, v14, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v15, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 280
    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v9

    .line 282
    iget-object v10, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v10, v10, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 283
    iget-object v11, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v11}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v11

    .line 284
    if-eqz v9, :cond_6

    .line 285
    iget-object v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v13, :cond_5

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_4
    aput v8, v12, v4

    .line 288
    :cond_6
    if-nez v1, :cond_7

    if-nez v9, :cond_7

    if-nez v5, :cond_7

    return-void

    .line 292
    :cond_7
    if-eqz v1, :cond_8

    .line 293
    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v12, v12, v3

    aput v12, v8, v3

    .line 294
    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v12, v12, v4

    aput v12, v8, v4

    goto :goto_5

    .line 296
    :cond_8
    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v12, v12, v3

    aput v12, v8, v3

    .line 297
    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v12, v12, v4

    aput v12, v8, v4

    .line 300
    :goto_5
    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v14, 0x2

    new-array v15, v14, [I

    move-object/from16 v21, v15

    move-object v15, v8

    move/from16 v16, v6

    move/from16 v17, v10

    move/from16 v18, v7

    move/from16 v19, v11

    move-object/from16 v20, v21

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    aget v16, v21, v3

    aget v17, v21, v4

    const/16 v24, 0x1

    new-instance v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v15, v3}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(B)V

    move-object/from16 v25, v15

    move-object v15, v8

    move/from16 v20, v7

    move/from16 v21, v11

    move-object/from16 v22, v13

    move-object/from16 v23, v12

    invoke-virtual/range {v15 .. v25}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v13

    invoke-virtual {v8, v4}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    if-eqz v13, :cond_a

    iget-boolean v15, v13, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v15, :cond_a

    invoke-virtual {v8, v13, v12}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    iput-boolean v4, v8, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    invoke-virtual {v8, v13, v12, v1}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eqz v1, :cond_9

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    iput-boolean v3, v8, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    goto :goto_6

    :cond_9
    invoke-virtual {v8, v13, v12, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations$75beef23(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    :goto_6
    iget-object v8, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    :cond_a
    iget-boolean v8, v13, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v8, :cond_d

    .line 302
    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v8, :cond_c

    iget v8, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v8, v7, :cond_b

    iget v8, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v8, v11, :cond_c

    .line 303
    :cond_b
    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    iget-object v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    const v13, 0x7f0c0087

    new-array v14, v14, [Ljava/lang/Object;

    .line 304
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v4

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {v8, v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 307
    :cond_c
    iput v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 308
    iput v10, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 309
    iput v7, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 310
    iput v11, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 311
    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    .line 312
    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    .line 314
    if-nez v1, :cond_d

    .line 315
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2, v7, v11}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 318
    :cond_d
    iget-object v0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestLayout()V

    .line 319
    return-void
.end method

.method public static showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 5

    .line 117
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 120
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 121
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    const/4 v2, 0x0

    const v3, 0x7f04000e

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 123
    iput-object p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iput-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    iput v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    iput-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget p1, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {p1, p0, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    const/16 p1, 0x8

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p0, p0, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const/4 v4, 0x3

    aget-object p0, p0, v4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p0, p0, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p0, p0, v4

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    invoke-virtual {v0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iput-boolean v3, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 126
    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 127
    iput-boolean v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mIsOpen:Z

    .line 128
    invoke-direct {v0, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 129
    return-void
.end method

.method private snapToWidget(Z)V
    .locals 12

    .line 403
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 404
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 405
    sget-object v1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 406
    sget-object v2, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 407
    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 412
    const/4 v4, 0x0

    if-gez v3, :cond_0

    .line 414
    neg-int v5, v3

    iput v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 416
    :cond_0
    iput v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 418
    :goto_0
    add-int v5, v3, v1

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 420
    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    iput v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 422
    :cond_1
    iput v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 425
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 426
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-nez p1, :cond_3

    .line 427
    iput v0, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 428
    iput v1, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 429
    iput v2, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 430
    iput v3, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 431
    :goto_2
    if-ge v4, v7, :cond_2

    .line 432
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p1, p1, v4

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 431
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    goto :goto_4

    .line 436
    :cond_3
    const-string p1, "width"

    const/4 v9, 0x2

    new-array v10, v9, [I

    iget v11, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    aput v11, v10, v4

    aput v0, v10, v8

    invoke-static {p1, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 437
    const-string v0, "height"

    new-array v10, v9, [I

    iget v11, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    aput v11, v10, v4

    aput v1, v10, v8

    invoke-static {v0, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 439
    const-string v1, "x"

    new-array v10, v9, [I

    iget v11, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    aput v11, v10, v4

    aput v2, v10, v8

    invoke-static {v1, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 440
    const-string v2, "y"

    new-array v10, v9, [I

    iget v11, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    aput v11, v10, v4

    aput v3, v10, v8

    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 441
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v3, v4

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    const/4 p1, 0x3

    aput-object v2, v3, p1

    .line 442
    invoke-static {v5, p0, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 443
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 448
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 449
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 450
    move p1, v4

    :goto_3
    if-ge p1, v7, :cond_4

    .line 451
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/launcher3/AppWidgetResizeFrame;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 450
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 454
    :cond_4
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 455
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 458
    :goto_4
    invoke-virtual {p0, v8}, Lcom/android/launcher3/AppWidgetResizeFrame;->setFocusableInTouchMode(Z)V

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestFocus()Z

    .line 460
    return-void
.end method

.method static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V
    .locals 6

    .line 323
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 324
    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 326
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 0

    .line 522
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 523
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    .line 532
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logActionCommand(I)V
    .locals 0

    .line 528
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 514
    const/4 p1, 0x1

    return p1

    .line 516
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->close(Z)V

    .line 517
    return p1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 495
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 499
    :pswitch_0
    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 500
    goto :goto_0

    .line 503
    :pswitch_1
    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 504
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget p1, p1, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 505
    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    goto :goto_0

    .line 497
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 508
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 356
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 360
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 108
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 111
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 465
    invoke-static {p2}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p0, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->close(Z)V

    .line 467
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestFocus()Z

    .line 468
    const/4 p1, 0x1

    return p1

    .line 470
    :cond_0
    return p2
.end method

.method public final visualizeResizeForDelta(II)V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 211
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 212
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 213
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget p1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 214
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 216
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 217
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 218
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget p1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 219
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 221
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 225
    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 226
    iget-boolean p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz p1, :cond_0

    .line 227
    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sget-object p2, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iget p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr p1, p2

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 229
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p1, :cond_1

    .line 230
    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget-object p2, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iget p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr p1, p2

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 232
    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p1, :cond_2

    .line 233
    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 235
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p1, :cond_3

    .line 236
    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 240
    return-void
.end method
