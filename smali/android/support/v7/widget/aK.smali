.class Landroid/support/v7/widget/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final rF:Landroid/support/v7/widget/aM;

.field rG:Landroid/support/v7/widget/aL;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/aM;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    .line 133
    new-instance p1, Landroid/support/v7/widget/aL;

    invoke-direct {p1}, Landroid/support/v7/widget/aL;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    .line 134
    return-void
.end method


# virtual methods
.method final c(IIII)Landroid/view/View;
    .locals 8

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v0}, Landroid/support/v7/widget/aM;->bE()I

    move-result v0

    .line 218
    iget-object v1, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v1}, Landroid/support/v7/widget/aM;->bF()I

    move-result v1

    .line 219
    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 220
    :goto_0
    const/4 v3, 0x0

    .line 221
    :goto_1
    if-eq p1, p2, :cond_3

    .line 222
    iget-object v4, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/aM;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 223
    iget-object v5, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v5, v4}, Landroid/support/v7/widget/aM;->Y(Landroid/view/View;)I

    move-result v5

    .line 224
    iget-object v6, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v6, v4}, Landroid/support/v7/widget/aM;->Z(Landroid/view/View;)I

    move-result v6

    .line 225
    iget-object v7, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/support/v7/widget/aL;->setBounds(IIII)V

    .line 226
    const/4 v5, 0x0

    if-eqz p3, :cond_1

    .line 227
    iget-object v6, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    iput v5, v6, Landroid/support/v7/widget/aL;->rH:I

    .line 228
    iget-object v6, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    invoke-virtual {v6, p3}, Landroid/support/v7/widget/aL;->addFlags(I)V

    .line 229
    iget-object v6, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    invoke-virtual {v6}, Landroid/support/v7/widget/aL;->bZ()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    return-object v4

    .line 234
    :cond_1
    if-eqz p4, :cond_2

    .line 235
    iget-object v6, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    iput v5, v6, Landroid/support/v7/widget/aL;->rH:I

    .line 236
    iget-object v5, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    invoke-virtual {v5, p4}, Landroid/support/v7/widget/aL;->addFlags(I)V

    .line 237
    iget-object v5, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    invoke-virtual {v5}, Landroid/support/v7/widget/aL;->bZ()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    nop

    .line 221
    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    .line 242
    :cond_3
    return-object v3
.end method

.method final p(Landroid/view/View;I)Z
    .locals 5

    .line 252
    iget-object v0, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    iget-object v1, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v1}, Landroid/support/v7/widget/aM;->bE()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v2}, Landroid/support/v7/widget/aM;->bF()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    .line 253
    invoke-interface {v3, p1}, Landroid/support/v7/widget/aM;->Y(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/aK;->rF:Landroid/support/v7/widget/aM;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/aM;->Z(Landroid/view/View;)I

    move-result p1

    .line 252
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/support/v7/widget/aL;->setBounds(IIII)V

    .line 254
    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    iput p1, v0, Landroid/support/v7/widget/aL;->rH:I

    .line 256
    iget-object p1, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/aL;->addFlags(I)V

    .line 257
    iget-object p1, p0, Landroid/support/v7/widget/aK;->rG:Landroid/support/v7/widget/aL;

    invoke-virtual {p1}, Landroid/support/v7/widget/aL;->bZ()Z

    move-result p1

    return p1

    .line 259
    :cond_0
    return p1
.end method
