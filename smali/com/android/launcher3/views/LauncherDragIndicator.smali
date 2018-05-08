.class public Lcom/android/launcher3/views/LauncherDragIndicator;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field private static final SETTINGS:I = 0x7f0c0058

.field private static final WALLPAPERS:I = 0x7f0c0057

.field private static final WIDGETS:I = 0x7f0c0056


# instance fields
.field public final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/LauncherDragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/LauncherDragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/LauncherDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/launcher3/views/LauncherDragIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getPortraitBottomMargin(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 1

    .line 91
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public initCustomActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/views/LauncherDragIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0c0057

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 105
    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0c0056

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 106
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0c0058

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/android/launcher3/views/LauncherDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/launcher3/views/LauncherDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(II)V

    .line 126
    iget-object p1, p0, Lcom/android/launcher3/views/LauncherDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/LauncherDragIndicator;->initCustomActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 98
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 111
    const v0, 0x7f0c0057

    if-ne p1, v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->startWallpaperPicker(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    const v0, 0x7f0c0056

    if-ne p1, v0, :cond_1

    .line 114
    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->onWidgetsClicked(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 115
    :cond_1
    const v0, 0x7f0c0058

    if-ne p1, v0, :cond_2

    .line 116
    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->startSettings(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 118
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/views/LauncherDragIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/views/LauncherDragIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingPx:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 70
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 71
    const/16 p1, 0x55

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 73
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 74
    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingPx:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 75
    const/16 p1, 0x53

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    :goto_0
    iget-object p1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 78
    const p1, 0x7f020003

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/LauncherDragIndicator;->setImageResource(I)V

    goto :goto_1

    .line 80
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 81
    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/views/LauncherDragIndicator;->getPortraitBottomMargin(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 83
    const p1, 0x7f020030

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/LauncherDragIndicator;->setImageResource(I)V

    .line 86
    :goto_1
    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/LauncherDragIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method
