.class final Landroid/support/v4/widget/b;
.super Landroid/support/v4/view/b;
.source "SourceFile"


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 0

    .line 2473
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 2475
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->D(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2479
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/a;->setParent(Landroid/view/View;)V

    .line 2481
    :cond_0
    return-void
.end method
