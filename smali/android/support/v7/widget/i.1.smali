.class Landroid/support/v7/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic og:Landroid/support/v7/widget/g;

.field final synthetic oh:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 145
    iput-object p1, p0, Landroid/support/v7/widget/i;->og:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/i;->oh:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/i;->oh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/p;

    .line 149
    iget-object v2, p0, Landroid/support/v7/widget/i;->og:Landroid/support/v7/widget/g;

    iget-object v3, v1, Landroid/support/v7/widget/p;->or:Landroid/support/v7/widget/aA;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    iget-object v3, v3, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    :goto_1
    iget-object v5, v1, Landroid/support/v7/widget/p;->os:Landroid/support/v7/widget/aA;

    if-eqz v5, :cond_1

    iget-object v4, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    nop

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-wide v7, v2, Landroid/support/v7/widget/aa;->pZ:J

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, v2, Landroid/support/v7/widget/g;->oe:Ljava/util/ArrayList;

    iget-object v8, v1, Landroid/support/v7/widget/p;->or:Landroid/support/v7/widget/aA;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v1, Landroid/support/v7/widget/p;->ov:I

    iget v8, v1, Landroid/support/v7/widget/p;->ot:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v7, v1, Landroid/support/v7/widget/p;->ow:I

    iget v8, v1, Landroid/support/v7/widget/p;->ou:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Landroid/support/v7/widget/n;

    invoke-direct {v8, v2, v1, v6, v3}, Landroid/support/v7/widget/n;-><init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/p;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v6, v2, Landroid/support/v7/widget/g;->oe:Ljava/util/ArrayList;

    iget-object v7, v1, Landroid/support/v7/widget/p;->os:Landroid/support/v7/widget/aA;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-wide v6, v2, Landroid/support/v7/widget/aa;->pZ:J

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/support/v7/widget/o;

    invoke-direct {v6, v2, v1, v3, v4}, Landroid/support/v7/widget/o;-><init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/p;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 150
    :cond_3
    goto/16 :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/i;->oh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/i;->og:Landroid/support/v7/widget/g;

    iget-object v0, v0, Landroid/support/v7/widget/g;->oa:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/i;->oh:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method
