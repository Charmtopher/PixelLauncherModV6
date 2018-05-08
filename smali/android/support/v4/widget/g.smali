.class public abstract Landroid/support/v4/widget/g;
.super Landroid/support/v4/view/b;
.source "SourceFile"


# static fields
.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/l;

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/m;


# instance fields
.field public mAccessibilityFocusedVirtualViewId:I

.field final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field public final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/j;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/g;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 333
    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0}, Landroid/support/v4/widget/h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/g;->NODE_ADAPTER:Landroid/support/v4/widget/l;

    .line 345
    new-instance v0, Landroid/support/v4/widget/i;

    invoke-direct {v0}, Landroid/support/v4/widget/i;-><init>()V

    sput-object v0, Landroid/support/v4/widget/g;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/m;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/g;->mTempParentRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/g;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/g;->mTempGlobalRect:[I

    .line 119
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    .line 122
    iput v0, p0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    .line 125
    iput v0, p0, Landroid/support/v4/widget/g;->mHoveredVirtualViewId:I

    .line 134
    if-eqz p1, :cond_1

    .line 138
    iput-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/g;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    invoke-static {p1}, Landroid/support/v4/view/n;->g(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {p1, v0}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    .line 151
    :cond_0
    return-void

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Landroid/support/v4/widget/g;)I
    .locals 0

    .line 89
    iget p0, p0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    return p0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/g;)I
    .locals 0

    .line 89
    iget p0, p0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    return p0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/a/a;
    .locals 8

    .line 789
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 792
    iget-object v1, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 793
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/a;->setFocusable(Z)V

    .line 794
    const-string v1, "android.view.View"

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setClassName(Ljava/lang/CharSequence;)V

    .line 795
    sget-object v1, Landroid/support/v4/widget/g;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 796
    sget-object v1, Landroid/support/v4/widget/g;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 797
    iget-object v1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setParent(Landroid/view/View;)V

    .line 800
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/g;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 803
    iget-object v1, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 808
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/g;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 809
    iget-object v1, p0, Landroid/support/v4/widget/g;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/support/v4/widget/g;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 814
    iget-object v1, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    .line 815
    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_d

    .line 819
    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-nez v1, :cond_c

    .line 825
    iget-object v1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    iget-object v4, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 829
    :cond_2
    iget v1, p0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    const/4 v4, 0x0

    if-ne v1, p1, :cond_3

    .line 830
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/a;->setAccessibilityFocused(Z)V

    .line 831
    invoke-virtual {v0, v3}, Landroid/support/v4/view/a/a;->addAction(I)V

    goto :goto_1

    .line 833
    :cond_3
    invoke-virtual {v0, v4}, Landroid/support/v4/view/a/a;->setAccessibilityFocused(Z)V

    .line 834
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->addAction(I)V

    .line 838
    :goto_1
    iget v1, p0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    if-ne v1, p1, :cond_4

    .line 839
    move p1, v2

    goto :goto_2

    .line 838
    :cond_4
    nop

    .line 839
    move p1, v4

    :goto_2
    if-eqz p1, :cond_5

    .line 840
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->addAction(I)V

    goto :goto_3

    .line 841
    :cond_5
    iget-object v1, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 842
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/a;->addAction(I)V

    .line 844
    :cond_6
    :goto_3
    iget-object v1, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 846
    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/g;->mTempGlobalRect:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 850
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/a;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 851
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/support/v4/widget/g;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 852
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 855
    iget p1, v0, Landroid/support/v4/view/a/a;->lq:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    .line 856
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object p1

    .line 858
    iget v3, v0, Landroid/support/v4/view/a/a;->lq:I

    .line 859
    :goto_4
    if-eq v3, v1, :cond_8

    .line 862
    iget-object v6, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    iput v1, p1, Landroid/support/v4/view/a/a;->lq:I

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_7

    iget-object v7, p1, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, v6, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 863
    :cond_7
    sget-object v6, Landroid/support/v4/widget/g;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/support/v4/view/a/a;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 865
    invoke-virtual {p0, v3, p1}, Landroid/support/v4/widget/g;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 866
    iget-object v3, p0, Landroid/support/v4/widget/g;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 867
    iget-object v3, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v4/widget/g;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/v4/widget/g;->mTempParentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 860
    iget v3, p1, Landroid/support/v4/view/a/a;->lq:I

    goto :goto_4

    .line 869
    :cond_8
    iget-object p1, p1, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 872
    :cond_9
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/g;->mTempGlobalRect:[I

    aget v1, v1, v4

    iget-object v3, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v4/widget/g;->mTempGlobalRect:[I

    aget v3, v3, v2

    iget-object v6, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    .line 873
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v3, v6

    .line 872
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 876
    :cond_a
    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/g;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 877
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/g;->mTempGlobalRect:[I

    aget v1, v1, v4

    iget-object v3, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v4/widget/g;->mTempGlobalRect:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    .line 878
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 877
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 879
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/g;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    .line 880
    if-eqz p1, :cond_b

    .line 881
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/a;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 883
    iget-object p1, p0, Landroid/support/v4/widget/g;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/g;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 884
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_b

    iget-object p1, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 889
    :cond_b
    return-object v0

    .line 820
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 816
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 810
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 3

    .line 930
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 935
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 936
    return v0

    .line 940
    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 941
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 942
    check-cast p1, Landroid/view/View;

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 946
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 947
    goto :goto_0

    .line 944
    :cond_3
    :goto_1
    return v0

    .line 950
    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0

    .line 931
    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method final clearAccessibilityFocus(I)Z
    .locals 1

    .line 996
    iget v0, p0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 997
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    .line 998
    iget-object v0, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 999
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/g;->sendEventForVirtualView(II)Z

    .line 1001
    const/4 p1, 0x1

    return p1

    .line 1003
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 1

    .line 1044
    iget v0, p0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, p1, :cond_0

    .line 1046
    const/4 p1, 0x0

    return p1

    .line 1049
    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    .line 1051
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/g;->sendEventForVirtualView(II)Z

    .line 1054
    const/4 p1, 0x1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/d;
    .locals 0

    .line 155
    iget-object p1, p0, Landroid/support/v4/widget/g;->mNodeProvider:Landroid/support/v4/widget/j;

    if-nez p1, :cond_0

    .line 156
    new-instance p1, Landroid/support/v4/widget/j;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/j;-><init>(Landroid/support/v4/widget/g;)V

    iput-object p1, p0, Landroid/support/v4/widget/g;->mNodeProvider:Landroid/support/v4/widget/j;

    .line 158
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/g;->mNodeProvider:Landroid/support/v4/widget/j;

    return-object p1
.end method

.method public abstract getVirtualViewAt(FF)I
.end method

.method public abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method final obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;
    .locals 7

    .line 717
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 718
    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/view/n;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/g;->getVisibleVirtualViews(Ljava/util/List;)V

    iget-object v1, p1, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    iget-object v5, p1, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    .line 721
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/g;->createNodeForChild(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 658
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 661
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 0

    .line 753
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 756
    return-void
.end method

.method public abstract onPerformActionForVirtualView$5985f823(II)Z
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1114
    return-void
.end method

.method public abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 4

    .line 503
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Landroid/support/v4/widget/g;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 507
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 508
    if-nez v1, :cond_1

    .line 509
    return v0

    .line 512
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/g;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/g;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, v0, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    :cond_4
    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 513
    :goto_1
    iget-object p1, p0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 504
    :cond_6
    :goto_2
    return v0
.end method

.method public final updateHoveredVirtualView(I)V
    .locals 2

    .line 610
    iget v0, p0, Landroid/support/v4/widget/g;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 611
    return-void

    .line 614
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/g;->mHoveredVirtualViewId:I

    .line 615
    iput p1, p0, Landroid/support/v4/widget/g;->mHoveredVirtualViewId:I

    .line 619
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/g;->sendEventForVirtualView(II)Z

    .line 620
    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/g;->sendEventForVirtualView(II)Z

    .line 622
    return-void
.end method
