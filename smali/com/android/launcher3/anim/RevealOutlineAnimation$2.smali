.class Lcom/android/launcher3/anim/RevealOutlineAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$2;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$2;->val$revealView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$2;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->setProgress(F)V

    .line 66
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$2;->val$revealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 67
    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$2;->val$revealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 70
    :cond_0
    return-void
.end method
