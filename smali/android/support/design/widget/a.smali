.class Landroid/support/design/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/l;


# instance fields
.field final synthetic bT:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .line 3216
    iput-object p1, p0, Landroid/support/design/widget/a;->bT:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/z;)Landroid/support/v4/view/z;
    .locals 6

    .line 3220
    iget-object v0, p0, Landroid/support/design/widget/a;->bT:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x13

    if-lt v2, v5, :cond_0

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_0
    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_7

    iput-object p1, v0, Landroid/support/design/widget/CoordinatorLayout;->bN:Landroid/support/v4/view/z;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout;->bO:Z

    iget-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout;->bO:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/support/v4/view/z;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    :goto_4
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/e;

    iget-object v2, v2, Landroid/support/design/widget/e;->bU:Landroid/support/design/widget/c;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/view/z;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    :cond_7
    return-object p1
.end method
