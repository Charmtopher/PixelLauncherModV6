.class Lcom/android/launcher3/LauncherStateManager$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateManager;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 183
    return-void
.end method
