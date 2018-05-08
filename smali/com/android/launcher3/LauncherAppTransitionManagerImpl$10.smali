.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

.field final synthetic val$contentAnimator:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/util/Pair;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$10;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$10;->val$contentAnimator:Landroid/util/Pair;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 672
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$10;->val$contentAnimator:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 673
    return-void
.end method
