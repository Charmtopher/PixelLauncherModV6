.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/j;


# static fields
.field static final bA:Ljava/lang/ThreadLocal;

.field static final bB:Ljava/util/Comparator;

.field private static final bC:Landroid/support/v4/c/q;

.field static final by:Ljava/lang/String;

.field static final bz:[Ljava/lang/Class;


# instance fields
.field private final bD:Ljava/util/List;

.field private final bE:Landroid/support/v4/widget/a;

.field private final bF:Ljava/util/List;

.field private final bG:[I

.field private bH:Z

.field private bI:[I

.field private bJ:Landroid/view/View;

.field private bK:Landroid/view/View;

.field private bL:Landroid/support/design/widget/f;

.field private bM:Z

.field bN:Landroid/support/v4/view/z;

.field bO:Z

.field private bP:Landroid/graphics/drawable/Drawable;

.field bQ:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private bR:Landroid/support/v4/view/l;

.field private final bS:Landroid/support/v4/view/k;

.field private mIsAttachedToWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    const-class v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 117
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->by:Ljava/lang/String;

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 125
    new-instance v0, Landroid/support/design/widget/h;

    invoke-direct {v0}, Landroid/support/design/widget/h;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->bB:Ljava/util/Comparator;

    goto :goto_1

    .line 127
    :cond_1
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->bB:Ljava/util/Comparator;

    .line 131
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->bz:[Ljava/lang/Class;

    .line 136
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->bA:Ljava/lang/ThreadLocal;

    .line 150
    new-instance v0, Landroid/support/v4/c/s;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/c/s;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->bC:Landroid/support/v4/c/q;

    return-void
.end method

.method private a(I)I
    .locals 4

    .line 574
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bI:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 575
    const-string v0, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No keylines defined for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v1

    .line 579
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bI:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bI:[I

    aget p1, v0, p1

    return p1

    .line 580
    :cond_2
    :goto_0
    const-string v0, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyline index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v1
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/c;
    .locals 4

    .line 588
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const/4 p0, 0x0

    return-object p0

    .line 593
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 596
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 598
    goto :goto_0

    .line 601
    :cond_2
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->by:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->by:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 607
    :cond_3
    :goto_0
    :try_start_0
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->bA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 608
    if-nez v0, :cond_4

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 610
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->bA:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 612
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 613
    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 615
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 616
    sget-object v3, Landroid/support/design/widget/CoordinatorLayout;->bz:[Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 618
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/design/widget/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 621
    :catch_0
    move-exception p0

    .line 622
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not inflate Behavior subclass "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/e;II)V
    .locals 6

    .line 962
    iget v0, p4, Landroid/support/design/widget/e;->gravity:I

    .line 963
    if-nez v0, :cond_0

    const/16 v0, 0x11

    .line 962
    :cond_0
    invoke-static {v0, p1}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v0

    .line 964
    iget p4, p4, Landroid/support/design/widget/e;->bW:I

    .line 965
    invoke-static {p4}, Landroid/support/design/widget/CoordinatorLayout;->b(I)I

    move-result p4

    .line 964
    invoke-static {p4, p1}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result p1

    .line 968
    and-int/lit8 p4, v0, 0x7

    .line 969
    and-int/lit8 v0, v0, 0x70

    .line 970
    and-int/lit8 v1, p1, 0x7

    .line 971
    and-int/lit8 p1, p1, 0x70

    .line 979
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 982
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 983
    goto :goto_0

    .line 985
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 986
    goto :goto_0

    .line 988
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 992
    :goto_0
    const/16 v4, 0x50

    const/16 v5, 0x10

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    .line 995
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 996
    goto :goto_1

    .line 998
    :cond_3
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 999
    goto :goto_1

    .line 1001
    :cond_4
    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 1006
    :goto_1
    if-eq p4, v3, :cond_6

    if-eq p4, v2, :cond_5

    .line 1009
    sub-int/2addr v1, p5

    .line 1010
    goto :goto_2

    .line 1013
    :cond_5
    goto :goto_2

    .line 1015
    :cond_6
    div-int/lit8 p2, p5, 0x2

    sub-int/2addr v1, p2

    .line 1019
    :goto_2
    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    .line 1022
    sub-int/2addr p1, p6

    .line 1023
    goto :goto_3

    .line 1026
    :cond_7
    goto :goto_3

    .line 1028
    :cond_8
    div-int/lit8 p2, p6, 0x2

    sub-int/2addr p1, p2

    .line 1032
    :goto_3
    add-int/2addr p5, v1

    add-int/2addr p6, p1

    invoke-virtual {p3, v1, p1, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1033
    return-void
.end method

.method private static a(Landroid/graphics/Rect;)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 163
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->bC:Landroid/support/v4/c/q;

    invoke-interface {v0, p0}, Landroid/support/v4/c/q;->p(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private a(Landroid/support/design/widget/e;Landroid/graphics/Rect;II)V
    .locals 5

    .line 1036
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 1037
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 1040
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/e;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1042
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/support/design/widget/e;->rightMargin:I

    sub-int/2addr v0, v4

    .line 1041
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1040
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1043
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/e;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 1045
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Landroid/support/design/widget/e;->bottomMargin:I

    sub-int/2addr v1, p1

    .line 1044
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1043
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1047
    add-int/2addr p3, v0

    add-int/2addr p4, p1

    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1048
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .line 1461
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/e;

    .line 1462
    iget v1, v0, Landroid/support/design/widget/e;->cb:I

    if-eq v1, p2, :cond_0

    .line 1463
    iget v1, v0, Landroid/support/design/widget/e;->cb:I

    sub-int v1, p2, v1

    .line 1464
    invoke-static {p1, v1}, Landroid/support/v4/view/n;->g(Landroid/view/View;I)V

    .line 1465
    iput p2, v0, Landroid/support/design/widget/e;->cb:I

    .line 1467
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 432
    nop

    .line 435
    nop

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 439
    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->bF:Ljava/util/List;

    .line 440
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    invoke-virtual {v0, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->bB:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->bB:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 444
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    move v4, v5

    :goto_2
    if-ge v4, v0, :cond_a

    .line 445
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 446
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/e;

    .line 447
    iget-object v8, v7, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 449
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 452
    if-eqz v8, :cond_9

    .line 453
    if-nez v6, :cond_3

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 455
    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 458
    :cond_3
    goto :goto_5

    .line 470
    :cond_4
    iget-object v5, v7, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    if-nez v5, :cond_5

    iput-boolean v3, v7, Landroid/support/design/widget/e;->ce:Z

    :cond_5
    iget-boolean v5, v7, Landroid/support/design/widget/e;->ce:Z

    .line 487
    iget-boolean v8, v7, Landroid/support/design/widget/e;->ce:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    .line 488
    move v8, v9

    goto :goto_3

    .line 487
    :cond_6
    iget-boolean v8, v7, Landroid/support/design/widget/e;->ce:Z

    or-int/2addr v8, v3

    iput-boolean v8, v7, Landroid/support/design/widget/e;->ce:Z

    .line 488
    :goto_3
    if-eqz v8, :cond_7

    if-nez v5, :cond_7

    goto :goto_4

    .line 489
    :cond_7
    move v9, v3

    :goto_4
    if-eqz v8, :cond_8

    if-eqz v9, :cond_a

    .line 492
    :cond_8
    move v5, v9

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 496
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 498
    return v3
.end method

.method private static b(I)I
    .locals 1

    .line 1195
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    .line 1196
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1198
    :cond_0
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_1

    .line 1199
    or-int/lit8 p0, p0, 0x30

    .line 1201
    :cond_1
    return p0
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/e;

    .line 1471
    iget v1, v0, Landroid/support/design/widget/e;->cc:I

    if-eq v1, p2, :cond_0

    .line 1472
    iget v1, v0, Landroid/support/design/widget/e;->cc:I

    sub-int v1, p2, v1

    .line 1473
    invoke-static {p1, v1}, Landroid/support/v4/view/n;->e(Landroid/view/View;I)V

    .line 1474
    iput p2, v0, Landroid/support/design/widget/e;->cc:I

    .line 1476
    :cond_0
    return-void
.end method

.method private static c(I)I
    .locals 0

    .line 1209
    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private static t()Landroid/graphics/Rect;
    .locals 1

    .line 154
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->bC:Landroid/support/v4/c/q;

    invoke-interface {v0}, Landroid/support/v4/c/q;->aH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 155
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 158
    :cond_0
    return-object v0
.end method

.method private u()V
    .locals 12

    .line 384
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 385
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 386
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/e;

    .line 388
    iget-object v3, v3, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 389
    if-eqz v3, :cond_0

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 391
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 393
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 403
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/e;

    .line 405
    iput-boolean v1, v3, Landroid/support/design/widget/e;->ce:Z

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bJ:Landroid/view/View;

    .line 408
    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bH:Z

    .line 409
    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;)Landroid/support/design/widget/e;
    .locals 6

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/e;

    .line 628
    iget-boolean v1, v0, Landroid/support/design/widget/e;->bV:Z

    if-nez v1, :cond_4

    .line 629
    instance-of v1, p1, Landroid/support/design/widget/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 630
    check-cast p1, Landroid/support/design/widget/b;

    invoke-interface {p1}, Landroid/support/design/widget/b;->v()Landroid/support/design/widget/c;

    move-result-object p1

    .line 631
    if-nez p1, :cond_0

    .line 632
    const-string v1, "CoordinatorLayout"

    const-string v3, "Attached behavior class is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/c;)V

    .line 635
    iput-boolean v2, v0, Landroid/support/design/widget/e;->bV:Z

    .line 636
    goto :goto_2

    .line 638
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 639
    const/4 v1, 0x0

    .line 640
    :goto_0
    if-eqz p1, :cond_2

    const-class v1, Landroid/support/design/widget/d;

    .line 641
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/d;

    if-nez v1, :cond_2

    .line 643
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 645
    :cond_2
    if-eqz v1, :cond_3

    .line 647
    nop

    .line 648
    :try_start_0
    invoke-interface {v1}, Landroid/support/design/widget/d;->value()Ljava/lang/Class;

    move-result-object p1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/c;

    .line 647
    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    goto :goto_1

    .line 649
    :catch_0
    move-exception p1

    .line 650
    const-string v3, "CoordinatorLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Default behavior class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/support/design/widget/d;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    :cond_3
    :goto_1
    iput-boolean v2, v0, Landroid/support/design/widget/e;->bV:Z

    .line 658
    :cond_4
    :goto_2
    return-object v0
.end method

.method public final a(II[II)V
    .locals 10

    .line 1855
    nop

    .line 1856
    nop

    .line 1857
    nop

    .line 1859
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1860
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v0, :cond_3

    .line 1861
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1862
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 1864
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/e;

    .line 1868
    invoke-virtual {v7, p4}, Landroid/support/design/widget/e;->f(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1869
    iget-object v7, v7, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 1873
    if-eqz v7, :cond_2

    .line 1874
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->bG:[I

    iget-object v7, p0, Landroid/support/design/widget/CoordinatorLayout;->bG:[I

    aput v1, v7, v6

    aput v1, v5, v1

    .line 1875
    if-lez p1, :cond_0

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->bG:[I

    aget v5, v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->bG:[I

    aget v5, v5, v1

    .line 1878
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1879
    :goto_1
    if-lez p2, :cond_1

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->bG:[I

    aget v5, v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_1
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->bG:[I

    aget v5, v5, v6

    .line 1880
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1882
    :goto_2
    nop

    .line 1860
    move v5, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1886
    :cond_3
    aput v3, p3, v1

    .line 1887
    aput v4, p3, v6

    .line 1889
    if-eqz v5, :cond_4

    .line 1890
    invoke-virtual {p0, v6}, Landroid/support/design/widget/CoordinatorLayout;->d(I)V

    .line 1892
    :cond_4
    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1764
    iget-object p3, p0, Landroid/support/design/widget/CoordinatorLayout;->bS:Landroid/support/v4/view/k;

    iput p2, p3, Landroid/support/v4/view/k;->jZ:I

    .line 1765
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bK:Landroid/view/View;

    .line 1767
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1768
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 1769
    invoke-virtual {p0, p2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1770
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1771
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1781
    :cond_0
    return-void
.end method

.method final a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    .line 949
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    if-eqz p2, :cond_1

    .line 954
    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/v;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    .line 956
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 958
    return-void

    .line 950
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 951
    return-void
.end method

.method public final a(II)Z
    .locals 5

    .line 1734
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1737
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1738
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1739
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1741
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/e;

    .line 1744
    invoke-virtual {v2, p2, v0}, Landroid/support/design/widget/e;->a(IZ)V

    .line 1737
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1754
    :cond_1
    return v0
.end method

.method public final b(II)V
    .locals 6

    .line 1820
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1821
    nop

    .line 1823
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_1

    .line 1824
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1825
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1827
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/e;

    .line 1831
    invoke-virtual {v3, p2}, Landroid/support/design/widget/e;->f(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1832
    iget-object v3, v3, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 1836
    if-eqz v3, :cond_0

    .line 1837
    nop

    .line 1823
    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1843
    :cond_1
    if-eqz v1, :cond_2

    .line 1844
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->d(I)V

    .line 1846
    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1724
    instance-of v0, p1, Landroid/support/design/widget/e;

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

.method final d(I)V
    .locals 25

    move-object/from16 v7, p0

    .line 1275
    move/from16 v8, p1

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v9

    .line 1276
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 1277
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v11

    .line 1278
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v12

    .line 1279
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v13

    .line 1281
    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v10, :cond_17

    .line 1282
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    .line 1283
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/design/widget/e;

    .line 1284
    if-nez v8, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1281
    :cond_0
    move v1, v10

    move-object v2, v13

    move v0, v14

    move/from16 v22, v15

    goto/16 :goto_d

    .line 1286
    :cond_1
    :goto_1
    move v4, v14

    :goto_2
    if-ge v4, v15, :cond_6

    .line 1291
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1293
    iget-object v1, v5, Landroid/support/design/widget/e;->cd:Landroid/view/View;

    if-ne v1, v0, :cond_5

    .line 1294
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/design/widget/e;

    iget-object v0, v3, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    invoke-static {v7, v0, v2}, Landroid/support/v4/widget/v;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v6, v14, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move/from16 v18, v0

    move-object/from16 v17, v16

    move-object v0, v7

    move/from16 v19, v10

    move-object v10, v1

    move v1, v9

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v3, v17

    move/from16 v16, v4

    move-object/from16 v4, v21

    move/from16 v22, v15

    move-object v15, v5

    move/from16 v5, v18

    move-object/from16 v23, v13

    move-object v13, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/e;II)V

    move-object/from16 v0, v17

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    :cond_2
    move/from16 v2, v18

    move-object/from16 v1, v21

    invoke-direct {v7, v1, v0, v2, v14}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/e;Landroid/graphics/Rect;II)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eqz v1, :cond_3

    invoke-static {v13, v1}, Landroid/support/v4/view/n;->g(Landroid/view/View;I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v13, v2}, Landroid/support/v4/view/n;->e(Landroid/view/View;I)V

    :cond_4
    move-object/from16 v1, v20

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v10}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1290
    :cond_5
    move/from16 v16, v4

    move/from16 v19, v10

    move-object/from16 v23, v13

    move/from16 v22, v15

    move-object v15, v5

    move-object v13, v6

    :goto_3
    add-int/lit8 v4, v16, 0x1

    .line 1286
    move-object v6, v13

    move-object v5, v15

    move/from16 v10, v19

    move/from16 v15, v22

    move-object/from16 v13, v23

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1299
    :cond_6
    move/from16 v19, v10

    move-object/from16 v23, v13

    move/from16 v22, v15

    move-object v15, v5

    move-object v13, v6

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14, v12}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1302
    iget v0, v15, Landroid/support/design/widget/e;->bZ:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/16 v3, 0x50

    const/16 v4, 0x30

    if-eqz v0, :cond_b

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1303
    iget v0, v15, Landroid/support/design/widget/e;->bZ:I

    invoke-static {v0, v9}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v0

    .line 1305
    and-int/lit8 v5, v0, 0x70

    if-eq v5, v4, :cond_8

    if-eq v5, v3, :cond_7

    goto :goto_4

    .line 1310
    :cond_7
    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v10, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 1307
    :cond_8
    iget v5, v11, Landroid/graphics/Rect;->top:I

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1308
    nop

    .line 1313
    :goto_4
    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_9

    goto :goto_5

    .line 1318
    :cond_9
    iget v0, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 1315
    :cond_a
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 1316
    nop

    .line 1324
    :cond_b
    :goto_5
    iget v0, v15, Landroid/support/design/widget/e;->ca:I

    if-eqz v0, :cond_13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 1325
    invoke-static {v13}, Landroid/support/v4/view/n;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_c

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/e;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v6, v10, v15, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget v1, v0, Landroid/support/design/widget/e;->ca:I

    invoke-static {v1, v9}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v6, v1, 0x30

    if-ne v6, v4, :cond_d

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/support/design/widget/e;->topMargin:I

    sub-int/2addr v4, v6

    iget v6, v0, Landroid/support/design/widget/e;->cc:I

    sub-int/2addr v4, v6

    iget v6, v11, Landroid/graphics/Rect;->top:I

    if-ge v4, v6, :cond_d

    iget v6, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    invoke-direct {v7, v13, v6}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    const/4 v14, 0x1

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    :goto_6
    and-int/lit8 v4, v1, 0x50

    if-ne v4, v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/design/widget/e;->bottomMargin:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/design/widget/e;->cc:I

    add-int/2addr v3, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_e

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-direct {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    const/4 v14, 0x1

    :cond_e
    if-nez v14, :cond_f

    const/4 v3, 0x0

    invoke-direct {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    :cond_f
    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_10

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/support/design/widget/e;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/design/widget/e;->cb:I

    sub-int/2addr v2, v3

    iget v3, v11, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_10

    iget v3, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    invoke-direct {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    const/4 v14, 0x1

    goto :goto_7

    :cond_10
    const/4 v14, 0x0

    :goto_7
    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v1

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/support/design/widget/e;->rightMargin:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/support/design/widget/e;->cb:I

    add-int/2addr v1, v0

    iget v0, v11, Landroid/graphics/Rect;->right:I

    if-ge v1, v0, :cond_11

    iget v0, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    invoke-direct {v7, v13, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    const/4 v14, 0x1

    :cond_11
    if-nez v14, :cond_12

    const/4 v0, 0x0

    invoke-direct {v7, v13, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    :goto_8
    invoke-static {v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 1328
    :cond_13
    :goto_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x2

    if-eq v8, v1, :cond_15

    .line 1330
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/e;

    iget-object v1, v1, Landroid/support/design/widget/e;->ci:Landroid/graphics/Rect;

    move-object/from16 v2, v23

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1331
    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1332
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/e;

    iget-object v1, v1, Landroid/support/design/widget/e;->ci:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 1281
    :cond_14
    move/from16 v1, v19

    goto :goto_d

    .line 1338
    :cond_15
    move-object/from16 v2, v23

    :goto_b
    add-int/lit8 v15, v22, 0x1

    :goto_c
    move/from16 v1, v19

    if-ge v15, v1, :cond_16

    .line 1339
    iget-object v3, v7, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1340
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1341
    add-int/lit8 v15, v15, 0x1

    .line 1338
    move/from16 v19, v1

    goto :goto_c

    .line 1281
    :cond_16
    :goto_d
    add-int/lit8 v15, v22, 0x1

    move v14, v0

    move v10, v1

    move-object v13, v2

    goto/16 :goto_0

    .line 1374
    :cond_17
    move-object v2, v13

    invoke-static {v11}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 1375
    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 1376
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 1377
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1222
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 305
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 307
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    .line 308
    nop

    .line 310
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

    .line 311
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 315
    :cond_0
    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 318
    :cond_1
    return-void
.end method

.method public final e(I)V
    .locals 5

    .line 1790
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bS:Landroid/support/v4/view/k;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/view/k;->jZ:I

    .line 1792
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1793
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1794
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1795
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/e;

    .line 1796
    invoke-virtual {v3, p1}, Landroid/support/design/widget/e;->f(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1797
    invoke-virtual {v3, p1, v1}, Landroid/support/design/widget/e;->a(IZ)V

    .line 1805
    iput-boolean v1, v3, Landroid/support/design/widget/e;->ch:Z

    .line 1793
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1807
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bK:Landroid/view/View;

    .line 1808
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 111
    new-instance v0, Landroid/support/design/widget/e;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/e;-><init>(II)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 111
    new-instance v0, Landroid/support/design/widget/e;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 111
    instance-of v0, p1, Landroid/support/design/widget/e;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/design/widget/e;

    check-cast p1, Landroid/support/design/widget/e;

    invoke-direct {v0, p1}, Landroid/support/design/widget/e;-><init>(Landroid/support/design/widget/e;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/design/widget/e;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/design/widget/e;

    invoke-direct {v0, p1}, Landroid/support/design/widget/e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1950
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bS:Landroid/support/v4/view/k;

    iget v0, v0, Landroid/support/v4/view/k;->jZ:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .line 715
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .line 710
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 238
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->u()V

    .line 239
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bM:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/support/design/widget/f;

    invoke-direct {v0, p0}, Landroid/support/design/widget/f;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 244
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {p0}, Landroid/support/v4/view/n;->n(Landroid/view/View;)V

    .line 251
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 252
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 256
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 257
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->u()V

    .line 258
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 260
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bK:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bK:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 265
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 266
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 896
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 897
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    invoke-virtual {v0}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    .line 899
    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    .line 900
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 904
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 507
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->u()V

    .line 510
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 512
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 513
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->u()V

    .line 516
    :cond_2
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 876
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v8

    .line 877
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 878
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_c

    .line 879
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/View;

    .line 880
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    .line 882
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 886
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/e;

    iget-object v2, v1, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, v1, Landroid/support/design/widget/e;->bY:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_a

    iget-object v2, v1, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v13

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v14

    :try_start_0
    invoke-static {v0, v1, v13}, Landroid/support/v4/widget/v;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/support/design/widget/e;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object v1, v0

    move v2, v8

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move/from16 v16, v6

    move v6, v7

    move v10, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/e;II)V

    move/from16 v1, v16

    invoke-direct {v0, v15, v14, v10, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/e;Landroid/graphics/Rect;II)V

    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Rect;->right:I

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v13}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v14}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v13}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v14}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    throw v0

    :cond_1
    iget v2, v1, Landroid/support/design/widget/e;->bX:I

    if-ltz v2, :cond_7

    iget v1, v1, Landroid/support/design/widget/e;->bX:I

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/e;

    iget v4, v2, Landroid/support/design/widget/e;->gravity:I

    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->c(I)I

    move-result v4

    invoke-static {v4, v8}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x7

    and-int/lit8 v4, v4, 0x70

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-ne v8, v3, :cond_2

    sub-int v1, v6, v1

    :cond_2
    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result v1

    sub-int/2addr v1, v10

    if-eq v5, v3, :cond_4

    const/4 v3, 0x5

    if-eq v5, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v1, v10

    goto :goto_2

    :cond_4
    div-int/lit8 v3, v10, 0x2

    add-int/2addr v1, v3

    :goto_2
    const/16 v3, 0x10

    if-eq v4, v3, :cond_6

    const/16 v3, 0x50

    if-eq v4, v3, :cond_5

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    add-int v3, v14, v13

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    div-int/lit8 v3, v13, 0x2

    add-int/2addr v3, v14

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v2, Landroid/support/design/widget/e;->leftMargin:I

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v6, v10

    iget v5, v2, Landroid/support/design/widget/e;->rightMargin:I

    sub-int/2addr v6, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v4

    iget v5, v2, Landroid/support/design/widget/e;->topMargin:I

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v7, v5

    sub-int/2addr v7, v13

    iget v2, v2, Landroid/support/design/widget/e;->bottomMargin:I

    sub-int/2addr v7, v2

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v10, v1

    add-int/2addr v13, v2

    invoke-virtual {v12, v1, v2, v10, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/e;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/support/design/widget/e;->leftMargin:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, v1, Landroid/support/design/widget/e;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/support/design/widget/e;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/support/design/widget/e;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    if-eqz v2, :cond_8

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v12}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    invoke-virtual {v3}, Landroid/support/v4/view/z;->getSystemWindowInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    invoke-virtual {v3}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iget v2, v7, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    invoke-virtual {v3}, Landroid/support/v4/view/z;->getSystemWindowInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    invoke-virtual {v3}, Landroid/support/v4/view/z;->getSystemWindowInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :cond_8
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->t()Landroid/graphics/Rect;

    move-result-object v10

    iget v1, v1, Landroid/support/design/widget/e;->gravity:I

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->b(I)I

    move-result v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_9

    move-object v4, v7

    move-object v5, v10

    move v6, v8

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_4

    :cond_9
    invoke-static {v1, v2, v3, v7, v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_4
    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->right:I

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-static {v7}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v10}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_b
    :goto_5
    const/4 v14, 0x0

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 892
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29

    move-object/from16 v6, p0

    .line 739
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bE:Landroid/support/v4/widget/a;

    iget-object v1, v0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v1}, Landroid/support/v4/c/u;->size()I

    move-result v1

    const/4 v7, 0x0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Landroid/support/v4/widget/a;->lv:Landroid/support/v4/c/q;

    invoke-interface {v4, v3}, Landroid/support/v4/c/q;->p(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v0}, Landroid/support/v4/c/u;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_1
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1a

    invoke-virtual {v6, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Landroid/support/design/widget/e;

    move-result-object v4

    iget v5, v4, Landroid/support/design/widget/e;->bY:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ne v5, v8, :cond_2

    :goto_2
    iput-object v9, v4, Landroid/support/design/widget/e;->cd:Landroid/view/View;

    iput-object v9, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    goto/16 :goto_8

    :cond_2
    iget-object v5, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    iget v8, v4, Landroid/support/design/widget/e;->bY:I

    if-eq v5, v8, :cond_3

    :goto_3
    move v5, v7

    goto :goto_6

    :cond_3
    iget-object v5, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    iget-object v8, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    :goto_4
    if-eq v8, v6, :cond_7

    if-eqz v8, :cond_6

    if-ne v8, v3, :cond_4

    goto :goto_5

    :cond_4
    instance-of v10, v8, Landroid/view/View;

    if-eqz v10, :cond_5

    move-object v5, v8

    check-cast v5, Landroid/view/View;

    :cond_5
    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    goto :goto_4

    :cond_6
    :goto_5
    iput-object v9, v4, Landroid/support/design/widget/e;->cd:Landroid/view/View;

    iput-object v9, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    goto :goto_3

    :cond_7
    iput-object v5, v4, Landroid/support/design/widget/e;->cd:Landroid/view/View;

    move v5, v2

    :goto_6
    if-nez v5, :cond_10

    :cond_8
    iget v5, v4, Landroid/support/design/widget/e;->bY:I

    invoke-virtual {v6, v5}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    iget-object v5, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_f

    iget-object v5, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    if-ne v5, v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v5, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    iget-object v8, v4, Landroid/support/design/widget/e;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    :goto_7
    if-eq v8, v6, :cond_e

    if-eqz v8, :cond_e

    if-ne v8, v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    instance-of v10, v8, Landroid/view/View;

    if-eqz v10, :cond_d

    move-object v5, v8

    check-cast v5, Landroid/view/View;

    :cond_d
    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    goto :goto_7

    :cond_e
    iput-object v5, v4, Landroid/support/design/widget/e;->cd:Landroid/view/View;

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_19

    goto/16 :goto_2

    :cond_10
    :goto_8
    iget-object v5, v6, Landroid/support/design/widget/CoordinatorLayout;->bE:Landroid/support/v4/widget/a;

    invoke-virtual {v5, v3}, Landroid/support/v4/widget/a;->r(Ljava/lang/Object;)V

    move v5, v7

    :goto_9
    if-ge v5, v0, :cond_18

    if-eq v5, v1, :cond_17

    invoke-virtual {v6, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v4, Landroid/support/design/widget/e;->cd:Landroid/view/View;

    if-eq v8, v9, :cond_12

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/e;

    iget v10, v10, Landroid/support/design/widget/e;->bZ:I

    invoke-static {v10, v9}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v10

    if-eqz v10, :cond_11

    iget v11, v4, Landroid/support/design/widget/e;->ca:I

    invoke-static {v11, v9}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v9

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_11

    move v9, v2

    goto :goto_a

    :cond_11
    move v9, v7

    :goto_a
    if-nez v9, :cond_12

    iget-object v9, v4, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    move v9, v7

    goto :goto_b

    :cond_12
    move v9, v2

    :goto_b
    if-eqz v9, :cond_17

    iget-object v9, v6, Landroid/support/design/widget/CoordinatorLayout;->bE:Landroid/support/v4/widget/a;

    iget-object v9, v9, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v9, v8}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, v6, Landroid/support/design/widget/CoordinatorLayout;->bE:Landroid/support/v4/widget/a;

    invoke-virtual {v9, v8}, Landroid/support/v4/widget/a;->r(Ljava/lang/Object;)V

    :cond_13
    iget-object v9, v6, Landroid/support/design/widget/CoordinatorLayout;->bE:Landroid/support/v4/widget/a;

    iget-object v10, v9, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v10, v8}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, v9, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v10, v3}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, v9, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v10, v8}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_15

    iget-object v10, v9, Landroid/support/v4/widget/a;->lv:Landroid/support/v4/c/q;

    invoke-interface {v10}, Landroid/support/v4/c/q;->aH()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_14

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    iget-object v9, v9, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v9, v8, v10}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v4, Landroid/support/design/widget/e;->bY:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bE:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->aX()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_d
    if-ge v1, v0, :cond_1e

    invoke-virtual {v6, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v6, Landroid/support/design/widget/CoordinatorLayout;->bE:Landroid/support/v4/widget/a;

    iget-object v5, v4, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v5}, Landroid/support/v4/c/u;->size()I

    move-result v5

    move v8, v7

    :goto_e
    if-ge v8, v5, :cond_1c

    iget-object v9, v4, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v9, v8}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_1b

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move v3, v2

    goto :goto_f

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1c
    move v3, v7

    :goto_f
    if-eqz v3, :cond_1d

    move v0, v2

    goto :goto_10

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    move v0, v7

    :goto_10
    iget-boolean v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bM:Z

    if-eq v0, v1, :cond_23

    if-eqz v0, :cond_21

    iget-boolean v0, v6, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_20

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/support/design/widget/f;

    invoke-direct {v0, v6}, Landroid/support/design/widget/f;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_20
    iput-boolean v2, v6, Landroid/support/design/widget/CoordinatorLayout;->bM:Z

    goto :goto_11

    :cond_21
    iget-boolean v0, v6, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_22

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bL:Landroid/support/design/widget/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_22
    iput-boolean v7, v6, Landroid/support/design/widget/CoordinatorLayout;->bM:Z

    .line 742
    :cond_23
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v8

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v9

    .line 745
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v1

    .line 746
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v10

    .line 747
    if-ne v10, v2, :cond_24

    .line 748
    move v11, v2

    goto :goto_12

    .line 747
    :cond_24
    nop

    .line 748
    move v11, v7

    :goto_12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 749
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 750
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 751
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 753
    add-int v16, v8, v9

    .line 754
    add-int v17, v0, v1

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    .line 756
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 757
    nop

    .line 759
    iget-object v3, v6, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    if-eqz v3, :cond_25

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 761
    move/from16 v18, v2

    goto :goto_13

    .line 759
    :cond_25
    nop

    .line 761
    move/from16 v18, v7

    :goto_13
    iget-object v2, v6, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 762
    move v3, v0

    move v2, v7

    move v4, v2

    :goto_14
    if-ge v4, v5, :cond_2f

    .line 763
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bD:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 764
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v20, v1

    const/16 v1, 0x8

    if-eq v7, v1, :cond_2e

    .line 766
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/design/widget/e;

    .line 771
    nop

    .line 772
    iget v1, v7, Landroid/support/design/widget/e;->bX:I

    if-ltz v1, :cond_2b

    if-eqz v12, :cond_2b

    .line 773
    iget v1, v7, Landroid/support/design/widget/e;->bX:I

    invoke-direct {v6, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result v1

    .line 774
    move/from16 v21, v2

    iget v2, v7, Landroid/support/design/widget/e;->gravity:I

    .line 775
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->c(I)I

    move-result v2

    .line 774
    invoke-static {v2, v10}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 777
    move/from16 v22, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    if-eqz v11, :cond_27

    :cond_26
    const/4 v3, 0x5

    if-ne v2, v3, :cond_28

    if-eqz v11, :cond_28

    .line 779
    :cond_27
    sub-int v2, v13, v9

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 786
    move v3, v1

    move/from16 v19, v2

    goto :goto_15

    .line 780
    :cond_28
    if-ne v2, v3, :cond_29

    if-eqz v11, :cond_2a

    :cond_29
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    if-eqz v11, :cond_2c

    .line 782
    :cond_2a
    sub-int/2addr v1, v8

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 786
    move/from16 v19, v1

    goto :goto_15

    :cond_2b
    move/from16 v21, v2

    move/from16 v22, v3

    :cond_2c
    const/4 v3, 0x0

    move/from16 v19, v3

    .line 787
    :goto_15
    nop

    .line 788
    if-eqz v18, :cond_2d

    invoke-static {v0}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 791
    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    invoke-virtual {v1}, Landroid/support/v4/view/z;->getSystemWindowInsetLeft()I

    move-result v1

    iget-object v2, v6, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    .line 792
    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 793
    iget-object v2, v6, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v2

    iget-object v3, v6, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    .line 794
    invoke-virtual {v3}, Landroid/support/v4/view/z;->getSystemWindowInsetBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 796
    sub-int v1, v13, v1

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 798
    sub-int v2, v15, v2

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 802
    move/from16 v23, v2

    move v2, v1

    goto :goto_16

    :cond_2d
    move/from16 v2, p1

    move/from16 v23, p2

    :goto_16
    const/16 v24, 0x0

    move-object v3, v0

    move-object v0, v6

    move/from16 v25, v20

    move-object v1, v3

    move/from16 v26, v21

    move-object/from16 v27, v3

    move/from16 v28, v22

    const/16 v20, 0x0

    move/from16 v3, v19

    move/from16 v19, v4

    move/from16 v4, v23

    move/from16 v21, v5

    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 809
    move-object/from16 v0, v27

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v1, v16, v1

    iget v2, v7, Landroid/support/design/widget/e;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v7, Landroid/support/design/widget/e;->rightMargin:I

    add-int/2addr v1, v2

    move/from16 v2, v28

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 812
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v17, v2

    iget v3, v7, Landroid/support/design/widget/e;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v7, Landroid/support/design/widget/e;->bottomMargin:I

    add-int/2addr v2, v3

    move/from16 v3, v25

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 814
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    move/from16 v7, v26

    invoke-static {v7, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    .line 762
    move v3, v1

    move v1, v2

    move v2, v0

    goto :goto_17

    :cond_2e
    move v7, v2

    move v2, v3

    move/from16 v19, v4

    move/from16 v21, v5

    move/from16 v3, v20

    const/16 v20, 0x0

    move v1, v3

    move v3, v2

    move v2, v7

    :goto_17
    add-int/lit8 v4, v19, 0x1

    move/from16 v7, v20

    move/from16 v5, v21

    goto/16 :goto_14

    .line 817
    :cond_2f
    move v7, v2

    move v2, v3

    move v3, v1

    const/high16 v0, -0x1000000

    and-int/2addr v0, v7

    move/from16 v1, p1

    invoke-static {v2, v1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 819
    shl-int/lit8 v1, v7, 0x10

    move/from16 v2, p2

    invoke-static {v3, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 821
    invoke-virtual {v6, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 822
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 1896
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1899
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1900
    invoke-virtual {p0, p3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 1901
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1903
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1907
    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1917
    :cond_1
    return p2
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3

    .line 1925
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1928
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1929
    invoke-virtual {p0, p3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1930
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1932
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1936
    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1945
    :cond_1
    return p2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .line 1850
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(II[II)V

    .line 1851
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 1813
    const/4 p1, 0x0

    invoke-virtual {p0, p5, p1}, Landroid/support/design/widget/CoordinatorLayout;->b(II)V

    .line 1815
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1759
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)V

    .line 1760
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 3147
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_0

    .line 3148
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3149
    return-void

    .line 3152
    :cond_0
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 3153
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->jR:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3155
    iget-object p1, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;->ck:Landroid/util/SparseArray;

    .line 3157
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3158
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3159
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 3160
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Landroid/support/design/widget/e;

    move-result-object v2

    .line 3161
    iget-object v2, v2, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 3163
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 3164
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 3165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3170
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 3174
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3176
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3177
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3178
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3179
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3180
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/e;

    .line 3181
    iget-object v4, v4, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 3183
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v4, :cond_0

    .line 3185
    sget-object v4, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 3186
    if-eqz v4, :cond_0

    .line 3187
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3177
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3191
    :cond_1
    iput-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->ck:Landroid/util/SparseArray;

    .line 3192
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1729
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 1785
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->e(I)V

    .line 1786
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 521
    nop

    .line 522
    nop

    .line 523
    nop

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 527
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bJ:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 530
    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->bJ:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/e;

    .line 531
    iget-object v3, v3, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 532
    if-eqz v3, :cond_1

    .line 533
    nop

    .line 538
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->bJ:Landroid/view/View;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 539
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 540
    :cond_2
    if-eqz v1, :cond_3

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 543
    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v5, v7

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 546
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 549
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 554
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 557
    :cond_4
    const/4 p1, 0x1

    if-eq v0, p1, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    .line 558
    :cond_5
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->u()V

    .line 561
    :cond_6
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 3197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 3198
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 566
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 567
    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bH:Z

    if-nez p1, :cond_0

    .line 568
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->u()V

    .line 569
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bH:Z

    .line 571
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 1

    .line 908
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 909
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bR:Landroid/support/v4/view/l;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/design/widget/a;

    invoke-direct {p1, p0}, Landroid/support/design/widget/a;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bR:Landroid/support/v4/view/l;

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bR:Landroid/support/v4/view/l;

    invoke-static {p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/l;)V

    const/16 p1, 0x500

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/l;)V

    .line 910
    :cond_2
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bQ:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 233
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 327
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 331
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 333
    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bP:Landroid/graphics/drawable/Drawable;

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
