.class Landroid/support/v7/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final nO:Landroid/support/v7/widget/f;

.field final nP:Landroid/support/v7/widget/e;

.field final nQ:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/f;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    .line 50
    new-instance p1, Landroid/support/v7/widget/e;

    invoke-direct {p1}, Landroid/support/v7/widget/e;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method final M(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->P(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method final N(I)I
    .locals 4

    .line 114
    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 115
    return v0

    .line 117
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v1}, Landroid/support/v7/widget/f;->getChildCount()I

    move-result v1

    .line 118
    nop

    .line 119
    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    .line 120
    iget-object v3, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/e;->Q(I)I

    move-result v3

    .line 121
    sub-int v3, v2, v3

    sub-int v3, p1, v3

    .line 122
    if-nez v3, :cond_2

    .line 123
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/e;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_1
    return v2

    .line 128
    :cond_2
    add-int/2addr v2, v3

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    return v0
.end method

.method final N(Landroid/view/View;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->Q(Landroid/view/View;)V

    .line 72
    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final O(I)Landroid/view/View;
    .locals 1

    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final O(Landroid/view/View;)Z
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    .line 230
    if-gez p2, :cond_0

    .line 231
    iget-object p2, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {p2}, Landroid/support/v7/widget/f;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/d;->N(I)I

    move-result p2

    .line 235
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p2, p4}, Landroid/support/v7/widget/e;->d(IZ)V

    .line 236
    if-eqz p4, :cond_1

    .line 237
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->M(Landroid/view/View;)V

    .line 239
    :cond_1
    iget-object p4, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {p4, p1, p2, p3}, Landroid/support/v7/widget/f;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method final a(Landroid/view/View;IZ)V
    .locals 1

    .line 98
    if-gez p2, :cond_0

    .line 99
    iget-object p2, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {p2}, Landroid/support/v7/widget/f;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/d;->N(I)I

    move-result p2

    .line 103
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/e;->d(IZ)V

    .line 104
    if-eqz p3, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->M(Landroid/view/View;)V

    .line 107
    :cond_1
    iget-object p3, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {p3, p1, p2}, Landroid/support/v7/widget/f;->addView(Landroid/view/View;I)V

    .line 111
    return-void
.end method

.method final bo()I
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0}, Landroid/support/v7/widget/f;->getChildCount()I

    move-result v0

    return v0
.end method

.method final detachViewFromParent(I)V
    .locals 1

    .line 282
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->N(I)I

    move-result p1

    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->P(I)Z

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->detachViewFromParent(I)V

    .line 288
    return-void
.end method

.method final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 180
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->N(I)I

    move-result p1

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final getChildCount()I
    .locals 2

    .line 253
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0}, Landroid/support/v7/widget/f;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method final indexOfChild(Landroid/view/View;)I
    .locals 2

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/d;->nO:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 298
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 299
    return v0

    .line 301
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/e;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    return v0

    .line 309
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->Q(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/d;->nP:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/d;->nQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
