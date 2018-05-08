.class Landroid/support/v4/widget/j;
.super Landroid/support/v4/view/a/d;
.source "SourceFile"


# instance fields
.field final synthetic mq:Landroid/support/v4/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/g;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Landroid/support/v4/widget/j;->mq:Landroid/support/v4/widget/g;

    invoke-direct {p0}, Landroid/support/v4/view/a/d;-><init>()V

    .line 1237
    return-void
.end method


# virtual methods
.method public final A(I)Landroid/support/v4/view/a/a;
    .locals 1

    .line 1255
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/j;->mq:Landroid/support/v4/widget/g;

    .line 1256
    invoke-static {p1}, Landroid/support/v4/widget/g;->access$000(Landroid/support/v4/widget/g;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/j;->mq:Landroid/support/v4/widget/g;

    invoke-static {p1}, Landroid/support/v4/widget/g;->access$100(Landroid/support/v4/widget/g;)I

    move-result p1

    .line 1257
    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 1258
    const/4 p1, 0x0

    return-object p1

    .line 1260
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j;->z(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 4

    .line 1250
    iget-object v0, p0, Landroid/support/v4/widget/j;->mq:Landroid/support/v4/widget/g;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_8

    const/16 p3, 0x40

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq p2, p3, :cond_4

    const/16 p3, 0x80

    if-eq p2, p3, :cond_3

    packed-switch p2, :pswitch_data_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/g;->onPerformActionForVirtualView$5985f823(II)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/g;->clearKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object p2, v0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    move-result p2

    if-nez p2, :cond_0

    return v3

    :cond_0
    iget p2, v0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    if-ne p2, p1, :cond_1

    return v3

    :cond_1
    iget p2, v0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    if-eq p2, v2, :cond_2

    iget p2, v0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/g;->clearKeyboardFocusForVirtualView(I)Z

    :cond_2
    iput p1, v0, Landroid/support/v4/widget/g;->mKeyboardFocusedVirtualViewId:I

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/g;->sendEventForVirtualView(II)Z

    return v1

    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/g;->clearAccessibilityFocus(I)Z

    move-result p1

    return p1

    :cond_4
    iget-object p2, v0, Landroid/support/v4/widget/g;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v0, Landroid/support/v4/widget/g;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget p2, v0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    if-eq p2, p1, :cond_7

    iget p2, v0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    if-eq p2, v2, :cond_6

    iget p2, v0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/g;->clearAccessibilityFocus(I)Z

    :cond_6
    iput p1, v0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    iget-object p2, v0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    goto :goto_0

    :cond_7
    :goto_1
    return v3

    :cond_8
    iget-object p1, v0, Landroid/support/v4/widget/g;->mHost:Landroid/view/View;

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/n;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z(I)Landroid/support/v4/view/a/a;
    .locals 1

    .line 1243
    iget-object v0, p0, Landroid/support/v4/widget/j;->mq:Landroid/support/v4/widget/g;

    .line 1244
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/g;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    .line 1245
    iget-object p1, p1, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object p1

    return-object p1
.end method
