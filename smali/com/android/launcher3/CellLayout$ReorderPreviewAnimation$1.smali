.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .locals 0

    .line 1990
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1993
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1994
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v0, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    if-eqz v0, :cond_0

    .line 1995
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v2, v2, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    mul-float/2addr v2, v0

    sub-float v3, v1, v0

    iget-object v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v4, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 1996
    iget-object v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v4, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v4, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 1997
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1998
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1999
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v0, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    mul-float/2addr v0, p1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget p1, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 2000
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2001
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2002
    return-void
.end method
