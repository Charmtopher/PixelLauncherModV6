.class final Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/InputConsumerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 66
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2

    .line 71
    nop

    .line 73
    const/4 p2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/system/InputConsumerController;)Lcom/android/systemui/shared/system/InputConsumerController$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/system/InputConsumerController;)Lcom/android/systemui/shared/system/InputConsumerController$TouchListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/shared/system/InputConsumerController$TouchListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    move p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0
.end method
