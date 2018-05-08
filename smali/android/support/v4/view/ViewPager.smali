.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final km:[I

.field private static final ko:Ljava/util/Comparator;

.field private static final kp:Landroid/view/animation/Interpolator;

.field private static final le:Landroid/support/v4/view/x;


# instance fields
.field private dl:Z

.field private kA:I

.field private kB:I

.field private kC:F

.field private kD:F

.field private kE:I

.field private kF:I

.field private kG:Z

.field private kH:Z

.field private kI:I

.field private kJ:Z

.field private kK:Z

.field private kL:I

.field private kM:I

.field private kN:F

.field private kO:F

.field private kP:F

.field private kQ:I

.field private kR:I

.field private kS:I

.field private kT:Z

.field private kU:Landroid/widget/EdgeEffect;

.field private kV:Landroid/widget/EdgeEffect;

.field private kW:Z

.field private kX:Z

.field private kY:I

.field private kZ:Ljava/util/List;

.field private kn:I

.field private final kq:Landroid/support/v4/view/t;

.field kr:Landroid/support/v4/view/m;

.field ks:I

.field private kt:I

.field private ku:Landroid/os/Parcelable;

.field private kv:Ljava/lang/ClassLoader;

.field private kw:Landroid/widget/Scroller;

.field private kx:Z

.field private ky:I

.field private kz:Landroid/graphics/drawable/Drawable;

.field private la:Landroid/support/v4/view/v;

.field private lb:I

.field private lc:I

.field private ld:Ljava/util/ArrayList;

.field private final lf:Ljava/lang/Runnable;

.field private mActivePointerId:I

.field private mFirstLayout:Z

.field private final mItems:Ljava/util/ArrayList;

.field private mLastMotionX:F

.field private mMaximumVelocity:I

.field private mScrollState:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->km:[I

    .line 140
    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0}, Landroid/support/v4/view/q;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ko:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroid/support/v4/view/r;

    invoke-direct {v0}, Landroid/support/v4/view/r;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->kp:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->le:Landroid/support/v4/view/x;

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 2859
    if-nez p1, :cond_0

    .line 2860
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2862
    :cond_0
    if-nez p2, :cond_1

    .line 2863
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2864
    return-object p1

    .line 2866
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2867
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2868
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2869
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2871
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2872
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2873
    check-cast p2, Landroid/view/ViewGroup;

    .line 2874
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2875
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2876
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2877
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2879
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2880
    goto :goto_0

    .line 2881
    :cond_2
    return-object p1
.end method

.method private a(IZIZ)V
    .locals 9

    .line 676
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->y(I)Landroid/support/v4/view/t;

    move-result-object p1

    .line 677
    nop

    .line 678
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 679
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result v1

    .line 680
    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->kC:F

    iget p1, p1, Landroid/support/v4/view/t;->li:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->kD:F

    .line 681
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 680
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    goto :goto_0

    .line 683
    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_7

    .line 684
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_5

    :cond_1
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    if-eqz p2, :cond_4

    iget-boolean p2, p0, Landroid/support/v4/view/ViewPager;->kx:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p2

    :goto_2
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p2

    :goto_3
    move v3, p2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    rsub-int/lit8 v6, v4, 0x0

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->h(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aN()V

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_5

    :cond_5
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float p2, p2

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v1, v7

    const v7, 0x3ef1463b

    mul-float/2addr v1, v7

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, p2

    add-float/2addr p2, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_6

    const/4 p1, 0x4

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr p1, p2

    goto :goto_4

    :cond_6
    mul-float/2addr p1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroid/support/v4/view/ViewPager;->ky:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_4
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kx:Z

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 685
    :goto_5
    if-eqz p4, :cond_9

    .line 686
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aS()V

    return-void

    .line 689
    :cond_7
    if-eqz p4, :cond_8

    .line 690
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aS()V

    .line 692
    :cond_8
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->h(Z)V

    .line 693
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 694
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aQ()Z

    .line 696
    :cond_9
    return-void
.end method

.method private a(Landroid/support/v4/view/t;ILandroid/support/v4/view/t;)V
    .locals 9

    .line 1298
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v0}, Landroid/support/v4/view/m;->getCount()I

    move-result v0

    .line 1299
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result v1

    .line 1300
    if-lez v1, :cond_0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->ky:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1302
    :goto_0
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_7

    .line 1303
    iget v4, p3, Landroid/support/v4/view/t;->position:I

    .line 1305
    iget v5, p1, Landroid/support/v4/view/t;->position:I

    if-ge v4, v5, :cond_4

    .line 1306
    nop

    .line 1307
    iget v5, p3, Landroid/support/v4/view/t;->li:F

    iget p3, p3, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v5, p3

    add-float/2addr v5, v2

    .line 1309
    add-int/lit8 v4, v4, 0x1

    .line 1310
    move p3, v1

    :goto_1
    iget v6, p1, Landroid/support/v4/view/t;->position:I

    if-gt v4, v6, :cond_3

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p3, v6, :cond_3

    .line 1311
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/t;

    .line 1312
    :goto_2
    iget v7, v6, Landroid/support/v4/view/t;->position:I

    if-le v4, v7, :cond_1

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge p3, v7, :cond_1

    .line 1313
    add-int/lit8 p3, p3, 0x1

    .line 1314
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/t;

    goto :goto_2

    .line 1316
    :cond_1
    :goto_3
    iget v7, v6, Landroid/support/v4/view/t;->position:I

    if-ge v4, v7, :cond_2

    .line 1319
    add-float v7, v3, v2

    add-float/2addr v5, v7

    .line 1320
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1322
    :cond_2
    iput v5, v6, Landroid/support/v4/view/t;->li:F

    .line 1323
    iget v6, v6, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 1310
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1325
    :cond_3
    goto :goto_7

    :cond_4
    iget v5, p1, Landroid/support/v4/view/t;->position:I

    if-le v4, v5, :cond_7

    .line 1326
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 1327
    iget p3, p3, Landroid/support/v4/view/t;->li:F

    .line 1329
    add-int/lit8 v4, v4, -0x1

    .line 1330
    :goto_4
    iget v6, p1, Landroid/support/v4/view/t;->position:I

    if-lt v4, v6, :cond_7

    if-ltz v5, :cond_7

    .line 1331
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/t;

    .line 1332
    :goto_5
    iget v7, v6, Landroid/support/v4/view/t;->position:I

    if-ge v4, v7, :cond_5

    if-lez v5, :cond_5

    .line 1333
    add-int/lit8 v5, v5, -0x1

    .line 1334
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/t;

    goto :goto_5

    .line 1336
    :cond_5
    :goto_6
    iget v7, v6, Landroid/support/v4/view/t;->position:I

    if-le v4, v7, :cond_6

    .line 1339
    add-float v7, v3, v2

    sub-float/2addr p3, v7

    .line 1340
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 1342
    :cond_6
    iget v7, v6, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v7, v2

    sub-float/2addr p3, v7

    .line 1343
    iput p3, v6, Landroid/support/v4/view/t;->li:F

    .line 1330
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 1349
    :cond_7
    :goto_7
    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1350
    iget v4, p1, Landroid/support/v4/view/t;->li:F

    .line 1351
    iget v5, p1, Landroid/support/v4/view/t;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1352
    iget v6, p1, Landroid/support/v4/view/t;->position:I

    if-nez v6, :cond_8

    iget v6, p1, Landroid/support/v4/view/t;->li:F

    goto :goto_8

    :cond_8
    const v6, -0x800001

    :goto_8
    iput v6, p0, Landroid/support/v4/view/ViewPager;->kC:F

    .line 1353
    iget v6, p1, Landroid/support/v4/view/t;->position:I

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_9

    iget v6, p1, Landroid/support/v4/view/t;->li:F

    iget v7, p1, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v3

    goto :goto_9

    :cond_9
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_9
    iput v6, p0, Landroid/support/v4/view/ViewPager;->kD:F

    .line 1356
    add-int/lit8 v6, p2, -0x1

    :goto_a
    if-ltz v6, :cond_c

    .line 1357
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/t;

    .line 1358
    :goto_b
    iget v8, v7, Landroid/support/v4/view/t;->position:I

    if-le v5, v8, :cond_a

    .line 1359
    add-int/lit8 v5, v5, -0x1

    add-float v8, v3, v2

    sub-float/2addr v4, v8

    goto :goto_b

    .line 1361
    :cond_a
    iget v8, v7, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v8, v2

    sub-float/2addr v4, v8

    .line 1362
    iput v4, v7, Landroid/support/v4/view/t;->li:F

    .line 1363
    iget v7, v7, Landroid/support/v4/view/t;->position:I

    if-nez v7, :cond_b

    iput v4, p0, Landroid/support/v4/view/ViewPager;->kC:F

    .line 1356
    :cond_b
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 1365
    :cond_c
    iget v4, p1, Landroid/support/v4/view/t;->li:F

    iget v5, p1, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 1366
    iget p1, p1, Landroid/support/v4/view/t;->position:I

    add-int/lit8 p1, p1, 0x1

    .line 1368
    add-int/lit8 p2, p2, 0x1

    :goto_c
    if-ge p2, p3, :cond_f

    .line 1369
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    .line 1370
    :goto_d
    iget v6, v5, Landroid/support/v4/view/t;->position:I

    if-ge p1, v6, :cond_d

    .line 1371
    add-int/lit8 p1, p1, 0x1

    add-float v6, v3, v2

    add-float/2addr v4, v6

    goto :goto_d

    .line 1373
    :cond_d
    iget v6, v5, Landroid/support/v4/view/t;->position:I

    if-ne v6, v0, :cond_e

    .line 1374
    iget v6, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v6, v4

    sub-float/2addr v6, v3

    iput v6, p0, Landroid/support/v4/view/ViewPager;->kD:F

    .line 1376
    :cond_e
    iput v4, v5, Landroid/support/v4/view/t;->li:F

    .line 1377
    iget v5, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 1368
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 1380
    :cond_f
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->kW:Z

    .line 1381
    return-void
.end method

.method private aM()I
    .locals 2

    .line 600
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private aO()V
    .locals 4

    .line 1282
    iget v0, p0, Landroid/support/v4/view/ViewPager;->lc:I

    if-eqz v0, :cond_2

    .line 1283
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ld:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ld:Ljava/util/ArrayList;

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ld:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1288
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1289
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1290
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1291
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ld:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1293
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ld:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->le:Landroid/support/v4/view/x;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1295
    :cond_2
    return-void
.end method

.method private aQ()Z
    .locals 2

    .line 1818
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1819
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    .line 1822
    return v1

    .line 1824
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->kX:Z

    .line 1825
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aR()V

    .line 1826
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kX:Z

    if-eqz v0, :cond_1

    .line 1830
    return v1

    .line 1827
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1832
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aU()Landroid/support/v4/view/t;

    .line 1833
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    .line 1834
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->kX:Z

    .line 1842
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aR()V

    .line 1843
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kX:Z

    if-eqz v0, :cond_3

    .line 1847
    const/4 v0, 0x1

    return v0

    .line 1844
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aS()V
    .locals 3

    .line 1940
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1944
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1945
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1951
    :cond_0
    return-void
.end method

.method private aT()Z
    .locals 2

    .line 2294
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kJ:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kK:Z

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2296
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kU:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2297
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kV:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2298
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kU:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kV:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2299
    :cond_1
    return v0

    .line 2298
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private aU()Landroid/support/v4/view/t;
    .locals 12

    .line 2363
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result v0

    .line 2364
    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 2365
    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->ky:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    .line 2366
    :cond_1
    move v0, v1

    .line 2367
    :goto_1
    nop

    .line 2368
    nop

    .line 2369
    nop

    .line 2371
    const/4 v3, 0x0

    .line 2372
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move-object v5, v3

    move v3, v6

    :goto_2
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    .line 2373
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/t;

    .line 2375
    if-nez v3, :cond_2

    iget v11, v10, Landroid/support/v4/view/t;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 2377
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->kq:Landroid/support/v4/view/t;

    .line 2378
    add-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, v10, Landroid/support/v4/view/t;->li:F

    .line 2379
    iput v7, v10, Landroid/support/v4/view/t;->position:I

    .line 2380
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v10, Landroid/support/v4/view/t;->lh:F

    .line 2381
    add-int/lit8 v1, v1, -0x1

    .line 2383
    :cond_2
    iget v8, v10, Landroid/support/v4/view/t;->li:F

    .line 2385
    nop

    .line 2386
    iget v7, v10, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    .line 2387
    if-nez v3, :cond_4

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_3

    goto :goto_3

    .line 2392
    :cond_3
    return-object v5

    .line 2388
    :cond_4
    :goto_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_6

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_5

    goto :goto_4

    .line 2394
    :cond_5
    nop

    .line 2395
    iget v7, v10, Landroid/support/v4/view/t;->position:I

    .line 2396
    nop

    .line 2397
    iget v9, v10, Landroid/support/v4/view/t;->lh:F

    .line 2398
    nop

    .line 2372
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move-object v5, v10

    goto :goto_2

    .line 2389
    :cond_6
    :goto_4
    return-object v10

    .line 2401
    :cond_7
    return-object v5
.end method

.method private e(F)Z
    .locals 9

    .line 2310
    nop

    .line 2312
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2313
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2315
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    .line 2316
    add-float/2addr p1, v0

    .line 2317
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result v0

    .line 2319
    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->kC:F

    mul-float/2addr v1, v0

    .line 2320
    iget v2, p0, Landroid/support/v4/view/ViewPager;->kD:F

    mul-float/2addr v2, v0

    .line 2321
    nop

    .line 2322
    nop

    .line 2324
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/t;

    .line 2325
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    .line 2326
    iget v6, v3, Landroid/support/v4/view/t;->position:I

    if-eqz v6, :cond_0

    .line 2327
    nop

    .line 2328
    iget v1, v3, Landroid/support/v4/view/t;->li:F

    mul-float/2addr v1, v0

    .line 2330
    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iget v6, v5, Landroid/support/v4/view/t;->position:I

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v8}, Landroid/support/v4/view/m;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2331
    nop

    .line 2332
    iget v2, v5, Landroid/support/v4/view/t;->li:F

    mul-float/2addr v2, v0

    .line 2335
    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    .line 2336
    if-eqz v3, :cond_2

    .line 2337
    sub-float p1, v1, p1

    .line 2338
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kU:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2339
    nop

    .line 2341
    move v4, v7

    .line 2351
    :cond_2
    move p1, v1

    goto :goto_2

    .line 2342
    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    .line 2343
    if-eqz v5, :cond_4

    .line 2344
    sub-float/2addr p1, v2

    .line 2345
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kV:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2346
    nop

    .line 2348
    move v4, v7

    .line 2351
    :cond_4
    move p1, v2

    :cond_5
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2352
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2353
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aQ()Z

    .line 2355
    return v4
.end method

.method private h(Z)V
    .locals 7

    .line 1974
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1975
    move v0, v1

    goto :goto_0

    .line 1974
    :cond_0
    nop

    .line 1975
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1977
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1978
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    .line 1979
    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 1980
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1981
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1982
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1983
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1984
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1985
    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1986
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1987
    if-eq v5, v3, :cond_2

    .line 1988
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aQ()Z

    .line 1993
    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->kH:Z

    .line 1994
    move v3, v0

    move v0, v2

    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1995
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/t;

    .line 1996
    iget-boolean v5, v4, Landroid/support/v4/view/t;->lg:Z

    if-eqz v5, :cond_3

    .line 1997
    nop

    .line 1998
    iput-boolean v2, v4, Landroid/support/v4/view/t;->lg:Z

    .line 1994
    move v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2001
    :cond_4
    if-eqz v3, :cond_6

    .line 2002
    if-eqz p1, :cond_5

    .line 2003
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->lf:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/n;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 2005
    :cond_5
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->lf:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2008
    :cond_6
    return-void
.end method

.method private i(Z)V
    .locals 1

    .line 2303
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2304
    if-eqz v0, :cond_0

    .line 2305
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2307
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2645
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2646
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 2649
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2650
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2651
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2652
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2653
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 2656
    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2669
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kG:Z

    if-eq v0, p1, :cond_0

    .line 2670
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->kG:Z

    .line 2681
    :cond_0
    return-void
.end method


# virtual methods
.method final a(IZZ)V
    .locals 1

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 632
    return-void
.end method

.method final a(IZZI)V
    .locals 3

    .line 635
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v0}, Landroid/support/v4/view/m;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    .line 639
    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 640
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 641
    return-void

    .line 644
    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    .line 645
    nop

    .line 649
    move p1, v1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v0}, Landroid/support/v4/view/m;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 647
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {p1}, Landroid/support/v4/view/m;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 649
    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->kI:I

    .line 650
    iget v2, p0, Landroid/support/v4/view/ViewPager;->ks:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/support/v4/view/ViewPager;->ks:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    .line 654
    :cond_4
    move v0, v1

    :goto_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 655
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/t;

    iput-boolean p3, v2, Landroid/support/v4/view/t;->lg:Z

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    :cond_5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    .line 660
    :cond_6
    move p3, v1

    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_8

    .line 663
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ks:I

    .line 664
    if-eqz p3, :cond_7

    .line 665
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aS()V

    .line 667
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    return-void

    .line 669
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->x(I)V

    .line 670
    invoke-direct {p0, p1, p2, p4, p3}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 672
    return-void

    .line 636
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 637
    return-void
.end method

.method protected final a(Landroid/view/View;ZIII)Z
    .locals 13

    move-object v0, p1

    .line 2719
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2720
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2721
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2722
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2723
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2725
    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2728
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2729
    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2730
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2731
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2732
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    .line 2731
    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2733
    return v2

    .line 2725
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 2738
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method final aN()V
    .locals 1

    .line 1092
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ks:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->x(I)V

    .line 1093
    return-void
.end method

.method final aP()Landroid/support/v4/view/t;
    .locals 3

    .line 1512
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1513
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/t;

    .line 1514
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v2}, Landroid/support/v4/view/m;->aK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1515
    return-object v1

    .line 1512
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final aR()V
    .locals 12

    .line 1865
    iget v0, p0, Landroid/support/v4/view/ViewPager;->kY:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 1866
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1867
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    .line 1868
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    .line 1869
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1870
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1871
    move v7, v4

    move v4, v3

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    .line 1872
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1873
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/u;

    .line 1874
    iget-boolean v10, v9, Landroid/support/v4/view/u;->lj:Z

    if-eqz v10, :cond_4

    .line 1876
    iget v9, v9, Landroid/support/v4/view/u;->gravity:I

    and-int/lit8 v9, v9, 0x7

    .line 1877
    if-eq v9, v2, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    .line 1880
    nop

    .line 1881
    nop

    .line 1895
    move v9, v4

    goto :goto_2

    .line 1891
    :cond_0
    sub-int v9, v5, v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1892
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    .line 1883
    :cond_1
    nop

    .line 1884
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    .line 1885
    goto :goto_2

    .line 1887
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1889
    nop

    .line 1895
    :goto_1
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_2
    add-int/2addr v4, v0

    .line 1897
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    .line 1898
    if-eqz v4, :cond_3

    .line 1899
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1871
    :cond_3
    move v4, v9

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1904
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1906
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->la:Landroid/support/v4/view/v;

    if-eqz v0, :cond_8

    .line 1907
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    .line 1908
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1909
    :goto_4
    if-ge v1, v0, :cond_8

    .line 1910
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1911
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/u;

    .line 1913
    iget-boolean v4, v4, Landroid/support/v4/view/u;->lj:Z

    if-nez v4, :cond_7

    .line 1914
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    .line 1915
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1919
    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->kX:Z

    .line 1920
    return-void
.end method

.method final aV()Z
    .locals 2

    .line 2885
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-lez v0, :cond_0

    .line 2886
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ks:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->c(IZ)V

    .line 2887
    return v1

    .line 2889
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final aW()Z
    .locals 3

    .line 2893
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ks:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v1}, Landroid/support/v4/view/m;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 2894
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ks:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->c(IZ)V

    .line 2895
    return v2

    .line 2897
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    .line 2905
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2907
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2909
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 2910
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2911
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2913
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object v4

    .line 2914
    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/t;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-ne v4, v5, :cond_0

    .line 2915
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2910
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2925
    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2929
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2930
    return-void

    .line 2932
    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2933
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    .line 2934
    return-void

    .line 2936
    :cond_4
    if-eqz p1, :cond_5

    .line 2937
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    .line 2950
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2951
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2952
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2953
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object v2

    .line 2954
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/t;->position:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-ne v2, v3, :cond_0

    .line 2955
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2950
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2959
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1472
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1475
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/u;

    .line 1477
    iget-boolean v1, v0, Landroid/support/v4/view/u;->lj:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/support/v4/view/s;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/u;->lj:Z

    .line 1478
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->dl:Z

    if-eqz v1, :cond_4

    .line 1479
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v4/view/u;->lj:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 1480
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1482
    :cond_3
    :goto_1
    iput-boolean v3, v0, Landroid/support/v4/view/u;->lk:Z

    .line 1483
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void

    .line 1485
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    return-void
.end method

.method public final arrowScroll(I)Z
    .locals 7

    .line 2793
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2794
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    .line 2795
    goto :goto_3

    .line 2796
    :cond_0
    if-eqz v0, :cond_4

    .line 2797
    nop

    .line 2798
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2800
    if-ne v4, p0, :cond_1

    .line 2801
    nop

    .line 2802
    nop

    .line 2805
    move v4, v1

    goto :goto_1

    .line 2799
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    .line 2805
    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    .line 2807
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 2811
    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2813
    :cond_3
    const-string v0, "ViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2814
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2813
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    goto :goto_3

    .line 2819
    :cond_4
    move-object v3, v0

    .line 2821
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2823
    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    .line 2824
    if-ne p1, v5, :cond_6

    .line 2827
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2828
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2829
    if-eqz v3, :cond_5

    if-lt v1, v2, :cond_5

    .line 2830
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aV()Z

    move-result v2

    goto :goto_5

    .line 2832
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2834
    goto :goto_5

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2837
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2838
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2839
    if-eqz v3, :cond_7

    if-le v1, v2, :cond_a

    .line 2840
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2844
    goto :goto_5

    .line 2845
    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_4

    .line 2848
    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2850
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aW()Z

    move-result v2

    goto :goto_5

    .line 2847
    :cond_b
    :goto_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aV()Z

    move-result v2

    .line 2852
    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    .line 2853
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2855
    :cond_d
    return v2
.end method

.method public final c(IZ)V
    .locals 1

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kH:Z

    .line 623
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 624
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2692
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2693
    return v1

    .line 2696
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result v0

    .line 2697
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2698
    const/4 v3, 0x1

    if-gez p1, :cond_2

    .line 2699
    int-to-float p1, v0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->kC:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    return v3

    :cond_1
    return v1

    .line 2700
    :cond_2
    if-lez p1, :cond_4

    .line 2701
    int-to-float p1, v0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->kD:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    return v3

    :cond_3
    return v1

    .line 2703
    :cond_4
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3029
    instance-of v0, p1, Landroid/support/v4/view/u;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1793
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kx:Z

    .line 1794
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1795
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1796
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1797
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1798
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1800
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1801
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1802
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aQ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1803
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1804
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1809
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1810
    return-void

    .line 1814
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->h(Z)V

    .line 1815
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 2744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x2

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aW()Z

    move-result p1

    goto :goto_2

    :cond_0
    const/16 p1, 0x42

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aV()Z

    move-result p1

    goto :goto_2

    :cond_1
    const/16 p1, 0x11

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v2

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    return v2

    :cond_6
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 2997
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3002
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 3003
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3004
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3005
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3006
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object v4

    .line 3007
    if-eqz v4, :cond_1

    iget v4, v4, Landroid/support/v4/view/t;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-ne v4, v5, :cond_1

    .line 3008
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3009
    const/4 p1, 0x1

    return p1

    .line 3003
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3014
    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2427
    nop

    .line 2429
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getOverScrollMode()I

    move-result v0

    .line 2430
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    .line 2432
    invoke-virtual {v0}, Landroid/support/v4/view/m;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2456
    :cond_0
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->kU:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2457
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->kV:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2433
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kU:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2435
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2436
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 2438
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2439
    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->kC:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->kU:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2441
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kU:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2442
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2444
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kV:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2446
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2447
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2449
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2450
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->kD:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2451
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->kV:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2452
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->kV:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2453
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2454
    nop

    .line 2460
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2462
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 2464
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 915
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 916
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kz:Landroid/graphics/drawable/Drawable;

    .line 917
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 920
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3019
    new-instance v0, Landroid/support/v4/view/u;

    invoke-direct {v0}, Landroid/support/v4/view/u;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3034
    new-instance v0, Landroid/support/v4/view/u;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3024
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 802
    iget v0, p0, Landroid/support/v4/view/ViewPager;->lc:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 803
    :cond_0
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->ld:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/u;

    iget p1, p1, Landroid/support/v4/view/u;->ll:I

    .line 805
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1544
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1546
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 479
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->lf:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 481
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 485
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2468
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2471
    iget v1, v0, Landroid/support/v4/view/ViewPager;->ky:I

    if-lez v1, :cond_3

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->kz:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    if-eqz v1, :cond_3

    .line 2472
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 2473
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2475
    iget v3, v0, Landroid/support/v4/view/ViewPager;->ky:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2476
    nop

    .line 2477
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    .line 2478
    iget v7, v5, Landroid/support/v4/view/t;->li:F

    .line 2479
    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2480
    iget v9, v5, Landroid/support/v4/view/t;->position:I

    .line 2481
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/t;

    iget v10, v10, Landroid/support/v4/view/t;->position:I

    .line 2482
    :goto_0
    if-ge v9, v10, :cond_3

    .line 2483
    :goto_1
    iget v11, v5, Landroid/support/v4/view/t;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2484
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_1

    .line 2488
    :cond_0
    iget v11, v5, Landroid/support/v4/view/t;->position:I

    if-ne v9, v11, :cond_1

    .line 2489
    iget v7, v5, Landroid/support/v4/view/t;->li:F

    iget v11, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v7, v11

    mul-float/2addr v7, v4

    .line 2490
    iget v11, v5, Landroid/support/v4/view/t;->li:F

    iget v12, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    .line 2497
    move v12, v7

    move v7, v11

    goto :goto_2

    .line 2492
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    .line 2494
    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 2497
    :goto_2
    iget v11, v0, Landroid/support/v4/view/ViewPager;->ky:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    .line 2498
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->kz:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroid/support/v4/view/ViewPager;->kA:I

    iget v15, v0, Landroid/support/v4/view/ViewPager;->ky:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    .line 2499
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroid/support/v4/view/ViewPager;->kB:I

    .line 2498
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2500
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->kz:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 2503
    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-gtz v3, :cond_3

    .line 2504
    add-int/lit8 v9, v9, 0x1

    .line 2482
    move/from16 v3, v16

    goto :goto_0

    .line 2508
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    .line 2031
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2034
    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    .line 2043
    :cond_0
    if-eqz v0, :cond_2

    .line 2044
    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->kJ:Z

    if-eqz v1, :cond_1

    .line 2046
    return v9

    .line 2048
    :cond_1
    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->kK:Z

    if-eqz v1, :cond_2

    .line 2050
    return v8

    .line 2054
    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 2148
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2065
    :cond_4
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2066
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 2068
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2072
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2073
    iget v1, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 2074
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2075
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2076
    iget v0, v6, Landroid/support/v4/view/ViewPager;->kP:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 2079
    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_8

    iget v2, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v3, v6, Landroid/support/v4/view/ViewPager;->kM:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    if-gtz v14, :cond_6

    :cond_5
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    iget v4, v6, Landroid/support/v4/view/ViewPager;->kM:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    :cond_6
    move v0, v9

    goto :goto_0

    :cond_7
    move v0, v8

    :goto_0
    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    .line 2080
    move-object v0, v6

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2082
    iput v10, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2083
    iput v12, v6, Landroid/support/v4/view/ViewPager;->kN:F

    .line 2084
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->kK:Z

    .line 2085
    return v8

    .line 2087
    :cond_8
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_a

    .line 2089
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->kJ:Z

    .line 2090
    invoke-direct {v6, v9}, Landroid/support/v4/view/ViewPager;->i(Z)V

    .line 2091
    invoke-virtual {v6, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2092
    if-lez v14, :cond_9

    iget v0, v6, Landroid/support/v4/view/ViewPager;->kO:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_9
    iget v0, v6, Landroid/support/v4/view/ViewPager;->kO:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_1
    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2094
    iput v12, v6, Landroid/support/v4/view/ViewPager;->kN:F

    .line 2095
    invoke-direct {v6, v9}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 2096
    :cond_a
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_b

    .line 2102
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->kK:Z

    .line 2104
    :cond_b
    :goto_2
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->kJ:Z

    if-eqz v0, :cond_e

    .line 2106
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->e(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2107
    invoke-static {v6}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    goto :goto_3

    .line 2118
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->kO:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->kP:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->kN:F

    .line 2120
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2121
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->kK:Z

    .line 2123
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->kx:Z

    .line 2124
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2125
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, v1, :cond_d

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    .line 2126
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroid/support/v4/view/ViewPager;->kS:I

    if-le v0, v1, :cond_d

    .line 2128
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2129
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->kH:Z

    .line 2130
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->aN()V

    .line 2131
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->kJ:Z

    .line 2132
    invoke-direct {v6, v9}, Landroid/support/v4/view/ViewPager;->i(Z)V

    .line 2133
    invoke-virtual {v6, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_3

    .line 2135
    :cond_d
    invoke-direct {v6, v8}, Landroid/support/v4/view/ViewPager;->h(Z)V

    .line 2136
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->kJ:Z

    .line 2144
    nop

    .line 2152
    :cond_e
    :goto_3
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    .line 2153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2155
    :cond_f
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2161
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->kJ:Z

    return v0

    .line 2037
    :cond_10
    :goto_4
    invoke-direct {v6}, Landroid/support/v4/view/ViewPager;->aT()Z

    .line 2038
    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1683
    sub-int v2, p4, p2

    .line 1684
    sub-int v3, p5, p3

    .line 1685
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1687
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1688
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1689
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    .line 1691
    nop

    .line 1695
    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 1696
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1697
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1698
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/u;

    .line 1699
    iget-boolean v14, v12, Landroid/support/v4/view/u;->lj:Z

    if-eqz v14, :cond_6

    .line 1702
    iget v14, v12, Landroid/support/v4/view/u;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1703
    iget v12, v12, Landroid/support/v4/view/u;->gravity:I

    and-int/lit8 v12, v12, 0x70

    .line 1704
    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    .line 1706
    nop

    .line 1707
    nop

    .line 1721
    move v14, v5

    goto :goto_1

    .line 1717
    :cond_0
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1718
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1709
    :cond_1
    nop

    .line 1710
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    .line 1711
    nop

    .line 1721
    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_1

    .line 1713
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1715
    nop

    .line 1721
    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    .line 1723
    nop

    .line 1724
    nop

    .line 1738
    move v12, v7

    goto :goto_2

    .line 1734
    :cond_3
    sub-int v12, v3, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1735
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 1726
    :cond_4
    nop

    .line 1727
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    .line 1728
    nop

    .line 1738
    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    .line 1730
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1732
    nop

    .line 1738
    :goto_2
    add-int/2addr v14, v8

    .line 1739
    nop

    .line 1740
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 1741
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    .line 1739
    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 1742
    add-int/lit8 v11, v11, 0x1

    .line 1695
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1747
    :cond_7
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    .line 1749
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    .line 1750
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1751
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    .line 1752
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/u;

    .line 1754
    iget-boolean v9, v8, Landroid/support/v4/view/u;->lj:Z

    if-nez v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1755
    int-to-float v13, v2

    iget v9, v9, Landroid/support/v4/view/t;->li:F

    mul-float/2addr v9, v13

    float-to-int v9, v9

    .line 1756
    add-int/2addr v9, v5

    .line 1757
    nop

    .line 1758
    iget-boolean v14, v8, Landroid/support/v4/view/u;->lk:Z

    if-eqz v14, :cond_8

    .line 1761
    const/4 v14, 0x0

    iput-boolean v14, v8, Landroid/support/v4/view/u;->lk:Z

    .line 1762
    iget v8, v8, Landroid/support/v4/view/u;->lh:F

    mul-float/2addr v13, v8

    float-to-int v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1765
    sub-int v14, v3, v7

    sub-int/2addr v14, v10

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1768
    invoke-virtual {v6, v8, v13}, Landroid/view/View;->measure(II)V

    .line 1775
    :cond_8
    nop

    .line 1776
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    .line 1777
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 1775
    invoke-virtual {v6, v9, v7, v8, v13}, Landroid/view/View;->layout(IIII)V

    .line 1749
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1781
    :cond_a
    iput v7, v0, Landroid/support/v4/view/ViewPager;->kA:I

    .line 1782
    sub-int/2addr v3, v10

    iput v3, v0, Landroid/support/v4/view/ViewPager;->kB:I

    .line 1783
    iput v11, v0, Landroid/support/v4/view/ViewPager;->kY:I

    .line 1785
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1786
    iget v1, v0, Landroid/support/v4/view/ViewPager;->ks:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_4

    .line 1788
    :cond_b
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1789
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 1555
    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v2

    .line 1556
    move/from16 v3, p2

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1555
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v2

    .line 1559
    div-int/lit8 v3, v2, 0xa

    .line 1560
    iget v4, v0, Landroid/support/v4/view/ViewPager;->kL:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/support/v4/view/ViewPager;->kM:I

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1571
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1572
    move v5, v3

    move v3, v2

    move v2, v1

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_c

    .line 1573
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1574
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    .line 1575
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/u;

    .line 1576
    if-eqz v6, :cond_b

    iget-boolean v10, v6, Landroid/support/v4/view/u;->lj:Z

    if-eqz v10, :cond_b

    .line 1577
    iget v10, v6, Landroid/support/v4/view/u;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1578
    iget v11, v6, Landroid/support/v4/view/u;->gravity:I

    and-int/lit8 v11, v11, 0x70

    .line 1579
    nop

    .line 1580
    nop

    .line 1581
    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    .line 1582
    :cond_0
    move v11, v1

    goto :goto_2

    .line 1581
    :cond_1
    :goto_1
    nop

    .line 1582
    move v11, v7

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    .line 1584
    :cond_2
    move v7, v1

    goto :goto_4

    .line 1582
    :cond_3
    :goto_3
    nop

    .line 1584
    :goto_4
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    .line 1585
    nop

    .line 1590
    move v12, v10

    move v10, v8

    goto :goto_5

    .line 1586
    :cond_4
    if-eqz v7, :cond_5

    .line 1587
    nop

    .line 1590
    move v12, v8

    goto :goto_5

    :cond_5
    move v12, v10

    .line 1591
    :goto_5
    nop

    .line 1592
    iget v13, v6, Landroid/support/v4/view/u;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    .line 1593
    nop

    .line 1594
    iget v10, v6, Landroid/support/v4/view/u;->width:I

    if-eq v10, v14, :cond_6

    .line 1595
    iget v10, v6, Landroid/support/v4/view/u;->width:I

    .line 1598
    move v13, v10

    goto :goto_6

    :cond_6
    move v13, v3

    :goto_6
    move v10, v8

    goto :goto_7

    :cond_7
    move v13, v3

    :goto_7
    iget v1, v6, Landroid/support/v4/view/u;->height:I

    if-eq v1, v15, :cond_9

    .line 1599
    nop

    .line 1600
    iget v1, v6, Landroid/support/v4/view/u;->height:I

    if-eq v1, v14, :cond_8

    .line 1601
    iget v1, v6, Landroid/support/v4/view/u;->height:I

    goto :goto_8

    .line 1604
    :cond_8
    move v1, v5

    goto :goto_8

    :cond_9
    move v1, v5

    move v8, v12

    :goto_8
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1605
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1606
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    .line 1608
    if-eqz v11, :cond_a

    .line 1609
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_9

    .line 1610
    :cond_a
    if-eqz v7, :cond_b

    .line 1611
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    .line 1572
    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1617
    :cond_c
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager;->kE:I

    .line 1618
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager;->kF:I

    .line 1621
    iput-boolean v7, v0, Landroid/support/v4/view/ViewPager;->dl:Z

    .line 1622
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aN()V

    .line 1623
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->dl:Z

    .line 1626
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1627
    :goto_a
    if-ge v1, v2, :cond_f

    .line 1628
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1629
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_e

    .line 1634
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/u;

    .line 1635
    if-eqz v5, :cond_d

    iget-boolean v7, v5, Landroid/support/v4/view/u;->lj:Z

    if-nez v7, :cond_e

    .line 1636
    :cond_d
    int-to-float v7, v3

    iget v5, v5, Landroid/support/v4/view/u;->lh:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1638
    iget v7, v0, Landroid/support/v4/view/ViewPager;->kF:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    .line 1627
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1642
    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2970
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2971
    and-int/lit8 v1, p1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 2972
    nop

    .line 2973
    nop

    .line 2974
    nop

    .line 2980
    move v2, v0

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 2976
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2977
    nop

    .line 2978
    nop

    .line 2980
    move v1, v2

    :goto_0
    if-eq v0, v2, :cond_2

    .line 2981
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2982
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2983
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object v6

    .line 2984
    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/t;->position:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-ne v6, v7, :cond_1

    .line 2985
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2986
    return v4

    .line 2980
    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 2991
    :cond_2
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1452
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1454
    return-void

    .line 1457
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1458
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->jR:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->lm:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->ln:Ljava/lang/ClassLoader;

    .line 1462
    iget p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void

    .line 1464
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->kt:I

    .line 1465
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->lm:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ku:Landroid/os/Parcelable;

    .line 1466
    iget-object p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->ln:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->kv:Ljava/lang/ClassLoader;

    .line 1468
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1441
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1442
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1443
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ks:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1444
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    if-eqz v0, :cond_0

    .line 1445
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->lm:Landroid/os/Parcelable;

    .line 1447
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1649
    if-eq p1, p3, :cond_3

    .line 1650
    iget p2, p0, Landroid/support/v4/view/ViewPager;->ky:I

    iget p4, p0, Landroid/support/v4/view/ViewPager;->ky:I

    if-lez p3, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    iget p2, p0, Landroid/support/v4/view/ViewPager;->ks:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result p2

    sub-int/2addr p3, p2

    add-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    return-void

    :cond_1
    iget p2, p0, Landroid/support/v4/view/ViewPager;->ks:I

    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPager;->y(I)Landroid/support/v4/view/t;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Landroid/support/v4/view/t;->li:F

    iget p3, p0, Landroid/support/v4/view/ViewPager;->kD:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;->h(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1652
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 2166
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2170
    return v1

    .line 2173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2176
    return v2

    .line 2179
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v0}, Landroid/support/v4/view/m;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 2184
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2185
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2187
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2190
    nop

    .line 2192
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2282
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2283
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_3

    .line 2275
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2276
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2277
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2278
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2279
    goto/16 :goto_3

    .line 2269
    :pswitch_3
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->kJ:Z

    if-eqz p1, :cond_b

    .line 2270
    iget p1, p0, Landroid/support/v4/view/ViewPager;->ks:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 2271
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aT()Z

    move-result v2

    goto/16 :goto_3

    .line 2205
    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kJ:Z

    if-nez v0, :cond_6

    .line 2206
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2207
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 2210
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aT()Z

    move-result v2

    .line 2211
    goto/16 :goto_3

    .line 2213
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2214
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2215
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2216
    iget v5, p0, Landroid/support/v4/view/ViewPager;->kN:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2220
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 2222
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->kJ:Z

    .line 2223
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->i(Z)V

    .line 2224
    iget v4, p0, Landroid/support/v4/view/ViewPager;->kO:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget v3, p0, Landroid/support/v4/view/ViewPager;->kO:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_0

    :cond_5
    iget v3, p0, Landroid/support/v4/view/ViewPager;->kO:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_0
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2226
    iput v0, p0, Landroid/support/v4/view/ViewPager;->kN:F

    .line 2227
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2228
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2231
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2232
    if-eqz v0, :cond_6

    .line 2233
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    :cond_6
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kJ:Z

    if-eqz v0, :cond_b

    .line 2240
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2241
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2242
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->e(F)Z

    move-result p1

    or-int/2addr v2, p1

    .line 2243
    goto/16 :goto_3

    .line 2246
    :pswitch_5
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->kJ:Z

    if-eqz v0, :cond_b

    .line 2247
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2248
    const/16 v3, 0x3e8

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2249
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2250
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->kH:Z

    .line 2251
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result v3

    .line 2252
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 2253
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aU()Landroid/support/v4/view/t;

    move-result-object v5

    .line 2254
    iget v6, p0, Landroid/support/v4/view/ViewPager;->ky:I

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 2255
    iget v7, v5, Landroid/support/v4/view/t;->position:I

    .line 2256
    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v3, v5, Landroid/support/v4/view/t;->li:F

    sub-float/2addr v4, v3

    iget v3, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v3, v6

    div-float/2addr v4, v3

    .line 2258
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2259
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2260
    iget v3, p0, Landroid/support/v4/view/ViewPager;->kO:F

    sub-float/2addr p1, v3

    float-to-int p1, p1

    .line 2261
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->kR:I

    if-le p1, v3, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->kQ:I

    if-le p1, v3, :cond_8

    if-lez v0, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    iget p1, p0, Landroid/support/v4/view/ViewPager;->ks:I

    if-lt v7, p1, :cond_9

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_9
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    add-float/2addr v4, p1

    float-to-int p1, v4

    add-int/2addr v7, p1

    :goto_2
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/t;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/t;

    iget p1, p1, Landroid/support/v4/view/t;->position:I

    iget v2, v2, Landroid/support/v4/view/t;->position:I

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2263
    :cond_a
    invoke-virtual {p0, v7, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 2265
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->aT()Z

    move-result v2

    .line 2266
    goto :goto_3

    .line 2194
    :pswitch_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kw:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2195
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->kH:Z

    .line 2196
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aN()V

    .line 2199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->kO:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->kP:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->kN:F

    .line 2201
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2202
    nop

    .line 2286
    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    .line 2287
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 2289
    :cond_c
    return v1

    .line 2181
    :cond_d
    :goto_4
    return v2

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

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1504
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->dl:Z

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    return-void

    .line 1507
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1509
    return-void
.end method

.method final setScrollState(I)V
    .locals 6

    .line 488
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 489
    return-void

    .line 492
    :cond_0
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 493
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->la:Landroid/support/v4/view/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 495
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    if-eqz p1, :cond_2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->lb:I

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 497
    :cond_3
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kZ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 498
    :cond_4
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->kz:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final w(I)Landroid/support/v4/view/t;
    .locals 1

    .line 1008
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    .line 1009
    iput p1, v0, Landroid/support/v4/view/t;->position:I

    .line 1010
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Required method instantiateItem was not overridden"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final w(Landroid/view/View;)Landroid/support/v4/view/t;
    .locals 1

    .line 1523
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, p0, :cond_2

    .line 1524
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1527
    :cond_0
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1525
    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1529
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object p1

    return-object p1
.end method

.method final x(I)V
    .locals 18

    move-object/from16 v1, p0

    .line 1096
    move/from16 v0, p1

    .line 1097
    iget v2, v1, Landroid/support/v4/view/ViewPager;->ks:I

    if-eq v2, v0, :cond_0

    .line 1098
    iget v2, v1, Landroid/support/v4/view/ViewPager;->ks:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->y(I)Landroid/support/v4/view/t;

    move-result-object v2

    .line 1099
    iput v0, v1, Landroid/support/v4/view/ViewPager;->ks:I

    goto :goto_0

    .line 1102
    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    if-nez v0, :cond_1

    .line 1103
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aO()V

    .line 1104
    return-void

    .line 1111
    :cond_1
    iget-boolean v0, v1, Landroid/support/v4/view/ViewPager;->kH:Z

    if-eqz v0, :cond_2

    .line 1113
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aO()V

    .line 1114
    return-void

    .line 1120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1121
    return-void

    .line 1124
    :cond_3
    iget v0, v1, Landroid/support/v4/view/ViewPager;->kI:I

    .line 1127
    iget v4, v1, Landroid/support/v4/view/ViewPager;->ks:I

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1128
    iget-object v6, v1, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v6}, Landroid/support/v4/view/m;->getCount()I

    move-result v6

    .line 1129
    add-int/lit8 v7, v6, -0x1

    iget v8, v1, Landroid/support/v4/view/ViewPager;->ks:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1131
    iget v7, v1, Landroid/support/v4/view/ViewPager;->kn:I

    if-ne v6, v7, :cond_20

    .line 1147
    nop

    .line 1149
    move v7, v5

    :goto_1
    iget-object v8, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1150
    iget-object v8, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/t;

    .line 1151
    iget v9, v8, Landroid/support/v4/view/t;->position:I

    iget v10, v1, Landroid/support/v4/view/ViewPager;->ks:I

    if-lt v9, v10, :cond_4

    .line 1152
    iget v9, v8, Landroid/support/v4/view/t;->position:I

    iget v10, v1, Landroid/support/v4/view/ViewPager;->ks:I

    if-ne v9, v10, :cond_5

    goto :goto_2

    .line 1149
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1157
    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1158
    iget v8, v1, Landroid/support/v4/view/ViewPager;->ks:I

    invoke-virtual {v1, v8}, Landroid/support/v4/view/ViewPager;->w(I)Landroid/support/v4/view/t;

    move-result-object v8

    .line 1164
    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_19

    .line 1165
    nop

    .line 1166
    add-int/lit8 v10, v7, -0x1

    .line 1167
    if-ltz v10, :cond_7

    iget-object v11, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/t;

    goto :goto_3

    .line 1168
    :cond_7
    const/4 v11, 0x0

    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aM()I

    move-result v12

    .line 1169
    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    .line 1171
    move v3, v9

    goto :goto_4

    .line 1169
    :cond_8
    iget v14, v8, Landroid/support/v4/view/t;->lh:F

    sub-float v14, v13, v14

    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float v3, v14, v15

    .line 1171
    :goto_4
    iget v14, v1, Landroid/support/v4/view/ViewPager;->ks:I

    add-int/lit8 v14, v14, -0x1

    move v15, v10

    move v10, v7

    move v7, v9

    :goto_5
    if-ltz v14, :cond_f

    .line 1172
    cmpl-float v16, v7, v3

    if-ltz v16, :cond_a

    if-ge v14, v4, :cond_a

    .line 1173
    if-eqz v11, :cond_f

    .line 1174
    iget v5, v11, Landroid/support/v4/view/t;->position:I

    if-ne v14, v5, :cond_e

    iget-boolean v5, v11, Landroid/support/v4/view/t;->lg:Z

    if-nez v5, :cond_e

    .line 1177
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1178
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v5}, Landroid/support/v4/view/m;->aJ()V

    .line 1183
    add-int/lit8 v15, v15, -0x1

    .line 1184
    add-int/lit8 v10, v10, -0x1

    .line 1185
    if-ltz v15, :cond_9

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_7

    :cond_9
    goto :goto_6

    .line 1187
    :cond_a
    if-eqz v11, :cond_c

    iget v5, v11, Landroid/support/v4/view/t;->position:I

    if-ne v14, v5, :cond_c

    .line 1188
    iget v5, v11, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v7, v5

    .line 1189
    add-int/lit8 v15, v15, -0x1

    .line 1190
    if-ltz v15, :cond_b

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_7

    :cond_b
    goto :goto_6

    .line 1192
    :cond_c
    invoke-virtual {v1, v14}, Landroid/support/v4/view/ViewPager;->w(I)Landroid/support/v4/view/t;

    move-result-object v5

    .line 1193
    iget v5, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v7, v5

    .line 1194
    add-int/lit8 v10, v10, 0x1

    .line 1195
    if-ltz v15, :cond_d

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_7

    .line 1171
    :cond_d
    :goto_6
    const/4 v5, 0x0

    :goto_7
    move-object v11, v5

    :cond_e
    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 1199
    :cond_f
    iget v3, v8, Landroid/support/v4/view/t;->lh:F

    .line 1200
    add-int/lit8 v4, v10, 0x1

    .line 1201
    cmpg-float v5, v3, v13

    if-gez v5, :cond_18

    .line 1202
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_8

    .line 1203
    :cond_10
    const/4 v5, 0x0

    :goto_8
    if-gtz v12, :cond_11

    .line 1205
    move v7, v9

    goto :goto_9

    .line 1204
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v11, v12

    div-float/2addr v7, v11

    add-float/2addr v7, v13

    .line 1205
    :goto_9
    iget v11, v1, Landroid/support/v4/view/ViewPager;->ks:I

    :goto_a
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_18

    .line 1206
    cmpl-float v12, v3, v7

    if-ltz v12, :cond_13

    if-le v11, v0, :cond_13

    .line 1207
    if-eqz v5, :cond_18

    .line 1208
    iget v12, v5, Landroid/support/v4/view/t;->position:I

    if-ne v11, v12, :cond_17

    iget-boolean v12, v5, Landroid/support/v4/view/t;->lg:Z

    if-nez v12, :cond_17

    .line 1211
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1212
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    invoke-virtual {v5}, Landroid/support/v4/view/m;->aJ()V

    .line 1217
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_c

    .line 1205
    :cond_12
    :goto_b
    const/4 v5, 0x0

    goto :goto_c

    .line 1219
    :cond_13
    if-eqz v5, :cond_15

    iget v12, v5, Landroid/support/v4/view/t;->position:I

    if-ne v11, v12, :cond_15

    .line 1220
    iget v5, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v3, v5

    .line 1221
    add-int/lit8 v4, v4, 0x1

    .line 1222
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_c

    :cond_14
    goto :goto_b

    .line 1224
    :cond_15
    invoke-virtual {v1, v11}, Landroid/support/v4/view/ViewPager;->w(I)Landroid/support/v4/view/t;

    move-result-object v5

    .line 1225
    add-int/lit8 v4, v4, 0x1

    .line 1226
    iget v5, v5, Landroid/support/v4/view/t;->lh:F

    add-float/2addr v3, v5

    .line 1227
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/t;

    goto :goto_c

    :cond_16
    goto :goto_b

    .line 1205
    :cond_17
    :goto_c
    goto :goto_a

    .line 1232
    :cond_18
    invoke-direct {v1, v8, v10, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/t;ILandroid/support/v4/view/t;)V

    .line 1234
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1249
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1b

    .line 1250
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1251
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/u;

    .line 1252
    iput v2, v3, Landroid/support/v4/view/u;->ll:I

    .line 1253
    iget-boolean v4, v3, Landroid/support/v4/view/u;->lj:Z

    if-nez v4, :cond_1a

    iget v4, v3, Landroid/support/v4/view/u;->lh:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_1a

    .line 1255
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object v4

    .line 1256
    if-eqz v4, :cond_1a

    .line 1257
    iget v5, v4, Landroid/support/v4/view/t;->lh:F

    iput v5, v3, Landroid/support/v4/view/u;->lh:F

    .line 1258
    iget v4, v4, Landroid/support/v4/view/t;->position:I

    iput v4, v3, Landroid/support/v4/view/u;->position:I

    .line 1249
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1262
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aO()V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->w(Landroid/view/View;)Landroid/support/v4/view/t;

    move-result-object v3

    goto :goto_e

    .line 1267
    :cond_1c
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_1d

    iget v0, v3, Landroid/support/v4/view/t;->position:I

    iget v2, v1, Landroid/support/v4/view/ViewPager;->ks:I

    if-eq v0, v2, :cond_1f

    .line 1268
    :cond_1d
    const/4 v0, 0x0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 1269
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->aP()Landroid/support/v4/view/t;

    move-result-object v3

    .line 1271
    if-eqz v3, :cond_1e

    iget v3, v3, Landroid/support/v4/view/t;->position:I

    iget v4, v1, Landroid/support/v4/view/ViewPager;->ks:I

    if-ne v3, v4, :cond_1e

    .line 1272
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1273
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1279
    :cond_1f
    return-void

    .line 1134
    :cond_20
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    goto :goto_10

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1138
    :goto_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/support/v4/view/ViewPager;->kn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Pager class: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Problematic adapter: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->kr:Landroid/support/v4/view/m;

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final y(I)Landroid/support/v4/view/t;
    .locals 3

    .line 1533
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1534
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/t;

    .line 1535
    iget v2, v1, Landroid/support/v4/view/t;->position:I

    if-ne v2, p1, :cond_0

    .line 1536
    return-object v1

    .line 1533
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1539
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
