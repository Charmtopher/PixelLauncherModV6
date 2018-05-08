.class Landroid/support/v7/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic of:Ljava/util/ArrayList;

.field final synthetic og:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 121
    iput-object p1, p0, Landroid/support/v7/widget/h;->og:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/h;->of:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/h;->of:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/q;

    .line 125
    iget-object v3, p0, Landroid/support/v7/widget/h;->og:Landroid/support/v7/widget/g;

    iget-object v4, v1, Landroid/support/v7/widget/q;->ox:Landroid/support/v7/widget/aA;

    iget v2, v1, Landroid/support/v7/widget/q;->ot:I

    iget v5, v1, Landroid/support/v7/widget/q;->ou:I

    iget v6, v1, Landroid/support/v7/widget/q;->ov:I

    iget v1, v1, Landroid/support/v7/widget/q;->ow:I

    iget-object v7, v4, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    sub-int/2addr v6, v2

    sub-int/2addr v1, v5

    const/4 v2, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v2, v3, Landroid/support/v7/widget/g;->oc:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v9, v3, Landroid/support/v7/widget/aa;->pY:J

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Landroid/support/v7/widget/m;

    move-object v2, v10

    move v5, v6

    move-object v6, v7

    move v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/support/v7/widget/m;-><init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/aA;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/h;->of:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/h;->og:Landroid/support/v7/widget/g;

    iget-object v0, v0, Landroid/support/v7/widget/g;->nZ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/h;->of:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method
