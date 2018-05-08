.class Lcom/android/launcher3/Launcher$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 760
    iget-object p1, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/Launcher;->access$102(Lcom/android/launcher3/Launcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 761
    return-void
.end method
