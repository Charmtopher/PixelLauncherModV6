.class public Lcom/android/launcher3/dragndrop/DragView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$4;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$4;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, v0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    .line 489
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$4;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    .line 490
    return-void
.end method
