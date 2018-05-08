.class public Lcom/android/quickstep/views/QuickstepDragIndicator;
.super Lcom/android/launcher3/views/LauncherDragIndicator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/LauncherDragIndicator;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/LauncherDragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/LauncherDragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private isInOverview()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/quickstep/views/QuickstepDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected initCustomActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/quickstep/views/QuickstepDragIndicator;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1}, Lcom/android/launcher3/views/LauncherDragIndicator;->initCustomActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 65
    iget-object p1, p0, Lcom/android/quickstep/views/QuickstepDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lcom/android/quickstep/views/QuickstepDragIndicator;->isInOverview()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 65
    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;I)V

    .line 68
    iget-object p1, p0, Lcom/android/quickstep/views/QuickstepDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 69
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/launcher3/views/LauncherDragIndicator;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/quickstep/views/QuickstepDragIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
