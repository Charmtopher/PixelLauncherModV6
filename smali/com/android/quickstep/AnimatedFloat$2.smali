.class Lcom/android/quickstep/AnimatedFloat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AnimatedFloat;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {v0}, Lcom/android/quickstep/AnimatedFloat;->access$000(Lcom/android/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quickstep/AnimatedFloat;->access$002(Lcom/android/quickstep/AnimatedFloat;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 58
    :cond_0
    return-void
.end method
