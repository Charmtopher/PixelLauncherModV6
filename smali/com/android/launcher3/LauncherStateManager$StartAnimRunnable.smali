.class Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAnim:Landroid/animation/AnimatorSet;

.field private final mViewToFocus:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/LauncherStateManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherStateManager;Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/LauncherStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    .line 383
    iput-object p3, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->mViewToFocus:Landroid/view/View;

    .line 384
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->mViewToFocus:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->mViewToFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 395
    return-void
.end method
