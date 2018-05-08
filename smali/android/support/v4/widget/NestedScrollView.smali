.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/g;
.implements Landroid/support/v4/view/j;


# static fields
.field private static final mE:Landroid/support/v4/widget/n;

.field private static final mF:[I


# instance fields
.field private kJ:Z

.field private kQ:I

.field private mA:Z

.field private mActivePointerId:I

.field private mB:I

.field private mC:I

.field private mD:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final mG:Landroid/support/v4/view/k;

.field private final mH:Landroid/support/v4/view/h;

.field private mI:F

.field private mMaximumVelocity:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mr:J

.field private ms:Landroid/widget/OverScroller;

.field private mt:Landroid/widget/EdgeEffect;

.field private mu:Landroid/widget/EdgeEffect;

.field private mv:I

.field private mw:Z

.field private mx:Z

.field private my:Landroid/view/View;

.field private mz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 175
    new-instance v0, Landroid/support/v4/widget/n;

    invoke-direct {v0}, Landroid/support/v4/widget/n;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->mE:Landroid/support/v4/widget/n;

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->mF:[I

    return-void
.end method

.method private D(I)V
    .locals 2

    .line 1349
    if-eqz p1, :cond_1

    .line 1350
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mA:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void

    .line 1353
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1356
    :cond_1
    return-void
.end method

.method private E(I)V
    .locals 13

    .line 1801
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1802
    const/4 v1, 0x1

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    .line 1803
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v2

    if-lt v0, v2, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1804
    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    int-to-float v2, p1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1805
    invoke-virtual {p0, v3, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1806
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->mC:I

    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1808
    :cond_3
    return-void
.end method

.method private I(Landroid/view/View;)Z
    .locals 2

    .line 1328
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private J(Landroid/view/View;)V
    .locals 1

    .line 1546
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1549
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1551
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1553
    if-eqz p1, :cond_0

    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1556
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1772
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1773
    return v0

    .line 1776
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1777
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(III)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1241
    move/from16 v3, p3

    .line 1243
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    .line 1244
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    .line 1245
    add-int/2addr v4, v5

    .line 1246
    const/16 v8, 0x21

    if-ne v1, v8, :cond_0

    .line 1248
    const/4 v8, 0x1

    goto :goto_0

    .line 1246
    :cond_0
    nop

    .line 1248
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move-object v12, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v10, v11, :cond_9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v2, v6, :cond_8

    if-ge v15, v3, :cond_8

    if-ge v2, v15, :cond_1

    if-ge v6, v3, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    :goto_2
    if-nez v12, :cond_2

    move-object v12, v14

    move/from16 v13, v17

    goto :goto_5

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v15, v7, :cond_4

    :cond_3
    if-nez v8, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v6, v7, :cond_5

    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-eqz v13, :cond_6

    if-eqz v17, :cond_8

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_6
    if-eqz v17, :cond_7

    move-object v12, v14

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_8

    :goto_4
    move-object v12, v14

    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1249
    :cond_9
    if-nez v12, :cond_a

    .line 1250
    nop

    .line 1253
    move-object v12, v0

    :cond_a
    if-lt v2, v5, :cond_b

    if-gt v3, v4, :cond_b

    .line 1254
    nop

    .line 1260
    const/16 v16, 0x0

    goto :goto_7

    .line 1256
    :cond_b
    if-eqz v8, :cond_c

    sub-int/2addr v2, v5

    goto :goto_6

    :cond_c
    sub-int v2, v3, v4

    .line 1257
    :goto_6
    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->D(I)V

    .line 1260
    const/16 v16, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_d

    invoke-virtual {v12, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1262
    :cond_d
    return v16
.end method

.method private b(Landroid/view/View;II)Z
    .locals 1

    .line 1336
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1337
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1339
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1340
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private bd()V
    .locals 1

    .line 658
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 661
    :cond_0
    return-void
.end method

.method private be()V
    .locals 1

    .line 664
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 668
    :cond_0
    return-void
.end method

.method private bg()V
    .locals 2

    .line 1841
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1842
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 1843
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1844
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    .line 1845
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    .line 1846
    return-void

    .line 1848
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    .line 1849
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    .line 1851
    :cond_1
    return-void
.end method

.method private static clamp(III)I
    .locals 1

    .line 1905
    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    .line 1923
    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1929
    sub-int/2addr p2, p1

    return p2

    .line 1931
    :cond_1
    return p0

    .line 1921
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private endDrag()V
    .locals 1

    .line 1811
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    .line 1813
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->be()V

    .line 1814
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1816
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1818
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1820
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 947
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 948
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 949
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 953
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 954
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mv:I

    .line 955
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 956
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 957
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 960
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(II[II)V
    .locals 6

    .line 331
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 332
    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 307
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mG:Landroid/support/v4/view/k;

    iput p2, p1, Landroid/support/v4/view/k;->jZ:I

    .line 308
    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 309
    return-void
.end method

.method public final a(II)Z
    .locals 0

    .line 301
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final a(IIIIIIII)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1017
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v1

    .line 1018
    nop

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    .line 1020
    move v2, v5

    goto :goto_0

    .line 1019
    :cond_0
    nop

    .line 1020
    move v2, v4

    .line 1021
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_1

    .line 1022
    move v3, v5

    goto :goto_1

    .line 1021
    :cond_1
    nop

    .line 1022
    move v3, v4

    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1024
    :cond_2
    move v2, v4

    goto :goto_3

    .line 1022
    :cond_3
    :goto_2
    nop

    .line 1024
    move v2, v5

    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    .line 1027
    :cond_4
    move v1, v4

    goto :goto_5

    .line 1024
    :cond_5
    :goto_4
    nop

    .line 1027
    move v1, v5

    :goto_5
    add-int v3, p3, p1

    .line 1028
    if-nez v2, :cond_6

    .line 1029
    nop

    .line 1032
    move v2, v4

    goto :goto_6

    :cond_6
    move/from16 v2, p7

    :goto_6
    add-int v6, p4, p2

    .line 1033
    if-nez v1, :cond_7

    .line 1034
    nop

    .line 1038
    move v1, v4

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    neg-int v7, v2

    .line 1039
    add-int v2, v2, p5

    .line 1040
    neg-int v8, v1

    .line 1041
    add-int v1, v1, p6

    .line 1043
    nop

    .line 1044
    if-le v3, v2, :cond_8

    .line 1045
    nop

    .line 1046
    nop

    .line 1052
    move v7, v2

    :goto_8
    move v2, v5

    goto :goto_9

    .line 1047
    :cond_8
    if-ge v3, v7, :cond_9

    .line 1048
    nop

    .line 1049
    goto :goto_8

    .line 1052
    :cond_9
    move v7, v3

    move v2, v4

    .line 1053
    :goto_9
    if-le v6, v1, :cond_a

    .line 1054
    nop

    .line 1055
    nop

    .line 1061
    move v6, v1

    move v1, v5

    goto :goto_a

    .line 1056
    :cond_a
    if-ge v6, v8, :cond_b

    .line 1057
    nop

    .line 1058
    nop

    .line 1061
    move v1, v5

    move v6, v8

    goto :goto_a

    :cond_b
    move v1, v4

    :goto_a
    if-eqz v1, :cond_c

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1062
    iget-object v9, v0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v15

    move v10, v7

    move v11, v6

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1065
    :cond_c
    invoke-virtual {v0, v7, v6, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 1067
    if-nez v2, :cond_e

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    return v4

    :cond_e
    :goto_b
    return v5
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 445
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 446
    return-void

    .line 442
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 450
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 454
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 455
    return-void

    .line 451
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 468
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 472
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 473
    return-void

    .line 469
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 459
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 463
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    return-void

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final arrowScroll(I)Z
    .locals 7

    .line 1274
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1275
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1277
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1279
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1281
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1282
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1283
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1284
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1285
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->D(I)V

    .line 1286
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1287
    goto :goto_2

    .line 1289
    :cond_1
    nop

    .line 1291
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 1292
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    goto :goto_0

    .line 1293
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1294
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1295
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1296
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1297
    sub-int/2addr v1, v5

    if-ge v1, v2, :cond_3

    .line 1298
    nop

    .line 1302
    move v2, v1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 1303
    return v3

    .line 1305
    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    :goto_1
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->D(I)V

    .line 1308
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1309
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->I(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1315
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result p1

    .line 1316
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1317
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    .line 1318
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1320
    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public final b(II)V
    .locals 9

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 321
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 322
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v4, v1, v0

    .line 323
    sub-int v6, p1, v4

    .line 324
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    .line 326
    return-void
.end method

.method final bf()I
    .locals 4

    .line 1071
    nop

    .line 1072
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1073
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1074
    nop

    .line 1075
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1074
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1077
    :cond_0
    return v1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 1456
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1449
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1442
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 15

    .line 1491
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 1492
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 1493
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 1495
    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->mC:I

    sub-int v3, v0, v3

    .line 1498
    const/4 v5, 0x0

    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    move v6, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1499
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    .line 1502
    :cond_0
    if-eqz v3, :cond_4

    .line 1503
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v13

    .line 1504
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v14

    .line 1506
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    move v6, v3

    move v8, v14

    move v10, v13

    invoke-virtual/range {v4 .. v12}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIII)Z

    .line 1508
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int v7, v4, v14

    .line 1509
    sub-int v9, v3, v7

    .line 1511
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1513
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v3

    .line 1514
    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    if-lez v13, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 1516
    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 1517
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->bg()V

    .line 1518
    if-gtz v0, :cond_3

    if-lez v14, :cond_3

    .line 1519
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 1520
    :cond_3
    if-lt v0, v13, :cond_4

    if-ge v14, v13, :cond_4

    .line 1521
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1528
    :cond_4
    :goto_2
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mC:I

    .line 1529
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1530
    return-void

    .line 1532
    :cond_5
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1533
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1536
    :cond_6
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mC:I

    .line 1538
    return-void
.end method

.method protected final computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    .line 1588
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1590
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1591
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1592
    add-int v3, v2, v0

    .line 1594
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1597
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    .line 1598
    add-int/2addr v2, v4

    .line 1602
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1603
    sub-int/2addr v3, v4

    .line 1606
    :cond_2
    nop

    .line 1608
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4

    .line 1613
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1615
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    goto :goto_0

    .line 1618
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    .line 1622
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1623
    sub-int/2addr v0, v3

    .line 1624
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1626
    goto :goto_2

    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6

    .line 1631
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5

    .line 1633
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_1

    .line 1636
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1640
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1642
    :cond_6
    :goto_2
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 1435
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1428
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1406
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1407
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1408
    if-nez v0, :cond_0

    .line 1409
    return v1

    .line 1412
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1413
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    .line 1414
    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1415
    if-gez v3, :cond_1

    .line 1416
    sub-int/2addr v2, v3

    goto :goto_0

    .line 1417
    :cond_1
    if-le v3, v0, :cond_2

    .line 1418
    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 1421
    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 584
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x82

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto/16 :goto_5

    :cond_2
    :goto_1
    move p1, v0

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x3e

    const/16 v5, 0x21

    if-eq v2, v4, :cond_6

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result p1

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result p1

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result p1

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result p1

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    if-ne v5, v3, :cond_8

    move p1, v1

    goto :goto_3

    :cond_8
    move p1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_a

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v3, v4, :cond_a

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, v2

    iput p1, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_9
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-gez p1, :cond_a

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_a
    :goto_4
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v5, p1, v2}, Landroid/support/v4/widget/NestedScrollView;->b(III)Z

    goto/16 :goto_1

    :goto_5
    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    return v0

    :cond_c
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/h;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 293
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 283
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

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

    .line 277
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II)Z
    .locals 7

    .line 237
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1855
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1856
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    .line 1857
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1858
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 1859
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1860
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    .line 1861
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    .line 1862
    nop

    .line 1863
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1864
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 1868
    :cond_0
    move v7, v3

    goto :goto_1

    .line 1865
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 1866
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v3

    .line 1868
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1869
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v5, v8

    .line 1870
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    .line 1872
    :cond_2
    int-to-float v7, v7

    int-to-float v6, v6

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1873
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1874
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1875
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1877
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1879
    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1880
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1881
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    .line 1882
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    .line 1883
    nop

    .line 1884
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 1885
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1886
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 1887
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v3, v6

    .line 1889
    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1890
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v2, v6

    sub-int/2addr v5, v2

    .line 1891
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1893
    :cond_7
    sub-int/2addr v3, v4

    int-to-float v2, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1894
    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v2, v4

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1895
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1896
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1897
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1899
    :cond_8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1902
    :cond_9
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 313
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mG:Landroid/support/v4/view/k;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/view/k;->jZ:I

    .line 314
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 315
    return-void
.end method

.method public final fullScroll(I)Z
    .locals 5

    .line 1210
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1211
    move v2, v1

    goto :goto_0

    .line 1210
    :cond_0
    nop

    .line 1211
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1213
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1214
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1216
    if-eqz v2, :cond_1

    .line 1217
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1218
    if-lez v0, :cond_1

    .line 1219
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1221
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1225
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->b(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 406
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 411
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 412
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 413
    if-ge v2, v0, :cond_1

    .line 414
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 417
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mG:Landroid/support/v4/view/k;

    iget v0, v0, Landroid/support/v4/view/k;->jZ:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 391
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 396
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 397
    if-ge v1, v0, :cond_1

    .line 398
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 401
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public final hasNestedScrollingParent(I)Z
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/h;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

    iget-boolean v0, v0, Landroid/support/v4/view/h;->jX:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    .line 1462
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1467
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    .line 1468
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1467
    invoke-static {p2, v0, p3}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1470
    const/4 p3, 0x0

    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1472
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1473
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 1478
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1480
    nop

    .line 1481
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1480
    invoke-static {p2, p5, p3}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1483
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1486
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1487
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1743
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1745
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mx:Z

    .line 1746
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 967
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    if-nez v0, :cond_5

    .line 968
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    .line 969
    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_5

    .line 970
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mI:F

    cmpl-float v0, v2, v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101004d

    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mI:F

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->mI:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 971
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v0

    .line 972
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    .line 973
    sub-int p1, v3, p1

    .line 974
    if-gez p1, :cond_3

    .line 975
    nop

    .line 979
    move p1, v1

    goto :goto_1

    .line 976
    :cond_3
    if-le p1, v0, :cond_4

    .line 977
    nop

    .line 979
    move p1, v0

    :cond_4
    :goto_1
    if-eq p1, v3, :cond_5

    .line 980
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 981
    return v2

    .line 988
    :cond_5
    :goto_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 692
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    if-eqz v3, :cond_0

    .line 693
    return v2

    .line 696
    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 707
    :pswitch_0
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 708
    if-eq v0, v3, :cond_8

    .line 710
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 714
    if-ne v5, v3, :cond_1

    .line 715
    const-string p1, "NestedScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid pointerId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    goto/16 :goto_2

    .line 720
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 721
    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->mv:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 722
    iget v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_8

    .line 723
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_8

    .line 724
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    .line 725
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mv:I

    .line 726
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->bd()V

    .line 727
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 728
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->mB:I

    .line 729
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 730
    if-eqz p1, :cond_2

    .line 731
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 733
    :cond_2
    goto/16 :goto_2

    .line 769
    :pswitch_1
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    .line 770
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 771
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->be()V

    .line 772
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 773
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 775
    :cond_3
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 776
    goto/16 :goto_2

    .line 738
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    if-lt v0, v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v0, v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v3, v5, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v3, v5, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    if-nez v3, :cond_5

    .line 740
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    .line 741
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->be()V

    .line 742
    goto :goto_2

    .line 749
    :cond_5
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mv:I

    .line 750
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 752
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 753
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 760
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 761
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    .line 762
    invoke-virtual {p0, v1, v4}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 763
    goto :goto_2

    .line 778
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 786
    :cond_8
    :goto_2
    iget-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1710
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1711
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mw:Z

    .line 1713
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->my:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->my:Landroid/view/View;

    invoke-static {p2, p0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1714
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->my:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->J(Landroid/view/View;)V

    .line 1716
    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->my:Landroid/view/View;

    .line 1718
    iget-boolean p4, p0, Landroid/support/v4/widget/NestedScrollView;->mx:Z

    if-nez p4, :cond_4

    .line 1719
    iget-object p4, p0, Landroid/support/v4/widget/NestedScrollView;->mD:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz p4, :cond_1

    .line 1720
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mD:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v0, v0, Landroid/support/v4/widget/NestedScrollView$SavedState;->mJ:I

    invoke-virtual {p0, p4, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1721
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mD:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1724
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    .line 1725
    :cond_2
    move p2, p1

    :goto_0
    sub-int/2addr p5, p3

    .line 1726
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    .line 1725
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1729
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_3

    .line 1730
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_1

    .line 1731
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    if-gez p2, :cond_4

    .line 1732
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1737
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1738
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mx:Z

    .line 1739
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 552
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 554
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mz:Z

    if-nez v0, :cond_0

    .line 555
    return-void

    .line 558
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 559
    if-nez p2, :cond_1

    .line 560
    return-void

    .line 563
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 564
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 565
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v0

    .line 566
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 567
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 569
    nop

    .line 570
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 569
    invoke-static {p1, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p1

    .line 571
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 572
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 573
    const/high16 v1, 0x40000000    # 2.0f

    .line 574
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 576
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 579
    :cond_2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 365
    if-nez p4, :cond_0

    .line 366
    float-to-int p1, p3

    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->E(I)V

    .line 367
    const/4 p1, 0x1

    return p1

    .line 369
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 374
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .line 360
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/support/v4/widget/NestedScrollView;->a(II[II)V

    .line 361
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 354
    const/4 p1, 0x0

    invoke-virtual {p0, p5, p1}, Landroid/support/v4/widget/NestedScrollView;->b(II)V

    .line 356
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 343
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)V

    .line 344
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1009
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1010
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 1670
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1671
    const/16 p1, 0x82

    goto :goto_0

    .line 1672
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1673
    const/16 p1, 0x21

    .line 1676
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1677
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1678
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .line 1681
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1682
    return v1

    .line 1685
    :cond_3
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->I(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1686
    return v1

    .line 1689
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1936
    instance-of v0, p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_0

    .line 1937
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1938
    return-void

    .line 1941
    :cond_0
    check-cast p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1942
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1943
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mD:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1944
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 1945
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1949
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1950
    new-instance v1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1951
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroid/support/v4/widget/NestedScrollView$SavedState;->mJ:I

    .line 1952
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 543
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 545
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1750
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1752
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 1753
    if-eqz p1, :cond_2

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1760
    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1761
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1762
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1763
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1764
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->D(I)V

    .line 1766
    :cond_1
    return-void

    .line 1754
    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 338
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroid/support/v4/widget/NestedScrollView;->a(II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 348
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    .line 349
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v9, p0

    .line 791
    move-object/from16 v10, p1

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->bd()V

    .line 793
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 795
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 797
    const/4 v12, 0x0

    if-nez v0, :cond_0

    .line 798
    iput v12, v9, Landroid/support/v4/widget/NestedScrollView;->mB:I

    .line 800
    :cond_0
    iget v1, v9, Landroid/support/v4/widget/NestedScrollView;->mB:I

    int-to-float v1, v1

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 802
    const/4 v1, -0x1

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 934
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 935
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->mv:I

    goto/16 :goto_5

    .line 928
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 929
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v9, Landroid/support/v4/widget/NestedScrollView;->mv:I

    .line 930
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 931
    goto/16 :goto_5

    .line 918
    :pswitch_3
    iget-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 919
    iget-object v2, v9, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 920
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v8

    .line 919
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 924
    :cond_1
    iput v1, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 925
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    .line 926
    goto/16 :goto_5

    .line 829
    :pswitch_4
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 830
    if-ne v15, v1, :cond_2

    .line 831
    const-string v0, "NestedScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid pointerId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    goto/16 :goto_5

    .line 835
    :cond_2
    invoke-virtual {v10, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    .line 836
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mv:I

    sub-int v7, v0, v6

    .line 837
    const/4 v1, 0x0

    iget-object v3, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    iget-object v4, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object v0, v9

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v14

    sub-int/2addr v7, v0

    .line 840
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    int-to-float v0, v0

    invoke-virtual {v11, v13, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 841
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mB:I

    iget-object v1, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->mB:I

    .line 843
    :cond_3
    iget-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    if-nez v0, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v9, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v0, v1, :cond_6

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 845
    if-eqz v0, :cond_4

    .line 846
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 848
    :cond_4
    iput-boolean v14, v9, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    .line 849
    if-lez v7, :cond_5

    .line 850
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v7, v0

    goto :goto_0

    .line 852
    :cond_5
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v7, v0

    .line 855
    :cond_6
    :goto_0
    move v8, v7

    iget-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    if-eqz v0, :cond_14

    .line 857
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    sub-int/2addr v6, v0

    iput v6, v9, Landroid/support/v4/widget/NestedScrollView;->mv:I

    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v16

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v7

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    .line 862
    if-eqz v0, :cond_8

    if-ne v0, v14, :cond_7

    if-lez v7, :cond_7

    goto :goto_1

    .line 867
    :cond_7
    move/from16 v17, v12

    goto :goto_2

    .line 862
    :cond_8
    :goto_1
    nop

    .line 867
    move/from16 v17, v14

    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v9

    move v2, v8

    move v6, v7

    move/from16 v20, v7

    move/from16 v7, v18

    move v13, v8

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 868
    invoke-virtual {v9, v12}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 870
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 873
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v16

    .line 874
    sub-int v4, v13, v2

    .line 875
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 877
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mv:I

    iget-object v1, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->mv:I

    .line 878
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 879
    iget v0, v9, Landroid/support/v4/widget/NestedScrollView;->mB:I

    iget-object v1, v9, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->mB:I

    goto/16 :goto_5

    .line 880
    :cond_a
    if-eqz v17, :cond_e

    .line 881
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->bg()V

    .line 882
    add-int v0, v16, v13

    .line 883
    if-gez v0, :cond_b

    .line 884
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 885
    invoke-virtual {v10, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 884
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    .line 886
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 887
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 889
    :cond_b
    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 890
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 891
    invoke-virtual {v10, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 890
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/f;->a(Landroid/widget/EdgeEffect;FF)V

    .line 893
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 894
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 897
    :cond_c
    :goto_3
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mt:Landroid/widget/EdgeEffect;

    .line 898
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mu:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 899
    :cond_d
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 902
    :cond_e
    goto/16 :goto_5

    .line 905
    :pswitch_5
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 906
    const/16 v2, 0x3e8

    iget v3, v9, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 907
    iget v2, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 908
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v9, Landroid/support/v4/widget/NestedScrollView;->kQ:I

    if-le v2, v3, :cond_f

    .line 909
    neg-int v0, v0

    invoke-direct {v9, v0}, Landroid/support/v4/widget/NestedScrollView;->E(I)V

    goto :goto_4

    .line 910
    :cond_f
    iget-object v2, v9, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->bf()I

    move-result v8

    .line 910
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 912
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 914
    :cond_10
    :goto_4
    iput v1, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 915
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    .line 916
    goto :goto_5

    .line 804
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_11

    .line 805
    return v12

    .line 807
    :cond_11
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v14

    iput-boolean v0, v9, Landroid/support/v4/widget/NestedScrollView;->kJ:Z

    if-eqz v0, :cond_12

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_12

    .line 810
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 818
    :cond_12
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_13

    .line 819
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 823
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->mv:I

    .line 824
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v9, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 825
    const/4 v0, 0x2

    invoke-virtual {v9, v0, v12}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 826
    nop

    .line 939
    :cond_14
    :goto_5
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_15

    .line 940
    iget-object v0, v9, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 942
    :cond_15
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 943
    return v14

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

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1647
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mw:Z

    if-nez v0, :cond_0

    .line 1648
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->J(Landroid/view/View;)V

    goto :goto_0

    .line 1651
    :cond_0
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->my:Landroid/view/View;

    .line 1653
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1654
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1696
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1697
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1696
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1699
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 672
    if-eqz p1, :cond_0

    .line 673
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->be()V

    .line 675
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 676
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1704
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mw:Z

    .line 1705
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1706
    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    .line 1830
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1831
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1832
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 1833
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 1834
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 1835
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1838
    :cond_1
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/h;->setNestedScrollingEnabled(Z)V

    .line 252
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    .line 1365
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    return-void

    .line 1369
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/NestedScrollView;->mr:J

    sub-long/2addr v0, v2

    .line 1370
    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1371
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1373
    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1374
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1375
    add-int/2addr p2, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 1377
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1378
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1379
    goto :goto_0

    .line 1380
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1381
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1383
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1385
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v4/widget/NestedScrollView;->mr:J

    .line 1386
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    .line 1395
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1396
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public final startNestedScroll(II)Z
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 267
    return-void
.end method

.method public final stopNestedScroll(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mH:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/h;->stopNestedScroll(I)V

    .line 227
    return-void
.end method
