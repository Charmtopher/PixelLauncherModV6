.class public Lcom/android/launcher3/keyboard/CustomActionsPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final mIcon:Landroid/view/View;

.field public final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    .line 49
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iget-object p1, p2, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-void

    .line 53
    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 55
    return-void
.end method


# virtual methods
.method public final getActionList()Ljava/util/List;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v2, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 66
    return-object v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result p1

    return p1
.end method
