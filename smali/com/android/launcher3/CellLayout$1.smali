.class Lcom/android/launcher3/CellLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$1;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/android/launcher3/CellLayout$1;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$1;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget-object v0, v0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 255
    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    iget v1, p0, Lcom/android/launcher3/CellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 265
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$1;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/CellLayout$1;->val$thisIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 267
    return-void
.end method
