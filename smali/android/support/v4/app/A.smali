.class Landroid/support/v4/app/A;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic fb:Landroid/support/v4/app/v;

.field final synthetic fc:Landroid/view/ViewGroup;

.field final synthetic fd:Landroid/support/v4/app/Fragment;

.field final synthetic fg:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/v;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1735
    iput-object p1, p0, Landroid/support/v4/app/A;->fb:Landroid/support/v4/app/v;

    iput-object p2, p0, Landroid/support/v4/app/A;->fc:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/A;->fg:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/A;->fd:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1738
    iget-object v0, p0, Landroid/support/v4/app/A;->fc:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/A;->fg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1739
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1740
    iget-object p1, p0, Landroid/support/v4/app/A;->fd:Landroid/support/v4/app/Fragment;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1741
    iget-object p1, p0, Landroid/support/v4/app/A;->fd:Landroid/support/v4/app/Fragment;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1743
    :cond_0
    return-void
.end method
