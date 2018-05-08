.class Lcom/android/launcher3/CellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$2;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$2;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 274
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$2;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 277
    :cond_0
    return-void
.end method
