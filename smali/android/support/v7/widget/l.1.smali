.class Landroid/support/v7/widget/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic og:Landroid/support/v7/widget/g;

.field final synthetic oj:Landroid/support/v7/widget/aA;

.field final synthetic ok:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/aA;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 233
    iput-object p1, p0, Landroid/support/v7/widget/l;->og:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/l;->oj:Landroid/support/v7/widget/aA;

    iput-object p3, p0, Landroid/support/v7/widget/l;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v7/widget/l;->ok:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 241
    iget-object p1, p0, Landroid/support/v7/widget/l;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 242
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 246
    iget-object p1, p0, Landroid/support/v7/widget/l;->ok:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 247
    iget-object p1, p0, Landroid/support/v7/widget/l;->og:Landroid/support/v7/widget/g;

    iget-object v0, p0, Landroid/support/v7/widget/l;->oj:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aE;->h(Landroid/support/v7/widget/aA;)V

    .line 248
    iget-object p1, p0, Landroid/support/v7/widget/l;->og:Landroid/support/v7/widget/g;

    iget-object p1, p1, Landroid/support/v7/widget/g;->ob:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/l;->oj:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object p1, p0, Landroid/support/v7/widget/l;->og:Landroid/support/v7/widget/g;

    invoke-virtual {p1}, Landroid/support/v7/widget/g;->br()V

    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 236
    return-void
.end method
