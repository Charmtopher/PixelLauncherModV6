.class Lcom/android/quickstep/WindowTransformSwipeHandler$3;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$3;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    .line 610
    iget-object p1, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$3;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    iget-object v0, p0, Lcom/android/quickstep/WindowTransformSwipeHandler$3;->this$0:Lcom/android/quickstep/WindowTransformSwipeHandler;

    iget-boolean v0, v0, Lcom/android/quickstep/WindowTransformSwipeHandler;->mIsGoingToHome:Z

    if-eqz v0, :cond_0

    .line 611
    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 610
    :goto_0
    invoke-static {p1, v0}, Lcom/android/quickstep/WindowTransformSwipeHandler;->access$300(Lcom/android/quickstep/WindowTransformSwipeHandler;I)V

    .line 612
    return-void
.end method
