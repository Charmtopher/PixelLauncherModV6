.class Lcom/android/launcher3/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/InterruptibleInOutAnimator;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 60
    return-void
.end method
