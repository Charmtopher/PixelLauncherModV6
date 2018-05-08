.class Lcom/android/launcher3/LauncherAppTransitionManagerImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

.field final synthetic val$appsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Landroid/view/View;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$5;->val$appsView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 304
    iget-object p1, p0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl$5;->val$appsView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 305
    return-void
.end method
