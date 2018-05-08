.class Lcom/android/launcher3/anim/AnimatorSetBuilder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/anim/AnimatorSetBuilder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/anim/AnimatorSetBuilder;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder$1;->this$0:Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder$1;->this$0:Lcom/android/launcher3/anim/AnimatorSetBuilder;

    iget-object p1, p1, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mOnFinishRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 63
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder$1;->this$0:Lcom/android/launcher3/anim/AnimatorSetBuilder;

    iget-object p1, p1, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mOnFinishRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 66
    return-void
.end method
