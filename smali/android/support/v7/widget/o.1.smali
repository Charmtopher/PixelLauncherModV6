.class Landroid/support/v7/widget/o;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic og:Landroid/support/v7/widget/g;

.field final synthetic on:Landroid/support/v7/widget/p;

.field final synthetic op:Landroid/view/ViewPropertyAnimator;

.field final synthetic oq:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/p;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 380
    iput-object p1, p0, Landroid/support/v7/widget/o;->og:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/o;->on:Landroid/support/v7/widget/p;

    iput-object p3, p0, Landroid/support/v7/widget/o;->op:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/o;->oq:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 387
    iget-object p1, p0, Landroid/support/v7/widget/o;->op:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 388
    iget-object p1, p0, Landroid/support/v7/widget/o;->oq:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object p1, p0, Landroid/support/v7/widget/o;->oq:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    iget-object p1, p0, Landroid/support/v7/widget/o;->oq:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    iget-object p1, p0, Landroid/support/v7/widget/o;->og:Landroid/support/v7/widget/g;

    iget-object v0, p0, Landroid/support/v7/widget/o;->on:Landroid/support/v7/widget/p;

    iget-object v0, v0, Landroid/support/v7/widget/p;->os:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aE;->h(Landroid/support/v7/widget/aA;)V

    .line 392
    iget-object p1, p0, Landroid/support/v7/widget/o;->og:Landroid/support/v7/widget/g;

    iget-object p1, p1, Landroid/support/v7/widget/g;->oe:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/o;->on:Landroid/support/v7/widget/p;

    iget-object v0, v0, Landroid/support/v7/widget/p;->os:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object p1, p0, Landroid/support/v7/widget/o;->og:Landroid/support/v7/widget/g;

    invoke-virtual {p1}, Landroid/support/v7/widget/g;->br()V

    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 383
    return-void
.end method
