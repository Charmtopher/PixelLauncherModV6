.class public Lcom/android/launcher3/Hotseat;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field public mContent:Lcom/android/launcher3/CellLayout;

.field mHasVerticalHotseat:Z

.field final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 60
    return-void
.end method


# virtual methods
.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 147
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 148
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 149
    const/4 p1, 0x2

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 150
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    const v0, 0x7f0e004e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    .line 84
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 142
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 141
    return p1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 158
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 159
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingPx:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 163
    :cond_0
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingPx:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 167
    :cond_1
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 169
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 171
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 176
    return-void
.end method
