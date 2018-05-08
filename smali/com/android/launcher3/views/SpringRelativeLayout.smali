.class public Lcom/android/launcher3/views/SpringRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final DAMPED_SCROLL:Landroid/support/a/z;


# instance fields
.field private mDampedScrollShift:F

.field private final mSpring:Landroid/support/a/A;

.field private final mSpringViews:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/android/launcher3/views/SpringRelativeLayout$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/SpringRelativeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/SpringRelativeLayout;->DAMPED_SCROLL:Landroid/support/a/z;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    .line 60
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    .line 72
    new-instance p2, Landroid/support/a/A;

    sget-object p3, Lcom/android/launcher3/views/SpringRelativeLayout;->DAMPED_SCROLL:Landroid/support/a/z;

    invoke-direct {p2, p0, p3, p1}, Landroid/support/a/A;-><init>(Ljava/lang/Object;Landroid/support/a/z;F)V

    iput-object p2, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpring:Landroid/support/a/A;

    .line 73
    iget-object p2, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpring:Landroid/support/a/A;

    new-instance p3, Landroid/support/a/B;

    invoke-direct {p3, p1}, Landroid/support/a/B;-><init>(F)V

    .line 74
    const p1, 0x44548000    # 850.0f

    invoke-virtual {p3, p1}, Landroid/support/a/B;->c(F)Landroid/support/a/B;

    move-result-object p1

    .line 75
    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Landroid/support/a/B;->d(F)Landroid/support/a/B;

    move-result-object p1

    .line 73
    iput-object p1, p2, Landroid/support/a/A;->bm:Landroid/support/a/B;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/views/SpringRelativeLayout;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/views/SpringRelativeLayout;F)V
    .locals 1

    .line 37
    iget v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/views/SpringRelativeLayout;F)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpring:Landroid/support/a/A;

    iput p1, v0, Landroid/support/a/i;->mVelocity:F

    iget-object p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpring:Landroid/support/a/A;

    iget v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    iput v0, p1, Landroid/support/a/i;->mValue:F

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/a/i;->bd:Z

    iget-object p0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpring:Landroid/support/a/A;

    invoke-virtual {p0}, Landroid/support/a/A;->start()V

    return-void
.end method


# virtual methods
.method public final addSpringView(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 80
    return-void
.end method

.method public final createEdgeEffectFactory()Landroid/support/v7/widget/Z;
    .locals 2

    .line 107
    new-instance v0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;-><init>(Lcom/android/launcher3/views/SpringRelativeLayout;B)V

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 84
    iget v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 87
    iget p3, p0, Lcom/android/launcher3/views/SpringRelativeLayout;->mDampedScrollShift:F

    neg-float p3, p3

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    return p2

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method
