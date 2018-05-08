.class public abstract Lcom/android/launcher3/AbstractFloatingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# static fields
.field public static final TYPE_ACTION_POPUP:I = 0x2

.field public static final TYPE_ALL:I = 0x1ff

.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_ON_BOARD_POPUP:I = 0x20

.field public static final TYPE_OPTIONS_POPUP:I = 0x100

.field public static final TYPE_QUICKSTEP_PREVIEW:I = 0x40

.field public static final TYPE_REBIND_SAFE:I = 0x70

.field public static final TYPE_TASK_MENU:I = 0x80

.field public static final TYPE_WIDGETS_BOTTOM_SHEET:I = 0x4

.field public static final TYPE_WIDGETS_FULL_SHEET:I = 0x10

.field public static final TYPE_WIDGET_RESIZE_FRAME:I = 0x8


# instance fields
.field public mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 1

    .line 169
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 170
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;Z)V
    .locals 1

    .line 164
    const/16 v0, 0x1ff

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/BaseDraggingActivity;ZI)V

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    .line 166
    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher3/BaseDraggingActivity;I)V
    .locals 0

    .line 141
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    .line 142
    if-eqz p0, :cond_0

    .line 143
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public static closeOpenViews(Lcom/android/launcher3/BaseDraggingActivity;ZI)V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    instance-of v2, v1, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v2, :cond_0

    .line 155
    check-cast v1, Lcom/android/launcher3/AbstractFloatingView;

    .line 156
    invoke-virtual {v1, p2}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 152
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method public static getOpenView(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 129
    instance-of v2, v1, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v2, :cond_0

    .line 130
    check-cast v1, Lcom/android/launcher3/AbstractFloatingView;

    .line 131
    invoke-virtual {v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    return-object v1

    .line 127
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1

    .line 173
    const/16 v0, 0x1ff

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close(Z)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPowerSaverOn(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr p1, v0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->handleClose(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    const-string v0, "container closed"

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public abstract handleClose(Z)V
.end method

.method public abstract isOfType(I)Z
.end method

.method public final isOpen()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return v0
.end method

.method public abstract logActionCommand(I)V
.end method

.method public onBackPressed()V
    .locals 1

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->logActionCommand(I)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 115
    return-void
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 119
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 89
    const/4 p1, 0x1

    return p1
.end method

.method public onWidgetsBound()V
    .locals 0

    .line 108
    return-void
.end method
