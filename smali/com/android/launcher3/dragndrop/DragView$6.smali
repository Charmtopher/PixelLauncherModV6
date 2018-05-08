.class Lcom/android/launcher3/dragndrop/DragView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$6;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$6;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 568
    return-void
.end method
