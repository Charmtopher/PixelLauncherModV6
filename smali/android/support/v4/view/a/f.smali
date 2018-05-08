.class Landroid/support/v4/view/a/f;
.super Landroid/support/v4/view/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/d;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/support/v4/view/a/e;-><init>(Landroid/support/v4/view/a/d;)V

    .line 81
    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/support/v4/view/a/f;->lt:Landroid/support/v4/view/a/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/d;->A(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    .line 86
    if-nez p1, :cond_0

    .line 87
    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_0
    iget-object p1, p1, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
