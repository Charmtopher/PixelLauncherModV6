.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$4;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 255
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$4;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->access$000(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 256
    return-void
.end method
