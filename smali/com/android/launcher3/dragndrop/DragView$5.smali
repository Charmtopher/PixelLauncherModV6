.class Lcom/android/launcher3/dragndrop/DragView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$5;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 531
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$5;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView;->access$1300(Lcom/android/launcher3/dragndrop/DragView;)V

    .line 532
    return-void
.end method
