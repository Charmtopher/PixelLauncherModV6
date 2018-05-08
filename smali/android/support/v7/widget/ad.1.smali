.class Landroid/support/v7/widget/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ab;


# instance fields
.field final synthetic pT:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 12372
    iput-object p1, p0, Landroid/support/v7/widget/ad;->pT:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12373
    return-void
.end method


# virtual methods
.method public final i(Landroid/support/v7/widget/aA;)V
    .locals 2

    .line 12377
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 12378
    iget-object v0, p1, Landroid/support/v7/widget/aA;->mShadowedHolder:Landroid/support/v7/widget/aA;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/aA;->mShadowingHolder:Landroid/support/v7/widget/aA;

    if-nez v0, :cond_0

    .line 12379
    iput-object v1, p1, Landroid/support/v7/widget/aA;->mShadowedHolder:Landroid/support/v7/widget/aA;

    .line 12383
    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/aA;->mShadowingHolder:Landroid/support/v7/widget/aA;

    .line 12384
    invoke-static {p1}, Landroid/support/v7/widget/aA;->access$1700(Landroid/support/v7/widget/aA;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12385
    iget-object v0, p0, Landroid/support/v7/widget/ad;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12386
    iget-object v0, p0, Landroid/support/v7/widget/ad;->pT:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 12389
    :cond_1
    return-void
.end method
