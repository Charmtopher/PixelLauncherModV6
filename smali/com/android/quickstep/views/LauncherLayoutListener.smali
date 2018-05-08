.class public Lcom/android/quickstep/views/LauncherLayoutListener;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/quickstep/ActivityControlHelper$LayoutListener;


# instance fields
.field private mHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 42
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherLayoutListener;->setVisibility(I)V

    .line 46
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/RotationHelper;->setStateHandlerRequest(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherLayoutListener;->setHandler(Lcom/android/quickstep/WindowTransformSwipeHandler;)V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/LauncherLayoutListener;->close(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/states/RotationHelper;->setStateHandlerRequest(I)V

    .line 107
    return-void
.end method

.method protected handleClose(Z)V
    .locals 0

    .line 68
    iget-boolean p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mIsOpen:Z

    if-eqz p1, :cond_0

    .line 69
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mIsOpen:Z

    .line 71
    iget-object p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 73
    iget-object p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->layoutListenerClosed()V

    .line 77
    :cond_0
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    .line 99
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logActionCommand(I)V
    .locals 0

    .line 95
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 63
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 89
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/quickstep/views/LauncherLayoutListener;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method

.method public open()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mIsOpen:Z

    .line 85
    :cond_0
    return-void
.end method

.method public setHandler(Lcom/android/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    .line 52
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/quickstep/views/LauncherLayoutListener;->mHandler:Lcom/android/quickstep/WindowTransformSwipeHandler;

    invoke-virtual {p1}, Lcom/android/quickstep/WindowTransformSwipeHandler;->onLauncherLayoutChanged()V

    .line 59
    :cond_0
    return-void
.end method
