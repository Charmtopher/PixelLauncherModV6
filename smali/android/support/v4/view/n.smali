.class public Landroid/support/v4/view/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ka:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static kb:Ljava/lang/reflect/Field;

.field private static kc:Z

.field private static kd:Ljava/lang/reflect/Field;

.field private static ke:Z

.field private static kf:Ljava/util/WeakHashMap;

.field private static kg:Ljava/util/WeakHashMap;

.field private static kh:Ljava/lang/reflect/Field;

.field private static ki:Z

.field private static kj:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 444
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/support/v4/view/n;->ka:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 456
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/view/n;->kg:Ljava/util/WeakHashMap;

    .line 460
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/n;->ki:Z

    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 2

    .line 2016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2017
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2019
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 2

    .line 929
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 930
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    return-void

    .line 932
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 934
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 2

    .line 1266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1267
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void

    .line 1271
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1273
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1275
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .locals 0

    .line 668
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/support/v4/view/b;->mBridge:Landroid/view/View$AccessibilityDelegate;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 669
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/l;)V
    .locals 2

    .line 2192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2193
    if-nez p1, :cond_0

    .line 2194
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2195
    return-void

    .line 2198
    :cond_0
    new-instance v0, Landroid/support/v4/view/o;

    invoke-direct {v0, p1}, Landroid/support/v4/view/o;-><init>(Landroid/support/v4/view/l;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2208
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .line 969
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 970
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 972
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 974
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 2062
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2063
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    return-void

    .line 2065
    :cond_0
    sget-object v0, Landroid/support/v4/view/n;->kf:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2066
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->kf:Ljava/util/WeakHashMap;

    .line 2068
    :cond_1
    sget-object v0, Landroid/support/v4/view/n;->kf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    return-void
.end method

.method private static aL()Landroid/graphics/Rect;
    .locals 2

    .line 465
    sget-object v0, Landroid/support/v4/view/n;->kj:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->kj:Ljava/lang/ThreadLocal;

    .line 468
    :cond_0
    sget-object v0, Landroid/support/v4/view/n;->kj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 469
    if-nez v0, :cond_1

    .line 470
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 471
    sget-object v1, Landroid/support/v4/view/n;->kj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 473
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 474
    return-object v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 2

    .line 2037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2038
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 2040
    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 947
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 948
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 950
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 952
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 2

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAutofill()I

    move-result p0

    return p0

    .line 725
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 2

    .line 2895
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2896
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    .line 2898
    :cond_0
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 2

    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 767
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 769
    :cond_0
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 2

    .line 1018
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 1019
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 1024
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1025
    const/4 p1, 0x2

    .line 1028
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1030
    :cond_1
    return-void
.end method

.method public static d(Landroid/view/View;)Z
    .locals 4

    .line 848
    sget-boolean v0, Landroid/support/v4/view/n;->ki:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 849
    return v1

    .line 851
    :cond_0
    sget-object v0, Landroid/support/v4/view/n;->kh:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 853
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 854
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 855
    sput-object v0, Landroid/support/v4/view/n;->kh:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    goto :goto_0

    .line 856
    :catch_0
    move-exception p0

    .line 857
    sput-boolean v2, Landroid/support/v4/view/n;->ki:Z

    .line 858
    return v1

    .line 862
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Landroid/support/v4/view/n;->kh:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1

    .line 863
    :catch_1
    move-exception p0

    .line 864
    sput-boolean v2, Landroid/support/v4/view/n;->ki:Z

    .line 865
    return v1
.end method

.method public static e(Landroid/view/View;I)V
    .locals 6

    .line 2906
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2907
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void

    .line 2908
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2909
    invoke-static {}, Landroid/support/v4/view/n;->aL()Landroid/graphics/Rect;

    move-result-object v0

    .line 2910
    const/4 v1, 0x0

    .line 2912
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2913
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2914
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 2915
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2918
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2919
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2918
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    .line 2923
    xor-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/view/n;->f(Landroid/view/View;I)V

    .line 2927
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2928
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 2927
    invoke-virtual {v0, p1, v1, v3, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2929
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2931
    :cond_2
    return-void

    .line 2932
    :cond_3
    invoke-static {p0, p1}, Landroid/support/v4/view/n;->f(Landroid/view/View;I)V

    .line 2934
    return-void
.end method

.method public static e(Landroid/view/View;)Z
    .locals 2

    .line 878
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 879
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    return p0

    .line 881
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Landroid/view/View;)V
    .locals 2

    .line 907
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    .line 910
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 912
    return-void
.end method

.method private static f(Landroid/view/View;I)V
    .locals 0

    .line 2937
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2938
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2939
    invoke-static {p0}, Landroid/support/v4/view/n;->t(Landroid/view/View;)V

    .line 2941
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 2942
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2943
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/n;->t(Landroid/view/View;)V

    .line 2946
    :cond_0
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 2

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 992
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p0

    return p0

    .line 994
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/view/View;I)V
    .locals 6

    .line 2954
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2955
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void

    .line 2956
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2957
    invoke-static {}, Landroid/support/v4/view/n;->aL()Landroid/graphics/Rect;

    move-result-object v0

    .line 2958
    const/4 v1, 0x0

    .line 2960
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2961
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2962
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 2963
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2966
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2967
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2966
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    .line 2971
    xor-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/view/n;->h(Landroid/view/View;I)V

    .line 2975
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2976
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 2975
    invoke-virtual {v0, p1, v1, v3, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2977
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2979
    :cond_2
    return-void

    .line 2980
    :cond_3
    invoke-static {p0, p1}, Landroid/support/v4/view/n;->h(Landroid/view/View;I)V

    .line 2982
    return-void
.end method

.method public static h(Landroid/view/View;)I
    .locals 2

    .line 1289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0

    .line 1292
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static h(Landroid/view/View;I)V
    .locals 0

    .line 2985
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2986
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2987
    invoke-static {p0}, Landroid/support/v4/view/n;->t(Landroid/view/View;)V

    .line 2989
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 2990
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2991
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/n;->t(Landroid/view/View;)V

    .line 2994
    :cond_0
    return-void
.end method

.method public static i(Landroid/view/View;)I
    .locals 3

    .line 1675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1676
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0

    .line 1679
    :cond_0
    sget-boolean v0, Landroid/support/v4/view/n;->kc:Z

    if-nez v0, :cond_1

    .line 1681
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1682
    sput-object v1, Landroid/support/v4/view/n;->kb:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    goto :goto_0

    .line 1683
    :catch_0
    move-exception v1

    .line 1686
    :goto_0
    sput-boolean v0, Landroid/support/v4/view/n;->kc:Z

    .line 1689
    :cond_1
    sget-object v0, Landroid/support/v4/view/n;->kb:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1691
    :try_start_1
    sget-object v0, Landroid/support/v4/view/n;->kb:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 1692
    :catch_1
    move-exception p0

    .line 1698
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/view/View;)I
    .locals 3

    .line 1709
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1710
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0

    .line 1713
    :cond_0
    sget-boolean v0, Landroid/support/v4/view/n;->ke:Z

    if-nez v0, :cond_1

    .line 1715
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1716
    sput-object v1, Landroid/support/v4/view/n;->kd:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    goto :goto_0

    .line 1717
    :catch_0
    move-exception v1

    .line 1720
    :goto_0
    sput-boolean v0, Landroid/support/v4/view/n;->ke:Z

    .line 1723
    :cond_1
    sget-object v0, Landroid/support/v4/view/n;->kd:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1725
    :try_start_1
    sget-object v0, Landroid/support/v4/view/n;->kd:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 1726
    :catch_1
    move-exception p0

    .line 1732
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Landroid/view/View;)F
    .locals 2

    .line 2027
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2028
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0

    .line 2030
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Landroid/view/View;)F
    .locals 2

    .line 2048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2049
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    return p0

    .line 2051
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 2084
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2087
    :cond_0
    sget-object v0, Landroid/support/v4/view/n;->kf:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2088
    const/4 p0, 0x0

    return-object p0

    .line 2090
    :cond_1
    sget-object v0, Landroid/support/v4/view/n;->kf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static n(Landroid/view/View;)V
    .locals 2

    .line 2108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 2109
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void

    .line 2110
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2111
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 2113
    :cond_1
    return-void
.end method

.method public static o(Landroid/view/View;)Z
    .locals 2

    .line 2153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2154
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p0

    return p0

    .line 2156
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 0

    .line 642
    iget-object p1, p1, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 643
    return-void
.end method

.method public static p(Landroid/view/View;)Z
    .locals 2

    .line 2305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2306
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p0

    return p0

    .line 2308
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1092
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 1094
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Landroid/view/View;)V
    .locals 2

    .line 2510
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2511
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    return-void

    .line 2512
    :cond_0
    instance-of v0, p0, Landroid/support/v4/view/f;

    if-eqz v0, :cond_1

    .line 2513
    check-cast p0, Landroid/support/v4/view/f;

    invoke-interface {p0}, Landroid/support/v4/view/f;->stopNestedScroll()V

    .line 2515
    :cond_1
    return-void
.end method

.method public static r(Landroid/view/View;)Z
    .locals 2

    .line 2845
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2846
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    return p0

    .line 2848
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Landroid/view/View;)F
    .locals 2

    .line 2876
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2877
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    return p0

    .line 2879
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static t(Landroid/view/View;)V
    .locals 2

    .line 2997
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 2998
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2999
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3000
    return-void
.end method

.method public static u(Landroid/view/View;)Z
    .locals 2

    .line 3039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3040
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    .line 3042
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Landroid/view/View;)Landroid/view/Display;
    .locals 2

    .line 3150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3151
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 3153
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/n;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3156
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 3158
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
