.class Lcom/android/quickstep/WindowTransformSwipeHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

.field final synthetic val$activity:Lcom/android/launcher3/BaseDraggingActivity;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler;Landroid/view/View;Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    iput-object p2, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->val$activity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDraw$0(Lcom/android/quickstep/WindowTransformSwipeHandler$2;Landroid/view/View;)V
    .locals 0

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->val$rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->val$rootView:Landroid/view/View;

    new-instance v2, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$2$uKDKINCEs57gcAw5S9npG75WLKs;

    invoke-direct {v2, p0, v1}, Lcom/android/quickstep/-$$Lambda$WindowTransformSwipeHandler$2$uKDKINCEs57gcAw5S9npG75WLKs;-><init>(Lcom/android/quickstep/WindowTransformSwipeHandler$2;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 341
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->val$activity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-static {v1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->access$100(Lcom/android/quickstep/WindowTransformSwipeHandler;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$2;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-static {v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->access$200(Lcom/android/quickstep/WindowTransformSwipeHandler;)Lcom/android/quickstep/MultiStateCallback;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 346
    return-void
.end method
