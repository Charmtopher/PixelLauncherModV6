.class Landroid/support/v7/widget/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic og:Landroid/support/v7/widget/g;

.field final synthetic oj:Landroid/support/v7/widget/aA;

.field final synthetic ok:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/aA;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroid/support/v7/widget/k;->og:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/k;->oj:Landroid/support/v7/widget/aA;

    iput-object p3, p0, Landroid/support/v7/widget/k;->ok:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/k;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 211
    iget-object p1, p0, Landroid/support/v7/widget/k;->ok:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 212
    iget-object p1, p0, Landroid/support/v7/widget/k;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object p1, p0, Landroid/support/v7/widget/k;->og:Landroid/support/v7/widget/g;

    iget-object v0, p0, Landroid/support/v7/widget/k;->oj:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aE;->h(Landroid/support/v7/widget/aA;)V

    .line 214
    iget-object p1, p0, Landroid/support/v7/widget/k;->og:Landroid/support/v7/widget/g;

    iget-object p1, p1, Landroid/support/v7/widget/g;->od:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/k;->oj:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Landroid/support/v7/widget/k;->og:Landroid/support/v7/widget/g;

    invoke-virtual {p1}, Landroid/support/v7/widget/g;->br()V

    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 206
    return-void
.end method
