.class Lcom/android/launcher3/Workspace$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 706
    iget-object p1, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 707
    iget-object p1, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 710
    iget-object p1, p0, Lcom/android/launcher3/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 712
    :cond_1
    return-void
.end method
