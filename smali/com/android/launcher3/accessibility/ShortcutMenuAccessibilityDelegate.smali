.class public Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3

    .line 45
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 47
    const v2, 0x7f0c008b

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v2, 0x7f0e0012

    invoke-direct {v1, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p3, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p3, 0x7f0e000b

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void

    .line 54
    :cond_0
    instance-of p3, p1, Lcom/android/launcher3/notification/NotificationMainView;

    if-eqz p3, :cond_1

    .line 55
    check-cast p1, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p3, 0x7f0e0012

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 59
    :cond_1
    return-void
.end method

.method public final performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z
    .locals 7

    .line 63
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0e000b

    if-ne p3, v2, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez p3, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    .line 68
    const/4 p1, 0x2

    new-array v6, p1, [I

    .line 69
    invoke-virtual {p0, p2, v6}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J

    move-result-wide v4

    .line 70
    new-instance p1, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;-><init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/ShortcutInfo;J[I)V

    .line 84
    iget-object p2, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p3, v0, p1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZLjava/lang/Runnable;)V

    .line 85
    return v0

    .line 86
    :cond_1
    const p2, 0x7f0e0012

    if-ne p3, p2, :cond_3

    .line 87
    instance-of p2, p1, Lcom/android/launcher3/notification/NotificationMainView;

    if-nez p2, :cond_2

    .line 88
    return v1

    .line 90
    :cond_2
    check-cast p1, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationMainView;->onChildDismissed()V

    .line 91
    const p1, 0x7f0c008c

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->announceConfirmation(I)V

    .line 92
    return v0

    .line 94
    :cond_3
    return v1
.end method
