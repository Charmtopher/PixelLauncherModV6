.class Lcom/android/launcher3/anim/RevealOutlineAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mIsClippedToOutline:Z

.field private mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

.field final synthetic this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

.field final synthetic val$elevation:F

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;F)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$elevation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 53
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mIsClippedToOutline:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 54
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 57
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mIsClippedToOutline:Z

    .line 42
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 44
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 45
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 46
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$elevation:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 49
    :cond_0
    return-void
.end method
