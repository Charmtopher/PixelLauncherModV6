.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 445
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;->val$v:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$800(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$6;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$700(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 447
    return-void
.end method
