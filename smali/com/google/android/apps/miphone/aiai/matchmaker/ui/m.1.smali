.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final uW:Landroid/graphics/RectF;

.field private final uX:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/m;->uW:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/m;->uX:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/m;->uW:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/m;->uX:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v3, v2

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
