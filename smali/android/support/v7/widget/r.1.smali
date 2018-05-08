.class Landroid/support/v7/widget/r;
.super Landroid/support/v7/widget/ae;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/am;


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private final mOnScrollListener:Landroid/support/v7/widget/an;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mState:I

.field private nj:I

.field private final oA:Landroid/graphics/drawable/StateListDrawable;

.field private final oB:Landroid/graphics/drawable/Drawable;

.field private final oC:I

.field private final oD:I

.field private final oE:Landroid/graphics/drawable/StateListDrawable;

.field private final oF:Landroid/graphics/drawable/Drawable;

.field private final oG:I

.field private final oH:I

.field oI:I

.field oJ:I

.field oK:F

.field oL:I

.field oM:I

.field oN:F

.field oO:I

.field oP:I

.field oQ:Z

.field oR:Z

.field private final oS:[I

.field private final oT:[I

.field final oU:Landroid/animation/ValueAnimator;

.field oV:I

.field private final oW:Ljava/lang/Runnable;

.field final oy:I

.field private final oz:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/r;->PRESSED_STATE_SET:[I

    .line 75
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v7/widget/r;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    .line 137
    invoke-direct {p0}, Landroid/support/v7/widget/ae;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/r;->oO:I

    .line 103
    iput v0, p0, Landroid/support/v7/widget/r;->oP:I

    .line 110
    iput-boolean v0, p0, Landroid/support/v7/widget/r;->oQ:Z

    .line 111
    iput-boolean v0, p0, Landroid/support/v7/widget/r;->oR:Z

    .line 112
    iput v0, p0, Landroid/support/v7/widget/r;->mState:I

    .line 113
    iput v0, p0, Landroid/support/v7/widget/r;->nj:I

    .line 115
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/r;->oS:[I

    .line 116
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/r;->oT:[I

    .line 117
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    .line 118
    iput v0, p0, Landroid/support/v7/widget/r;->oV:I

    .line 119
    new-instance v1, Landroid/support/v7/widget/s;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/s;-><init>(Landroid/support/v7/widget/r;)V

    iput-object v1, p0, Landroid/support/v7/widget/r;->oW:Ljava/lang/Runnable;

    .line 125
    new-instance v1, Landroid/support/v7/widget/t;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/t;-><init>(Landroid/support/v7/widget/r;)V

    iput-object v1, p0, Landroid/support/v7/widget/r;->mOnScrollListener:Landroid/support/v7/widget/an;

    .line 138
    iput-object p2, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    .line 139
    iput-object p3, p0, Landroid/support/v7/widget/r;->oB:Landroid/graphics/drawable/Drawable;

    .line 140
    iput-object p4, p0, Landroid/support/v7/widget/r;->oE:Landroid/graphics/drawable/StateListDrawable;

    .line 141
    iput-object p5, p0, Landroid/support/v7/widget/r;->oF:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/r;->oC:I

    .line 143
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/r;->oD:I

    .line 144
    nop

    .line 145
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/r;->oG:I

    .line 146
    nop

    .line 147
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/r;->oH:I

    .line 148
    iput p7, p0, Landroid/support/v7/widget/r;->oy:I

    .line 149
    iput p8, p0, Landroid/support/v7/widget/r;->oz:I

    .line 150
    iget-object p2, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 151
    iget-object p2, p0, Landroid/support/v7/widget/r;->oB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    iget-object p2, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/support/v7/widget/u;

    invoke-direct {p3, p0, v0}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/r;B)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    iget-object p2, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/support/v7/widget/v;

    invoke-direct {p3, p0, v0}, Landroid/support/v7/widget/v;-><init>(Landroid/support/v7/widget/r;B)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    iget-object p2, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/ae;)V

    iget-object p2, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/am;)V

    iget-object p2, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Landroid/support/v7/widget/r;->mOnScrollListener:Landroid/support/v7/widget/an;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/an;)V

    invoke-direct {p0}, Landroid/support/v7/widget/r;->bt()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/ae;)V

    iget-object p1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/am;)V

    iget-object p1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Landroid/support/v7/widget/r;->mOnScrollListener:Landroid/support/v7/widget/an;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/an;)V

    .line 157
    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private R(I)V
    .locals 4

    .line 266
    invoke-direct {p0}, Landroid/support/v7/widget/r;->bt()V

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/r;->oW:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method

.method private a(FF[IIII)I
    .locals 2

    .line 483
    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    .line 484
    if-nez v0, :cond_0

    .line 485
    return v1

    .line 487
    :cond_0
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    .line 488
    sub-int/2addr p4, p6

    .line 489
    int-to-float p1, p4

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 490
    add-int/2addr p5, p1

    .line 491
    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    .line 492
    return p1

    .line 494
    :cond_1
    return v1
.end method

.method static synthetic a(Landroid/support/v7/widget/r;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroid/support/v7/widget/r;->oV:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/r;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic b(Landroid/support/v7/widget/r;)V
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/r;I)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->setState(I)V

    return-void
.end method

.method private bt()V
    .locals 2

    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/r;->oW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/r;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method static synthetic d(Landroid/support/v7/widget/r;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/support/v7/widget/r;->oB:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final b(FF)Z
    .locals 2

    .line 500
    invoke-direct {p0}, Landroid/support/v7/widget/r;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/r;->oC:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/r;->oO:I

    iget v1, p0, Landroid/support/v7/widget/r;->oC:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Landroid/support/v7/widget/r;->oJ:I

    iget v0, p0, Landroid/support/v7/widget/r;->oI:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/r;->oJ:I

    iget v0, p0, Landroid/support/v7/widget/r;->oI:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final c(FF)Z
    .locals 2

    .line 508
    iget v0, p0, Landroid/support/v7/widget/r;->oP:I

    iget v1, p0, Landroid/support/v7/widget/r;->oG:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroid/support/v7/widget/r;->oM:I

    iget v0, p0, Landroid/support/v7/widget/r;->oL:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget p2, p0, Landroid/support/v7/widget/r;->oM:I

    iget v0, p0, Landroid/support/v7/widget/r;->oL:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onDrawOver$13fcd2ff$2854d342(Landroid/graphics/Canvas;)V
    .locals 7

    .line 272
    iget v0, p0, Landroid/support/v7/widget/r;->oO:I

    iget-object v1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/support/v7/widget/r;->oP:I

    iget-object v1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 273
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 284
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/r;->oV:I

    if-eqz v0, :cond_3

    .line 285
    iget-boolean v0, p0, Landroid/support/v7/widget/r;->oQ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 286
    iget v0, p0, Landroid/support/v7/widget/r;->oO:I

    iget v3, p0, Landroid/support/v7/widget/r;->oC:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/support/v7/widget/r;->oJ:I

    iget v4, p0, Landroid/support/v7/widget/r;->oI:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    iget v5, p0, Landroid/support/v7/widget/r;->oC:I

    iget v6, p0, Landroid/support/v7/widget/r;->oI:I

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v4, p0, Landroid/support/v7/widget/r;->oB:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v7/widget/r;->oD:I

    iget v6, p0, Landroid/support/v7/widget/r;->oP:I

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Landroid/support/v7/widget/r;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/r;->oB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/r;->oC:I

    int-to-float v0, v0

    int-to-float v4, v3

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Landroid/support/v7/widget/r;->oC:I

    :goto_0
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1
    int-to-float v4, v0

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v7/widget/r;->oB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 288
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/r;->oR:Z

    if-eqz v0, :cond_3

    .line 289
    iget v0, p0, Landroid/support/v7/widget/r;->oP:I

    iget v3, p0, Landroid/support/v7/widget/r;->oG:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/support/v7/widget/r;->oM:I

    iget v4, p0, Landroid/support/v7/widget/r;->oL:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/r;->oE:Landroid/graphics/drawable/StateListDrawable;

    iget v5, p0, Landroid/support/v7/widget/r;->oL:I

    iget v6, p0, Landroid/support/v7/widget/r;->oG:I

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v4, p0, Landroid/support/v7/widget/r;->oF:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v7/widget/r;->oO:I

    iget v6, p0, Landroid/support/v7/widget/r;->oH:I

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/r;->oF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/r;->oE:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    :cond_3
    return-void

    .line 274
    :cond_4
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/r;->oO:I

    .line 275
    iget-object p1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/r;->oP:I

    .line 280
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/r;->setState(I)V

    .line 281
    return-void
.end method

.method public final onInterceptTouchEvent$606727fc(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 385
    iget v0, p0, Landroid/support/v7/widget/r;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/widget/r;->b(FF)Z

    move-result v0

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/r;->c(FF)Z

    move-result v4

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    if-nez v0, :cond_0

    if-eqz v4, :cond_3

    .line 390
    :cond_0
    if-eqz v4, :cond_1

    .line 391
    iput v3, p0, Landroid/support/v7/widget/r;->nj:I

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/r;->oN:F

    goto :goto_0

    .line 393
    :cond_1
    if-eqz v0, :cond_2

    .line 394
    iput v2, p0, Landroid/support/v7/widget/r;->nj:I

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/r;->oK:F

    .line 398
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/r;->setState(I)V

    .line 399
    goto :goto_1

    .line 401
    :cond_3
    nop

    .line 403
    goto :goto_2

    :cond_4
    iget p1, p0, Landroid/support/v7/widget/r;->mState:I

    if-ne p1, v2, :cond_5

    .line 404
    nop

    .line 408
    :goto_1
    move v1, v3

    goto :goto_2

    .line 406
    :cond_5
    nop

    .line 408
    :goto_2
    return v1
.end method

.method public final onTouchEvent$606727f8(Landroid/view/MotionEvent;)V
    .locals 14

    .line 413
    iget v0, p0, Landroid/support/v7/widget/r;->mState:I

    if-nez v0, :cond_0

    .line 414
    return-void

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/r;->b(FF)Z

    move-result v0

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/r;->c(FF)Z

    move-result v3

    .line 420
    if-nez v0, :cond_1

    if-eqz v3, :cond_4

    .line 421
    :cond_1
    if-eqz v3, :cond_2

    .line 422
    iput v2, p0, Landroid/support/v7/widget/r;->nj:I

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/r;->oN:F

    goto :goto_0

    .line 424
    :cond_2
    if-eqz v0, :cond_3

    .line 425
    iput v1, p0, Landroid/support/v7/widget/r;->nj:I

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/r;->oK:F

    .line 428
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/r;->setState(I)V

    .line 430
    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroid/support/v7/widget/r;->mState:I

    if-ne v0, v1, :cond_6

    .line 431
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/r;->oK:F

    .line 432
    iput p1, p0, Landroid/support/v7/widget/r;->oN:F

    .line 433
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/r;->setState(I)V

    .line 434
    iput v3, p0, Landroid/support/v7/widget/r;->nj:I

    return-void

    .line 435
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroid/support/v7/widget/r;->mState:I

    if-ne v0, v1, :cond_a

    .line 436
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->show()V

    .line 437
    iget v0, p0, Landroid/support/v7/widget/r;->nj:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_8

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v5, p0, Landroid/support/v7/widget/r;->oT:[I

    iget v6, p0, Landroid/support/v7/widget/r;->oz:I

    aput v6, v5, v3

    iget-object v5, p0, Landroid/support/v7/widget/r;->oT:[I

    iget v6, p0, Landroid/support/v7/widget/r;->oO:I

    iget v7, p0, Landroid/support/v7/widget/r;->oz:I

    sub-int/2addr v6, v7

    aput v6, v5, v2

    iget-object v10, p0, Landroid/support/v7/widget/r;->oT:[I

    aget v5, v10, v3

    int-to-float v5, v5

    aget v6, v10, v2

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/r;->oM:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-ltz v5, :cond_8

    iget v8, p0, Landroid/support/v7/widget/r;->oN:F

    iget-object v5, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v11

    iget-object v5, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v12

    iget v13, p0, Landroid/support/v7/widget/r;->oO:I

    move-object v7, p0

    move v9, v0

    invoke-direct/range {v7 .. v13}, Landroid/support/v7/widget/r;->a(FF[IIII)I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_7
    iput v0, p0, Landroid/support/v7/widget/r;->oN:F

    .line 440
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/r;->nj:I

    if-ne v0, v1, :cond_a

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/r;->oS:[I

    iget v1, p0, Landroid/support/v7/widget/r;->oz:I

    aput v1, v0, v3

    iget-object v0, p0, Landroid/support/v7/widget/r;->oS:[I

    iget v1, p0, Landroid/support/v7/widget/r;->oP:I

    iget v5, p0, Landroid/support/v7/widget/r;->oz:I

    sub-int/2addr v1, v5

    aput v1, v0, v2

    iget-object v8, p0, Landroid/support/v7/widget/r;->oS:[I

    aget v0, v8, v3

    int-to-float v0, v0

    aget v1, v8, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/r;->oJ:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_a

    iget v6, p0, Landroid/support/v7/widget/r;->oK:F

    iget-object v0, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v9

    iget-object v0, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/r;->oP:I

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v5 .. v11}, Landroid/support/v7/widget/r;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_9
    iput p1, p0, Landroid/support/v7/widget/r;->oK:F

    .line 444
    :cond_a
    return-void
.end method

.method final setState(I)V
    .locals 3

    .line 190
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/r;->mState:I

    if-eq v1, v0, :cond_0

    .line 191
    iget-object v1, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/support/v7/widget/r;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 192
    invoke-direct {p0}, Landroid/support/v7/widget/r;->bt()V

    .line 195
    :cond_0
    if-nez p1, :cond_1

    .line 196
    iget-object v1, p0, Landroid/support/v7/widget/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->show()V

    .line 201
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/r;->mState:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/r;->oA:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/r;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 203
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;->R(I)V

    goto :goto_1

    .line 204
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 205
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;->R(I)V

    .line 207
    :cond_3
    :goto_1
    iput p1, p0, Landroid/support/v7/widget/r;->mState:I

    .line 208
    return-void
.end method

.method public final show()V
    .locals 5

    .line 228
    iget v0, p0, Landroid/support/v7/widget/r;->oV:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/r;->oV:I

    .line 234
    iget-object v1, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 240
    :goto_0
    return-void
.end method
