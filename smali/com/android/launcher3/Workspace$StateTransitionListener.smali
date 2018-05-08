.class Lcom/android/launcher3/Workspace$StateTransitionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final mToState:Lcom/android/launcher3/LauncherState;

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    .line 3461
    iput-object p1, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 3462
    iput-object p2, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->mToState:Lcom/android/launcher3/LauncherState;

    .line 3463
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 3477
    iget-object p1, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {p1}, Lcom/android/launcher3/Workspace;->access$500(Lcom/android/launcher3/Workspace;)V

    .line 3478
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 3472
    iget-object p1, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {p1}, Lcom/android/launcher3/Workspace;->access$400$31a5b1c7(Lcom/android/launcher3/Workspace;)V

    .line 3473
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3467
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/launcher3/Workspace;->access$302(Lcom/android/launcher3/Workspace;F)F

    .line 3468
    return-void
.end method
