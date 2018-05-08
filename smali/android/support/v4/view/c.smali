.class final Landroid/support/v4/view/c;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final jS:Landroid/support/v4/view/b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/b;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/support/v4/view/c;->jS:Landroid/support/v4/view/b;

    .line 54
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 59
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/v4/view/c;->jS:Landroid/support/v4/view/b;

    .line 99
    invoke-virtual {v0, p1}, Landroid/support/v4/view/b;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/d;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p1, Landroid/support/v4/view/a/d;->ls:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/support/v4/view/c;->jS:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/support/v4/view/c;->jS:Landroid/support/v4/view/b;

    .line 71
    invoke-static {p2}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object p2

    .line 70
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 72
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 76
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 77
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 82
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/support/v4/view/c;->jS:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 87
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 88
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 92
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 93
    return-void
.end method
