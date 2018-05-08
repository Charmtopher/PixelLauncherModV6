.class public Lcom/android/launcher3/util/TransformingTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field public final mBounds:Landroid/graphics/RectF;

.field private mDelegateTargeted:Z

.field public mDelegateView:Landroid/view/View;

.field public final mTouchCheckBounds:Landroid/graphics/RectF;

.field public mTouchExtension:F

.field private mWasTouchOutsideBounds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/TransformingTouchDelegate;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/android/launcher3/util/TransformingTouchDelegate;->sTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    .line 48
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    .line 49
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 78
    nop

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    .line 89
    goto :goto_1

    .line 92
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    goto :goto_1

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    .line 82
    iget-boolean v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateTargeted:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mWasTouchOutsideBounds:Z

    .line 84
    goto :goto_1

    .line 96
    :cond_0
    :goto_0
    move v1, v2

    .line 97
    :goto_1
    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 100
    iget-boolean v2, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mWasTouchOutsideBounds:Z

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 105
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 108
    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
