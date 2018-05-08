.class public Lcom/android/launcher3/touch/SwipeDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

.field public static final VERTICAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;


# instance fields
.field protected mActivePointerId:I

.field private mCurrentMillis:J

.field private mDir:Lcom/android/launcher3/touch/SwipeDetector$Direction;

.field private mDisplacement:F

.field private final mDownPos:Landroid/graphics/PointF;

.field private mIgnoreSlopWhenSettling:Z

.field private mLastDisplacement:F

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mListener:Lcom/android/launcher3/touch/SwipeDetector$Listener;

.field public mScrollConditions:I

.field private mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

.field private mSubtractDisplacement:F

.field private final mTouchSlop:F

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/android/launcher3/touch/SwipeDetector$1;

    invoke-direct {v0}, Lcom/android/launcher3/touch/SwipeDetector$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/SwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    .line 92
    new-instance v0, Lcom/android/launcher3/touch/SwipeDetector$2;

    invoke-direct {v0}, Lcom/android/launcher3/touch/SwipeDetector$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/SwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    return-void
.end method

.method protected constructor <init>(FLcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mActivePointerId:I

    .line 61
    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    iput-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    .line 151
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 152
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    .line 183
    iput p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mTouchSlop:F

    .line 184
    iput-object p2, p0, Lcom/android/launcher3/touch/SwipeDetector;->mListener:Lcom/android/launcher3/touch/SwipeDetector$Listener;

    .line 185
    iput-object p3, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDir:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V
    .locals 0

    .line 178
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/touch/SwipeDetector;-><init>(FLcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    .line 179
    return-void
.end method

.method public static calculateDuration(FF)J
    .locals 1

    .line 363
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 364
    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 365
    const/high16 v0, 0x44960000    # 1200.0f

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    const/high16 p0, 0x42c80000    # 100.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-long p0, p0

    .line 369
    return-wide p0
.end method

.method private reportDragStart(Z)Z
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mListener:Lcom/android/launcher3/touch/SwipeDetector$Listener;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/SwipeDetector$Listener;->onDragStart(Z)V

    .line 283
    return v1
.end method


# virtual methods
.method public final isDraggingOrSettling()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isIdleState()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 244
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 245
    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    .line 246
    iget-object v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDir:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    iget-object v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v4, p1, v0, v5}, Lcom/android/launcher3/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    .line 249
    iget-object v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDir:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    iget-object v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v4, p1, v0, v5}, Lcom/android/launcher3/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v4

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 249
    iget-wide v7, p0, Lcom/android/launcher3/touch/SwipeDetector;->mCurrentMillis:J

    iput-wide v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mCurrentMillis:J

    iget-wide v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mCurrentMillis:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    cmpl-float v6, v5, v1

    if-lez v6, :cond_0

    div-float/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget v6, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iput v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    goto :goto_1

    :cond_1
    const v6, 0x417ea5dd

    add-float/2addr v6, v5

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v5

    mul-float/2addr v7, v6

    mul-float/2addr v5, v4

    add-float/2addr v7, v5

    iput v7, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    .line 253
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v5, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDir:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    iget-object v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v4, p1, v0, v5}, Lcom/android/launcher3/touch/SwipeDetector$Direction;->getActiveTouchSlop(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mTouchSlop:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mScrollConditions:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    cmpl-float v4, v4, v1

    if-gtz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mScrollConditions:I

    and-int/2addr v4, v3

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    cmpg-float v1, v4, v1

    if-gez v1, :cond_4

    :cond_3
    move v2, v3

    nop

    :cond_4
    if-eqz v2, :cond_5

    .line 254
    sget-object v1, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v2, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne v1, v2, :cond_6

    .line 257
    iget v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    iget v2, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastDisplacement:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    iput v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastDisplacement:F

    iget-object v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mListener:Lcom/android/launcher3/touch/SwipeDetector$Listener;

    iget v2, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mSubtractDisplacement:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    invoke-interface {v1, v2, v4}, Lcom/android/launcher3/touch/SwipeDetector$Listener;->onDrag(FF)Z

    .line 259
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 260
    goto/16 :goto_3

    .line 264
    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_9

    .line 265
    sget-object p1, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    goto/16 :goto_3

    .line 219
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mActivePointerId:I

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 221
    iget-object p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 222
    iput v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastDisplacement:F

    .line 223
    iput v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    .line 224
    iput v1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    .line 226
    iget-object p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_9

    iget-boolean p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz p1, :cond_9

    .line 227
    sget-object p1, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    goto :goto_3

    .line 232
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 234
    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mActivePointerId:I

    if-ne v1, v4, :cond_9

    .line 235
    if-nez v0, :cond_8

    .line 236
    move v2, v3

    goto :goto_2

    .line 235
    :cond_8
    nop

    .line 236
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 237
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 238
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 236
    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 240
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mActivePointerId:I

    .line 241
    nop

    .line 271
    :cond_9
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setDetectableScrollConditions(IZ)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mScrollConditions:I

    .line 194
    iput-boolean p2, p0, Lcom/android/launcher3/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    .line 195
    return-void
.end method

.method public final setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V
    .locals 6

    .line 117
    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v3, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mSubtractDisplacement:F

    :cond_0
    iget v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mDisplacement:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mTouchSlop:F

    :goto_0
    iput v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mSubtractDisplacement:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mTouchSlop:F

    neg-float v0, v0

    goto :goto_0

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v3, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne v0, v3, :cond_2

    .line 120
    invoke-direct {p0, v1}, Lcom/android/launcher3/touch/SwipeDetector;->reportDragStart(Z)Z

    goto :goto_2

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    sget-object v3, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne v0, v3, :cond_3

    .line 122
    invoke-direct {p0, v2}, Lcom/android/launcher3/touch/SwipeDetector;->reportDragStart(Z)Z

    .line 125
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mListener:Lcom/android/launcher3/touch/SwipeDetector$Listener;

    iget v3, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    iget v4, p0, Lcom/android/launcher3/touch/SwipeDetector;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-interface {v0, v3, v1}, Lcom/android/launcher3/touch/SwipeDetector$Listener;->onDragEnd(FZ)V

    .line 129
    :cond_5
    iput-object p1, p0, Lcom/android/launcher3/touch/SwipeDetector;->mState:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    .line 130
    return-void
.end method

.method public final wasInitialTouchPositive()Z
    .locals 2

    .line 304
    iget v0, p0, Lcom/android/launcher3/touch/SwipeDetector;->mSubtractDisplacement:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
