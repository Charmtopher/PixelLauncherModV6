.class Landroid/support/v7/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic og:Landroid/support/v7/widget/g;

.field final synthetic oi:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 168
    iput-object p1, p0, Landroid/support/v7/widget/j;->og:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/j;->oi:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/j;->oi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aA;

    .line 172
    iget-object v2, p0, Landroid/support/v7/widget/j;->og:Landroid/support/v7/widget/g;

    iget-object v3, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v2, Landroid/support/v7/widget/g;->ob:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-wide v6, v2, Landroid/support/v7/widget/aa;->pW:J

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/support/v7/widget/l;

    invoke-direct {v6, v2, v1, v3, v4}, Landroid/support/v7/widget/l;-><init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/aA;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 173
    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/j;->oi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/j;->og:Landroid/support/v7/widget/g;

    iget-object v0, v0, Landroid/support/v7/widget/g;->nY:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/j;->oi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method
