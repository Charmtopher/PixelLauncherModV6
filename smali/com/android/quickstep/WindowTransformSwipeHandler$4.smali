.class Lcom/android/quickstep/WindowTransformSwipeHandler$4;
.super Lcom/android/systemui/shared/system/WindowCallbacksCompat;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

.field final synthetic val$finishTransitionRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$4;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    iput-object p3, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$4;->val$finishTransitionRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onPostDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 687
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$4;->val$finishTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 688
    invoke-virtual {p0}, Lcom/android/quickstep/WindowTransformSwipeHandler$4;->detach()V

    .line 689
    return-void
.end method
