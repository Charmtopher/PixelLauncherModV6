.class public Lcom/google/android/apps/nexuslauncher/allapps/ActionView;
.super Lcom/android/launcher3/BubbleTextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mPos:I

.field private xA:I

.field private final xx:Landroid/graphics/Point;

.field private final xy:Z

.field private xz:Lcom/google/android/apps/nexuslauncher/allapps/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xx:Landroid/graphics/Point;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xy:Z

    .line 48
    sget-object p1, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setLongPressTimeout(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/allapps/a;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xz:Lcom/google/android/apps/nexuslauncher/allapps/a;

    .line 55
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->mPos:I

    .line 56
    return-void
.end method

.method public final getIconBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getPaddingTop()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getPaddingLeft()I

    move-result v1

    .line 111
    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v2, v1

    .line 112
    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v3, v0

    .line 113
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xA:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 84
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 85
    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xy:Z

    if-eqz v2, :cond_0

    .line 86
    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    .line 88
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    neg-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    .line 92
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 121
    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 122
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v1, v1, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v1, :cond_2

    return v2

    .line 125
    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 126
    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/b;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/b;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionView;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 139
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 140
    new-instance v8, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v8}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 141
    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v3, v3

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v8, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/ItemInfo;

    .line 143
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 144
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 145
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 146
    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    new-instance v7, Lcom/google/android/apps/nexuslauncher/allapps/c;

    invoke-direct {v7, p0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/c;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionView;Landroid/view/View;Landroid/graphics/Point;)V

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object p1

    .line 148
    iget v0, v1, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    .line 149
    return v2
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Lcom/android/launcher3/BubbleTextView;->onMeasure(II)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xA:I

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->onMeasure(II)V

    .line 73
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BubbleTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->requestLayout()V

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xx:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 104
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 7

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->b(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xL:Lcom/google/android/apps/nexuslauncher/allapps/h;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->xz:Lcom/google/android/apps/nexuslauncher/allapps/a;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/a;->sc:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->mPos:I

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/i;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/apps/nexuslauncher/allapps/i;-><init>(B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/apps/nexuslauncher/allapps/i;->ts:J

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/google/android/apps/nexuslauncher/allapps/i;->xS:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v3, Lcom/google/android/apps/nexuslauncher/allapps/i;->xT:Ljava/lang/String;

    add-int/2addr v2, v5

    iput v2, v3, Lcom/google/android/apps/nexuslauncher/allapps/i;->xU:I

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/h;->xR:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->e(Lcom/google/android/apps/nexuslauncher/allapps/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 61
    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->performClick()Z

    move-result v0

    return v0
.end method
