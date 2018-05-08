.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;
.super Lcom/android/launcher3/LauncherAnimationRunner;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/os/Handler;Landroid/view/View;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iput-object p3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->val$v:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 169
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    .line 172
    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$100(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->val$v:Landroid/view/View;

    invoke-static {v2, v3, p1, v0}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$200(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/animation/AnimatorSet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/animation/Animator;

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 179
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->val$v:Landroid/view/View;

    invoke-static {v2, v4}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$300(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 180
    if-eqz v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    .line 182
    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$400(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Z)Landroid/util/Pair;

    move-result-object v2

    .line 183
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    new-instance v3, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3$1;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3$1;-><init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;Landroid/util/Pair;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->val$v:Landroid/view/View;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$500(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 194
    :cond_1
    if-eqz v1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$600(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    :cond_2
    return-object v0
.end method
