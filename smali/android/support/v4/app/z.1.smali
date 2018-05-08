.class Landroid/support/v4/app/z;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic fb:Landroid/support/v4/app/v;

.field final synthetic fc:Landroid/view/ViewGroup;

.field final synthetic fd:Landroid/support/v4/app/Fragment;

.field final synthetic ff:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/v;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1671
    iput-object p1, p0, Landroid/support/v4/app/z;->fb:Landroid/support/v4/app/v;

    iput-object p2, p0, Landroid/support/v4/app/z;->fc:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/z;->ff:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/z;->fd:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1674
    iget-object p1, p0, Landroid/support/v4/app/z;->fc:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/z;->ff:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1677
    iget-object p1, p0, Landroid/support/v4/app/z;->fd:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object p1

    .line 1678
    iget-object v0, p0, Landroid/support/v4/app/z;->fd:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1679
    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/z;->fc:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/z;->ff:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/support/v4/app/z;->fb:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/z;->fd:Landroid/support/v4/app/Fragment;

    iget-object p1, p0, Landroid/support/v4/app/z;->fd:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->X()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1682
    :cond_0
    return-void
.end method
