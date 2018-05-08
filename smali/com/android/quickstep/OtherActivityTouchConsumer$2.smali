.class Lcom/android/quickstep/OtherActivityTouchConsumer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/RecentsAnimationListener;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

.field final synthetic val$handler:Lcom/android/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/OtherActivityTouchConsumer;Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    iput-object p2, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->val$handler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled()V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cancelled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    .line 242
    invoke-static {v1}, Lcom/android/quickstep/OtherActivityTouchConsumer;->access$200(Lcom/android/quickstep/OtherActivityTouchConsumer;)Lcom/android/quickstep/WindowTransformSwipeHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    invoke-static {v0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->access$200(Lcom/android/quickstep/OtherActivityTouchConsumer;)Lcom/android/quickstep/WindowTransformSwipeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->val$handler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->val$handler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onRecentsAnimationCanceled()V

    .line 246
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->this$0:Lcom/android/quickstep/OtherActivityTouchConsumer;

    invoke-static {v0}, Lcom/android/quickstep/OtherActivityTouchConsumer;->access$200(Lcom/android/quickstep/OtherActivityTouchConsumer;)Lcom/android/quickstep/WindowTransformSwipeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->val$handler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/quickstep/OtherActivityTouchConsumer$2;->val$handler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onRecentsAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    .line 235
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(Z)V

    .line 238
    return-void
.end method
