.class public Landroid/support/v4/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final kp:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field mTouchSlop:I

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private ms:Landroid/widget/OverScroller;

.field private final nA:Ljava/lang/Runnable;

.field nj:I

.field nk:[F

.field nl:[F

.field nm:[F

.field nn:[F

.field private no:[I

.field private np:[I

.field private nq:[I

.field private nr:I

.field private ns:F

.field private nt:F

.field nu:I

.field nv:I

.field private final nw:Landroid/support/v4/widget/u;

.field nx:Landroid/view/View;

.field ny:Z

.field private final nz:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    new-instance v0, Landroid/support/v4/widget/t;

    invoke-direct {v0}, Landroid/support/v4/widget/t;-><init>()V

    sput-object v0, Landroid/support/v4/widget/s;->kp:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private F(I)V
    .locals 2

    .line 804
    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->G(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 808
    iget-object v0, p0, Landroid/support/v4/widget/s;->nl:[F

    aput v1, v0, p1

    .line 809
    iget-object v0, p0, Landroid/support/v4/widget/s;->nm:[F

    aput v1, v0, p1

    .line 810
    iget-object v0, p0, Landroid/support/v4/widget/s;->nn:[F

    aput v1, v0, p1

    .line 811
    iget-object v0, p0, Landroid/support/v4/widget/s;->no:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 812
    iget-object v0, p0, Landroid/support/v4/widget/s;->np:[I

    aput v1, v0, p1

    .line 813
    iget-object v0, p0, Landroid/support/v4/widget/s;->nq:[I

    aput v1, v0, p1

    .line 814
    iget v0, p0, Landroid/support/v4/widget/s;->nr:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/widget/s;->nr:I

    .line 815
    return-void

    .line 805
    :cond_1
    :goto_0
    return-void
.end method

.method private I(I)Z
    .locals 3

    .line 1510
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->G(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    const-string v0, "ViewDragHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring pointerId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 p1, 0x0

    return p1

    .line 1516
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(FFI)V
    .locals 10

    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    array-length v0, v0

    if-gt v0, p3, :cond_2

    :cond_0
    add-int/lit8 v0, p3, 0x1

    new-array v2, v0, [F

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-array v5, v0, [F

    new-array v6, v0, [I

    new-array v7, v0, [I

    new-array v0, v0, [I

    iget-object v8, p0, Landroid/support/v4/widget/s;->nk:[F

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/support/v4/widget/s;->nk:[F

    iget-object v9, p0, Landroid/support/v4/widget/s;->nk:[F

    array-length v9, v9

    invoke-static {v8, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/s;->nl:[F

    iget-object v9, p0, Landroid/support/v4/widget/s;->nl:[F

    array-length v9, v9

    invoke-static {v8, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/s;->nm:[F

    iget-object v9, p0, Landroid/support/v4/widget/s;->nm:[F

    array-length v9, v9

    invoke-static {v8, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/s;->nn:[F

    iget-object v9, p0, Landroid/support/v4/widget/s;->nn:[F

    array-length v9, v9

    invoke-static {v8, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/s;->no:[I

    iget-object v9, p0, Landroid/support/v4/widget/s;->no:[I

    array-length v9, v9

    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/s;->np:[I

    iget-object v9, p0, Landroid/support/v4/widget/s;->np:[I

    array-length v9, v9

    invoke-static {v8, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/s;->nq:[I

    iget-object v9, p0, Landroid/support/v4/widget/s;->nq:[I

    array-length v9, v9

    invoke-static {v8, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/s;->nk:[F

    iput-object v3, p0, Landroid/support/v4/widget/s;->nl:[F

    iput-object v4, p0, Landroid/support/v4/widget/s;->nm:[F

    iput-object v5, p0, Landroid/support/v4/widget/s;->nn:[F

    iput-object v6, p0, Landroid/support/v4/widget/s;->no:[I

    iput-object v7, p0, Landroid/support/v4/widget/s;->np:[I

    iput-object v0, p0, Landroid/support/v4/widget/s;->nq:[I

    .line 849
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    iget-object v2, p0, Landroid/support/v4/widget/s;->nm:[F

    aput p1, v2, p3

    aput p1, v0, p3

    .line 850
    iget-object v0, p0, Landroid/support/v4/widget/s;->nl:[F

    iget-object v2, p0, Landroid/support/v4/widget/s;->nn:[F

    aput p2, v2, p3

    aput p2, v0, p3

    .line 851
    iget-object v0, p0, Landroid/support/v4/widget/s;->no:[I

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v2, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/s;->nu:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_3

    move v1, v3

    :cond_3
    iget-object v2, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget v4, p0, Landroid/support/v4/widget/s;->nu:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    iget-object v2, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v4, p0, Landroid/support/v4/widget/s;->nu:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_5

    or-int/lit8 v1, v1, 0x2

    :cond_5
    iget-object p1, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v2, p0, Landroid/support/v4/widget/s;->nu:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    or-int/lit8 v1, v1, 0x8

    :cond_6
    aput v1, v0, p3

    .line 852
    iget p1, p0, Landroid/support/v4/widget/s;->nr:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/widget/s;->nr:I

    .line 853
    return-void
.end method

.method private a(FFII)Z
    .locals 2

    .line 1276
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1277
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1279
    iget-object v0, p0, Landroid/support/v4/widget/s;->no:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_3

    iget v0, p0, Landroid/support/v4/widget/s;->nv:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/s;->nq:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/s;->np:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget v0, p0, Landroid/support/v4/widget/s;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/s;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1285
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {p2}, Landroid/support/v4/widget/u;->bc()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1286
    iget-object p1, p0, Landroid/support/v4/widget/s;->nq:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    .line 1287
    return v1

    .line 1289
    :cond_1
    iget-object p2, p0, Landroid/support/v4/widget/s;->np:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Landroid/support/v4/widget/s;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 1283
    :cond_3
    :goto_0
    return v1
.end method

.method private b(FFF)F
    .locals 2

    .line 687
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 688
    cmpg-float p2, v0, p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    .line 689
    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    return p3

    :cond_1
    neg-float p1, p3

    return p1

    .line 690
    :cond_2
    return p1
.end method

.method private b(FFI)V
    .locals 2

    .line 1255
    nop

    .line 1256
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/s;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    goto :goto_0

    .line 1259
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/s;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1260
    or-int/lit8 v0, v0, 0x4

    .line 1262
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/s;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1263
    or-int/lit8 v0, v0, 0x2

    .line 1265
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/s;->a(FFII)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1266
    or-int/lit8 v0, v0, 0x8

    .line 1269
    :cond_3
    if-eqz v0, :cond_4

    .line 1270
    iget-object p1, p0, Landroid/support/v4/widget/s;->np:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1271
    iget-object p1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {p1, v0, p3}, Landroid/support/v4/widget/u;->i(II)V

    .line 1273
    :cond_4
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 6

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 857
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 858
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 860
    invoke-direct {p0, v2}, Landroid/support/v4/widget/s;->I(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 864
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 865
    iget-object v5, p0, Landroid/support/v4/widget/s;->nm:[F

    aput v3, v5, v2

    .line 866
    iget-object v3, p0, Landroid/support/v4/widget/s;->nn:[F

    aput v4, v3, v2

    .line 857
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 868
    :cond_1
    return-void
.end method

.method private bj()V
    .locals 4

    .line 1413
    iget-object v0, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/s;->ns:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1414
    iget-object v0, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    .line 1415
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/s;->nt:F

    iget v2, p0, Landroid/support/v4/widget/s;->ns:F

    .line 1414
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/s;->b(FFF)F

    move-result v0

    .line 1417
    iget-object v1, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    .line 1418
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/s;->nt:F

    iget v3, p0, Landroid/support/v4/widget/s;->ns:F

    .line 1417
    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/s;->b(FFF)F

    .line 1420
    invoke-direct {p0, v0}, Landroid/support/v4/widget/s;->g(F)V

    .line 1421
    return-void
.end method

.method private c(III)I
    .locals 4

    .line 638
    if-nez p1, :cond_0

    .line 639
    const/4 p1, 0x0

    return p1

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 643
    div-int/lit8 v1, v0, 0x2

    .line 644
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 645
    int-to-float v1, v1

    .line 646
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 649
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 650
    if-lez p2, :cond_1

    .line 651
    const/4 p1, 0x4

    const/high16 p3, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr p1, p2

    goto :goto_0

    .line 653
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 654
    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 656
    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private d(III)I
    .locals 1

    .line 670
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 671
    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 672
    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    return p3

    :cond_1
    neg-int p1, p3

    return p1

    .line 673
    :cond_2
    return p1
.end method

.method private f(Landroid/view/View;F)Z
    .locals 2

    .line 1303
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1304
    return v0

    .line 1306
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/u;->G(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 1307
    move p1, v1

    goto :goto_0

    .line 1306
    :cond_1
    nop

    .line 1307
    move p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 1312
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/v4/widget/s;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 1313
    :cond_3
    return v0
.end method

.method private g(F)V
    .locals 3

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/s;->ny:Z

    .line 780
    iget-object v1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    iget-object v2, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/widget/u;->e(Landroid/view/View;F)V

    .line 781
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/s;->ny:Z

    .line 783
    iget v1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne v1, v0, :cond_0

    .line 785
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->H(I)V

    .line 787
    :cond_0
    return-void
.end method


# virtual methods
.method public final G(I)Z
    .locals 2

    .line 884
    iget v0, p0, Landroid/support/v4/widget/s;->nr:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final H(I)V
    .locals 2

    .line 888
    iget-object v0, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/s;->nA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 889
    iget v0, p0, Landroid/support/v4/widget/s;->nj:I

    if-eq v0, p1, :cond_0

    .line 890
    iput p1, p0, Landroid/support/v4/widget/s;->nj:I

    .line 891
    iget-object v0, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/u;->C(I)V

    .line 892
    iget p1, p0, Landroid/support/v4/widget/s;->nj:I

    if-nez p1, :cond_0

    .line 893
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    .line 896
    :cond_0
    return-void
.end method

.method final a(IIII)Z
    .locals 10

    .line 597
    iget-object v0, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 598
    iget-object v0, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 599
    sub-int v4, p1, v2

    .line 600
    sub-int v5, p2, v3

    .line 602
    const/4 p1, 0x0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 604
    iget-object p2, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 605
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->H(I)V

    .line 606
    return p1

    .line 609
    :cond_0
    iget-object p2, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    iget v0, p0, Landroid/support/v4/widget/s;->nt:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/s;->ns:F

    float-to-int v1, v1

    invoke-direct {p0, p3, v0, v1}, Landroid/support/v4/widget/s;->d(III)I

    move-result p3

    iget v0, p0, Landroid/support/v4/widget/s;->nt:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/s;->ns:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/s;->d(III)I

    move-result p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v8, v6, v7

    add-int v9, v0, v1

    if-eqz p3, :cond_1

    int-to-float v0, v6

    int-to-float v6, v8

    :goto_0
    div-float/2addr v0, v6

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    int-to-float v6, v9

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_2

    int-to-float v1, v7

    int-to-float v6, v8

    :goto_2
    div-float/2addr v1, v6

    goto :goto_3

    :cond_2
    int-to-float v1, v1

    int-to-float v6, v9

    goto :goto_2

    :goto_3
    iget-object v6, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {v6, p2}, Landroid/support/v4/widget/u;->G(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, v4, p3, p2}, Landroid/support/v4/widget/s;->c(III)I

    move-result p2

    invoke-direct {p0, v5, p4, p1}, Landroid/support/v4/widget/s;->c(III)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int v6, p2

    .line 610
    iget-object v1, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 612
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->H(I)V

    .line 613
    const/4 p1, 0x1

    return p1
.end method

.method public final abort()V
    .locals 3

    .line 525
    invoke-virtual {p0}, Landroid/support/v4/widget/s;->cancel()V

    .line 526
    iget v0, p0, Landroid/support/v4/widget/s;->nj:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 528
    iget-object v0, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 529
    iget-object v0, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 530
    iget-object v0, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 531
    iget-object v1, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 532
    iget-object v1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    iget-object v2, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/u;->j(Landroid/view/View;I)V

    .line 534
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/s;->H(I)V

    .line 535
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 966
    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Landroid/support/v4/widget/s;->cancel()V

    .line 972
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 973
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 975
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 977
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1075
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1076
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->F(I)V

    .line 1077
    goto/16 :goto_3

    .line 999
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1000
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1001
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1003
    invoke-direct {p0, v5, p1, v0}, Landroid/support/v4/widget/s;->a(FFI)V

    .line 1006
    iget v1, p0, Landroid/support/v4/widget/s;->nj:I

    if-nez v1, :cond_3

    .line 1007
    iget-object p1, p0, Landroid/support/v4/widget/s;->no:[I

    aget p1, p1, v0

    .line 1008
    iget v0, p0, Landroid/support/v4/widget/s;->nv:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 1009
    iget-object p1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {p1}, Landroid/support/v4/widget/u;->bb()V

    .line 1011
    :cond_2
    goto/16 :goto_3

    :cond_3
    iget v1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne v1, v2, :cond_a

    .line 1013
    float-to-int v1, v5

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object p1

    .line 1014
    iget-object v1, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 1015
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    .line 1017
    :cond_4
    goto/16 :goto_3

    .line 1022
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/widget/s;->nl:[F

    if-eqz v0, :cond_a

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1026
    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_8

    .line 1027
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1030
    invoke-direct {p0, v2}, Landroid/support/v4/widget/s;->I(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1032
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1033
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1034
    iget-object v7, p0, Landroid/support/v4/widget/s;->nk:[F

    aget v7, v7, v2

    sub-float v7, v5, v7

    .line 1035
    iget-object v8, p0, Landroid/support/v4/widget/s;->nl:[F

    aget v8, v8, v2

    sub-float v8, v6, v8

    .line 1037
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object v5

    .line 1038
    if-eqz v5, :cond_5

    invoke-direct {p0, v5, v7}, Landroid/support/v4/widget/s;->f(Landroid/view/View;F)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1039
    move v6, v4

    goto :goto_1

    .line 1038
    :cond_5
    nop

    .line 1039
    move v6, v3

    :goto_1
    if-eqz v6, :cond_6

    .line 1045
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 1046
    float-to-int v10, v7

    add-int/2addr v10, v9

    .line 1047
    iget-object v11, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {v11, v5, v10}, Landroid/support/v4/widget/u;->k(Landroid/view/View;I)I

    move-result v10

    .line 1049
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 1050
    iget-object v11, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {v11, v5}, Landroid/support/v4/widget/u;->H(Landroid/view/View;)I

    .line 1053
    iget-object v11, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {v11, v5}, Landroid/support/v4/widget/u;->G(Landroid/view/View;)I

    move-result v11

    .line 1054
    if-eqz v11, :cond_8

    if-lez v11, :cond_6

    if-ne v10, v9, :cond_6

    goto :goto_2

    .line 1057
    :cond_6
    invoke-direct {p0, v7, v8, v2}, Landroid/support/v4/widget/s;->b(FFI)V

    .line 1061
    iget v7, p0, Landroid/support/v4/widget/s;->nj:I

    if-eq v7, v4, :cond_8

    .line 1063
    if-eqz v6, :cond_7

    invoke-virtual {p0, v5, v2}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1067
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->b(Landroid/view/MotionEvent;)V

    .line 1071
    goto :goto_3

    .line 1082
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v4/widget/s;->cancel()V

    goto :goto_3

    .line 979
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 980
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 981
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 982
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/widget/s;->a(FFI)V

    .line 984
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object v0

    .line 987
    iget-object v1, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    if-ne v0, v1, :cond_9

    iget v1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne v1, v2, :cond_9

    .line 988
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    .line 991
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/s;->no:[I

    aget p1, v0, p1

    .line 992
    iget v0, p0, Landroid/support/v4/widget/s;->nv:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 993
    iget-object p1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {p1}, Landroid/support/v4/widget/u;->bb()V

    .line 1087
    :cond_a
    :goto_3
    iget p1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne p1, v4, :cond_b

    return v4

    :cond_b
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Landroid/view/View;II)Z
    .locals 0

    .line 552
    iput-object p1, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    .line 553
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    .line 555
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, p1}, Landroid/support/v4/widget/s;->a(IIII)Z

    move-result p1

    .line 556
    if-nez p1, :cond_0

    iget p2, p0, Landroid/support/v4/widget/s;->nj:I

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 559
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    .line 562
    :cond_0
    return p1
.end method

.method public final cancel()V
    .locals 2

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    .line 512
    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/s;->nk:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->nl:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->nm:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->nn:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->no:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->np:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->nq:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Landroid/support/v4/widget/s;->nr:I

    .line 514
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 518
    :cond_1
    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1098
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1100
    if-nez v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroid/support/v4/widget/s;->cancel()V

    .line 1106
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1109
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/s;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1111
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1206
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1207
    iget v1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    if-ne v0, v1, :cond_4

    .line 1209
    nop

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1211
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_3

    .line 1212
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1213
    iget v5, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    if-eq v4, v5, :cond_2

    .line 1215
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1219
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1220
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    .line 1221
    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1222
    iget p1, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    .line 1223
    goto :goto_1

    .line 1211
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1227
    :cond_3
    move p1, v3

    :goto_1
    if-ne p1, v3, :cond_4

    .line 1229
    invoke-direct {p0}, Landroid/support/v4/widget/s;->bj()V

    .line 1232
    :cond_4
    invoke-direct {p0, v0}, Landroid/support/v4/widget/s;->F(I)V

    .line 1233
    return-void

    .line 1133
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1134
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1135
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1137
    invoke-direct {p0, v2, p1, v0}, Landroid/support/v4/widget/s;->a(FFI)V

    .line 1140
    iget v1, p0, Landroid/support/v4/widget/s;->nj:I

    if-nez v1, :cond_6

    .line 1143
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object p1

    .line 1144
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    .line 1146
    iget-object p1, p0, Landroid/support/v4/widget/s;->no:[I

    aget p1, p1, v0

    .line 1147
    iget v0, p0, Landroid/support/v4/widget/s;->nv:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 1148
    iget-object p1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {p1}, Landroid/support/v4/widget/u;->bb()V

    .line 1150
    :cond_5
    return-void

    :cond_6
    float-to-int v1, v2

    float-to-int p1, p1

    iget-object v2, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {p0, v2, v1, p1}, Landroid/support/v4/widget/s;->d(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1155
    iget-object p1, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    return-void

    .line 1245
    :pswitch_3
    iget p1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne p1, v3, :cond_7

    .line 1246
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->g(F)V

    .line 1248
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/widget/s;->cancel()V

    goto/16 :goto_3

    .line 1161
    :pswitch_4
    iget v0, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne v0, v3, :cond_c

    .line 1163
    iget v0, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/s;->I(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1165
    iget v0, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1166
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1167
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1168
    iget-object v2, p0, Landroid/support/v4/widget/s;->nm:[F

    iget v3, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1169
    iget-object v2, p0, Landroid/support/v4/widget/s;->nn:[F

    iget v3, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1171
    iget-object v2, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    iget-object v3, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v1, :cond_8

    iget-object v5, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    iget-object v6, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/widget/u;->k(Landroid/view/View;I)I

    move-result v2

    iget-object v5, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    sub-int v3, v2, v3

    invoke-static {v5, v3}, Landroid/support/v4/view/n;->g(Landroid/view/View;I)V

    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    iget-object v5, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/u;->H(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Landroid/support/v4/view/n;->e(Landroid/view/View;I)V

    :cond_9
    if-nez v1, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    iget-object v1, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/u;->j(Landroid/view/View;I)V

    .line 1173
    :cond_b
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->b(Landroid/view/MotionEvent;)V

    .line 1174
    return-void

    .line 1176
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1177
    :goto_2
    if-ge v2, v0, :cond_e

    .line 1178
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1181
    invoke-direct {p0, v1}, Landroid/support/v4/widget/s;->I(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1183
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1184
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1185
    iget-object v6, p0, Landroid/support/v4/widget/s;->nk:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1186
    iget-object v7, p0, Landroid/support/v4/widget/s;->nl:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1188
    invoke-direct {p0, v6, v7, v1}, Landroid/support/v4/widget/s;->b(FFI)V

    .line 1189
    iget v7, p0, Landroid/support/v4/widget/s;->nj:I

    if-eq v7, v3, :cond_e

    .line 1191
    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object v4

    .line 1195
    invoke-direct {p0, v4, v6}, Landroid/support/v4/widget/s;->f(Landroid/view/View;F)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1196
    invoke-virtual {p0, v4, v1}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1197
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1200
    :cond_e
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->b(Landroid/view/MotionEvent;)V

    .line 1202
    return-void

    .line 1237
    :pswitch_5
    iget p1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne p1, v3, :cond_f

    .line 1238
    invoke-direct {p0}, Landroid/support/v4/widget/s;->bj()V

    .line 1240
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/widget/s;->cancel()V

    .line 1241
    return-void

    .line 1113
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1115
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1116
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object v2

    .line 1118
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/widget/s;->a(FFI)V

    .line 1123
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/widget/s;->m(Landroid/view/View;I)Z

    .line 1125
    iget-object v0, p0, Landroid/support/v4/widget/s;->no:[I

    aget p1, v0, p1

    .line 1126
    iget v0, p0, Landroid/support/v4/widget/s;->nv:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_10

    .line 1127
    iget-object p1, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {p1}, Landroid/support/v4/widget/u;->bb()V

    return-void

    .line 1252
    :cond_10
    :goto_3
    return-void

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

.method public final d(Landroid/view/View;II)Z
    .locals 2

    .line 1468
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1469
    return v0

    .line 1471
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1472
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1473
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 1474
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final j(II)Landroid/view/View;
    .locals 3

    .line 1487
    iget-object v0, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1488
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1489
    iget-object v1, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1490
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1491
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1492
    return-object v1

    .line 1488
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1495
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(Z)Z
    .locals 8

    .line 735
    iget v0, p0, Landroid/support/v4/widget/s;->nj:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 736
    iget-object v0, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 737
    iget-object v3, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 738
    iget-object v4, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    .line 739
    iget-object v5, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v3, v5

    .line 740
    iget-object v6, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v4, v6

    .line 742
    if-eqz v5, :cond_0

    .line 743
    iget-object v7, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-static {v7, v5}, Landroid/support/v4/view/n;->g(Landroid/view/View;I)V

    .line 745
    :cond_0
    if-eqz v6, :cond_1

    .line 746
    iget-object v7, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-static {v7, v6}, Landroid/support/v4/view/n;->e(Landroid/view/View;I)V

    .line 749
    :cond_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 750
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    iget-object v6, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Landroid/support/v4/widget/u;->j(Landroid/view/View;I)V

    .line 753
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v4, v3, :cond_4

    .line 756
    iget-object v0, p0, Landroid/support/v4/widget/s;->ms:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 757
    nop

    .line 760
    move v0, v2

    :cond_4
    if-nez v0, :cond_6

    .line 761
    if-eqz p1, :cond_5

    .line 762
    iget-object p1, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/widget/s;->nA:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 764
    :cond_5
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/s;->H(I)V

    .line 769
    :cond_6
    :goto_0
    iget p1, p0, Landroid/support/v4/widget/s;->nj:I

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    return v2
.end method

.method public final l(Landroid/view/View;I)V
    .locals 2

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 476
    iput-object p1, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    .line 477
    iput p2, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    .line 478
    iget-object p2, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/u;->F(Landroid/view/View;)V

    .line 479
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->H(I)V

    .line 480
    return-void

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->nz:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final m(Landroid/view/View;I)Z
    .locals 2

    .line 908
    iget-object v0, p0, Landroid/support/v4/widget/s;->nx:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    .line 910
    return v1

    .line 912
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/s;->nw:Landroid/support/v4/widget/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/u;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    iput p2, p0, Landroid/support/v4/widget/s;->mActivePointerId:I

    .line 914
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/s;->l(Landroid/view/View;I)V

    .line 915
    return v1

    .line 917
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
