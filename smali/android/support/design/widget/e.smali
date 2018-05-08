.class public Landroid/support/design/widget/e;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field bU:Landroid/support/design/widget/c;

.field bV:Z

.field public bW:I

.field public bX:I

.field bY:I

.field public bZ:I

.field public ca:I

.field cb:I

.field cc:I

.field cd:Landroid/view/View;

.field ce:Z

.field private cf:Z

.field private cg:Z

.field ch:Z

.field final ci:Landroid/graphics/Rect;

.field cj:Ljava/lang/Object;

.field public gravity:I

.field mAnchorView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2778
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2718
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/e;->bV:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/e;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/e;->bW:I

    .line 2740
    const/4 p2, -0x1

    iput p2, p0, Landroid/support/design/widget/e;->bX:I

    .line 2746
    iput p2, p0, Landroid/support/design/widget/e;->bY:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/e;->bZ:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/e;->ca:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/e;->ci:Landroid/graphics/Rect;

    .line 2779
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2782
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2718
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/e;->bV:Z

    .line 2727
    iput v0, p0, Landroid/support/design/widget/e;->gravity:I

    .line 2733
    iput v0, p0, Landroid/support/design/widget/e;->bW:I

    .line 2740
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/design/widget/e;->bX:I

    .line 2746
    iput v1, p0, Landroid/support/design/widget/e;->bY:I

    .line 2753
    iput v0, p0, Landroid/support/design/widget/e;->bZ:I

    .line 2760
    iput v0, p0, Landroid/support/design/widget/e;->ca:I

    .line 2773
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/e;->ci:Landroid/graphics/Rect;

    .line 2784
    sget-object v2, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2787
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/e;->gravity:I

    .line 2790
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/e;->bY:I

    .line 2792
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchorGravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/e;->bW:I

    .line 2796
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->bX:I

    .line 2799
    sget v1, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->bZ:I

    .line 2800
    sget v1, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->ca:I

    .line 2802
    sget v0, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/e;->bV:Z

    .line 2804
    iget-boolean v0, p0, Landroid/support/design/widget/e;->bV:Z

    if-eqz v0, :cond_0

    .line 2805
    sget v0, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/c;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 2808
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2810
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/e;)V
    .locals 1

    .line 2817
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2718
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/e;->bV:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/e;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/e;->bW:I

    .line 2740
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/e;->bX:I

    .line 2746
    iput v0, p0, Landroid/support/design/widget/e;->bY:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/e;->bZ:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/e;->ca:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/e;->ci:Landroid/graphics/Rect;

    .line 2818
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 2825
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2718
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/e;->bV:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/e;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/e;->bW:I

    .line 2740
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/e;->bX:I

    .line 2746
    iput v0, p0, Landroid/support/design/widget/e;->bY:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/e;->bZ:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/e;->ca:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/e;->ci:Landroid/graphics/Rect;

    .line 2826
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2821
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2718
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/e;->bV:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/e;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/e;->bW:I

    .line 2740
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/e;->bX:I

    .line 2746
    iput v0, p0, Landroid/support/design/widget/e;->bY:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/e;->bZ:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/e;->ca:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/e;->ci:Landroid/graphics/Rect;

    .line 2822
    return-void
.end method


# virtual methods
.method final a(IZ)V
    .locals 0

    .line 2966
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2971
    :pswitch_0
    iput-boolean p2, p0, Landroid/support/design/widget/e;->cg:Z

    goto :goto_0

    .line 2968
    :pswitch_1
    iput-boolean p2, p0, Landroid/support/design/widget/e;->cf:Z

    .line 2969
    return-void

    .line 2974
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/support/design/widget/c;)V
    .locals 1

    .line 2874
    iget-object v0, p0, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    if-eq v0, p1, :cond_0

    .line 2875
    iput-object p1, p0, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    .line 2881
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/e;->cj:Ljava/lang/Object;

    .line 2882
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/e;->bV:Z

    .line 2884
    :cond_0
    return-void
.end method

.method final f(I)Z
    .locals 0

    .line 2977
    packed-switch p1, :pswitch_data_0

    .line 2983
    const/4 p1, 0x0

    return p1

    .line 2981
    :pswitch_0
    iget-boolean p1, p0, Landroid/support/design/widget/e;->cg:Z

    return p1

    .line 2979
    :pswitch_1
    iget-boolean p1, p0, Landroid/support/design/widget/e;->cf:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
