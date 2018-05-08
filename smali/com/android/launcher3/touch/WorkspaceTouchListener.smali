.class public Lcom/android/launcher3/touch/WorkspaceTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLongPressState:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchDownPoint:Landroid/graphics/PointF;

.field private final mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 66
    iput-object p2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 67
    return-void
.end method

.method private cancelLongPress()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 134
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 75
    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    move v0, v1

    goto :goto_0

    .line 75
    :cond_0
    nop

    .line 77
    :goto_0
    if-eqz v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 81
    iget-object v2, p1, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 83
    iget-object v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 84
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 83
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 86
    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    .line 90
    if-eqz v0, :cond_2

    .line 91
    iput v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 92
    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 93
    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, p0, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    return v1

    .line 101
    :cond_3
    iget v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_4

    .line 103
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 104
    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 107
    iput v4, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 111
    :cond_4
    iget v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    if-ne v2, v4, :cond_5

    .line 113
    nop

    .line 125
    :goto_1
    move v0, v1

    goto :goto_2

    .line 114
    :cond_5
    iget v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    if-ne v2, v1, :cond_7

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 116
    iget-object p2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2}, Lcom/android/launcher3/Workspace;->isHandlingTouch()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 117
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    .line 120
    :cond_6
    goto :goto_1

    .line 123
    :cond_7
    nop

    .line 125
    :goto_2
    if-eq p1, v1, :cond_8

    if-ne p1, v4, :cond_9

    .line 126
    :cond_8
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    .line 128
    :cond_9
    return v0
.end method

.method public run()V
    .locals 4

    .line 138
    iget v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 146
    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    .line 144
    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/views/OptionsPopupView;->showDefaultOptions(Lcom/android/launcher3/Launcher;FF)V

    .line 149
    :cond_0
    return-void
.end method
