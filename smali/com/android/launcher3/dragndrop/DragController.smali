.class public Lcom/android/launcher3/dragndrop/DragController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragDriver$EventListener;
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field public final mCoordinatesTemp:[I

.field public mDistanceSinceScroll:I

.field public mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

.field private mDragLayerRect:Landroid/graphics/Rect;

.field public mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private mDropTargets:Ljava/util/ArrayList;

.field mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

.field private mIsInPreDrag:Z

.field private mLastDropTarget:Lcom/android/launcher3/DropTarget;

.field mLastTouch:[I

.field public mLastTouchUpTime:J

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mListeners:Ljava/util/ArrayList;

.field public mMotionDownX:I

.field public mMotionDownY:I

.field public mMoveTarget:Landroid/view/View;

.field private mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTmpPoint:[I

.field public mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 59
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    .line 89
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    .line 90
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 93
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:[I

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 120
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 121
    new-instance v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    .line 122
    return-void
.end method

.method private callOnDragStart()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragController$DragListener;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 224
    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method private dispatchDropComplete(Landroid/view/View;Z)V
    .locals 4

    .line 264
    if-nez p2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;J)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 272
    return-void
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:[I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 355
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:[I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    aput p2, p1, v3

    .line 356
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:[I

    return-object p1
.end method

.method private handleMoveEvent(II)V
    .locals 9

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 469
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v1

    .line 470
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v4, v0, v3

    iput v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 471
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v4, 0x1

    aget v0, v0, v4

    iput v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 472
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 475
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    aget v2, v2, v3

    sub-int/2addr v2, p1

    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    aget v2, v2, v4

    sub-int/2addr v2, p2

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 476
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    aput p1, v0, v3

    .line 477
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    aput p2, p1, v4

    .line 479
    iget-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-double v0, p2

    .line 480
    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    .line 483
    :cond_0
    return-void
.end method


# virtual methods
.method public final addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    return-void
.end method

.method public final addDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    return-void
.end method

.method public final animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V
    .locals 9

    .line 312
    new-instance v7, Lcom/android/launcher3/dragndrop/DragController$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/launcher3/dragndrop/DragController$1;-><init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 323
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    iget p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    iget-object v0, v1, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    iget v2, v1, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    aput p1, v0, v2

    iget-object p1, v1, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    iget v0, v1, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    aput p2, p1, v0

    iget-object v0, v1, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, v1, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    iget v4, v1, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    iget v5, v1, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 324
    return-void
.end method

.method final callOnDragEnd()V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 330
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 333
    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragController$DragListener;->onDragEnd()V

    .line 334
    goto :goto_0

    .line 335
    :cond_1
    return-void
.end method

.method public final cancelDrag()V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 256
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_1

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->dispatchDropComplete(Landroid/view/View;Z)V

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 261
    return-void
.end method

.method public final checkTouchMove(Lcom/android/launcher3/DropTarget;)V
    .locals 2

    .line 498
    if-eqz p1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq v0, p1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 511
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 512
    return-void
.end method

.method public final drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V
    .locals 10

    .line 570
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 571
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x0

    aget v3, v0, v2

    iput v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 572
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x1

    aget v0, v0, v3

    iput v0, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 575
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq p1, v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 579
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 580
    if-eqz p1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 586
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v0, :cond_3

    .line 587
    if-eqz p1, :cond_2

    .line 588
    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 590
    :cond_2
    return-void

    .line 594
    :cond_3
    nop

    .line 595
    if-eqz p1, :cond_5

    .line 596
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 597
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 598
    if-eqz p2, :cond_4

    .line 599
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 601
    :cond_4
    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {p1, p2, v0}, Lcom/android/launcher3/DropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 603
    :goto_0
    nop

    .line 606
    move p2, v3

    goto :goto_1

    :cond_5
    move p2, v2

    :goto_1
    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Landroid/view/View;

    goto :goto_2

    .line 607
    :cond_6
    move-object p1, v1

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v6

    new-array v7, v5, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v8, v4, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v9, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-static {v8, v9}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v6

    new-array v5, v5, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v7, v4, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v8, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-static {v7, v8}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newDropTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v7

    aput-object v7, v5, v3

    iput-object v5, v6, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v7, v4, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v8, v6, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v8, v8, v2

    iget-object v9, v6, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v9, v9, v3

    invoke-interface {v5, v1, v7, v8, v9}, Lcom/android/launcher3/DragSource;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    instance-of v5, p1, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    if-eqz v5, :cond_7

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    iget-object v4, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v7, v6, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v7, v2

    iget-object v7, v6, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v7, v3

    invoke-interface {v5, v1, v4, v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mActionDurationMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, v6, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->dispatchDropComplete(Landroid/view/View;Z)V

    .line 609
    return-void
.end method

.method public final endDrag()V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 289
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 290
    const/4 v0, 0x0

    .line 291
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 293
    if-nez v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    goto :goto_0

    .line 295
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v2, :cond_1

    .line 296
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 298
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v1, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 302
    :cond_2
    if-nez v0, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 308
    :cond_4
    return-void
.end method

.method public final findDropTarget(II[I)Lcom/android/launcher3/DropTarget;
    .locals 7

    .line 612
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 613
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p2, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 615
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 616
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 617
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 618
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_1

    .line 619
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/DropTarget;

    .line 620
    invoke-interface {v5}, Lcom/android/launcher3/DropTarget;->isDropEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 621
    invoke-interface {v5, v0}, Lcom/android/launcher3/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 624
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 625
    aput p1, p3, v4

    .line 626
    aput p2, p3, v3

    .line 627
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    move-object p2, v5

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 628
    return-object v5

    .line 618
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 633
    :cond_1
    aput p1, p3, v4

    .line 634
    aput p2, p3, v3

    .line 635
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 637
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object p1
.end method

.method public final forceTouchMove()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 491
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v1

    .line 492
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v2, v0, v2

    iput v2, v3, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 493
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v0, v0, v4

    iput v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 494
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 495
    return-void
.end method

.method public final isDragging()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    .line 411
    return v1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 419
    aget v3, v2, v1

    .line 420
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 422
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    goto :goto_0

    .line 425
    :pswitch_1
    iput v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    .line 426
    iput v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    .line 427
    nop

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 527
    aget v1, v2, v1

    .line 528
    const/4 v3, 0x1

    aget v2, v2, v3

    .line 530
    if-eqz v0, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    iput v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    .line 534
    iput v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 519
    :cond_2
    :goto_1
    return v1
.end method

.method public final onDriverDragCancel()V
    .locals 0

    .line 403
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 404
    return-void
.end method

.method public final onDriverDragEnd(FF)V
    .locals 9

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ButtonDropTarget;

    iput-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->isDropEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v5, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    new-instance v2, Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v4, 0x42100000    # 36.0f

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    iget v6, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mFlingToDeleteThresholdVelocity:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    if-gez v5, :cond_2

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget v8, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mFlingToDeleteThresholdVelocity:I

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_3
    :goto_1
    float-to-double v4, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/android/launcher3/util/FlingAnimation;

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/android/launcher3/util/FlingAnimation;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;)V

    .line 390
    :goto_4
    if-eqz v3, :cond_6

    .line 391
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    goto :goto_5

    .line 393
    :cond_6
    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object p1

    .line 396
    :goto_5
    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/dragndrop/DragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 399
    return-void
.end method

.method public final onDriverDragExitWindow()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 384
    :cond_0
    return-void
.end method

.method public final onDriverDragMove(FF)V
    .locals 1

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object p1

    .line 375
    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    .line 376
    return-void
.end method

.method public final removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method public final removeDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 670
    return-void
.end method

.method public final startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 147
    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mWindowToken:Landroid/os/IBinder;

    invoke-static {v6, v7}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 149
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 150
    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v6, v6, Lcom/android/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz v6, :cond_0

    .line 151
    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v6, v6, Lcom/android/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    .line 152
    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v6, v6, Lcom/android/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    .line 155
    :cond_0
    iget v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    sub-int v10, v6, p2

    .line 156
    iget v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    sub-int v11, v6, p3

    .line 158
    if-nez v5, :cond_1

    .line 159
    const/4 v14, 0x0

    goto :goto_0

    .line 158
    :cond_1
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 159
    move v14, v7

    :goto_0
    if-nez v5, :cond_2

    .line 161
    const/4 v15, 0x0

    goto :goto_1

    .line 159
    :cond_2
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 161
    move v15, v7

    :goto_1
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 163
    new-instance v7, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v7}, Lcom/android/launcher3/DropTarget$DragObject;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 165
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    const/4 v13, 0x1

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    const-wide/16 v8, 0x0

    .line 166
    invoke-interface {v7, v8, v9}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v13

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    .line 168
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 169
    iget-boolean v8, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v8, :cond_4

    .line 170
    const v8, 0x7f0b0075

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 171
    :goto_3
    move/from16 v16, v7

    goto :goto_4

    .line 170
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 171
    :goto_4
    iget-object v12, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v9, Lcom/android/launcher3/dragndrop/DragView;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v7, v9

    move-object v6, v9

    move-object/from16 v9, p1

    move-object v5, v12

    move/from16 v12, p8

    move v4, v13

    move/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIFF)V

    iput-object v6, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 173
    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    const/4 v7, 0x2

    if-eqz v5, :cond_6

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v5, :cond_5

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-eq v5, v8, :cond_5

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-ne v5, v7, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/launcher3/dragndrop/DragView$3;

    invoke-direct {v5, v6, v3}, Lcom/android/launcher3/dragndrop/DragView$3;-><init>(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v8, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 174
    :cond_6
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 175
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v5, :cond_7

    .line 177
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, v7

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 178
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v2, v7

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 179
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v4, v1, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    goto :goto_6

    .line 181
    :cond_7
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget v7, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    add-int v1, p2, v14

    sub-int/2addr v7, v1

    iput v7, v5, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 182
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    add-int v2, p3, v15

    sub-int/2addr v5, v2

    iput v5, v1, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 183
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v6}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 185
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/launcher3/dragndrop/SystemDragDriver;

    invoke-direct {v1, v0}, Lcom/android/launcher3/dragndrop/SystemDragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragController;)V

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/android/launcher3/dragndrop/InternalDragDriver;

    invoke-direct {v1, v0}, Lcom/android/launcher3/dragndrop/InternalDragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragController;)V

    :goto_5
    iput-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 188
    :goto_6
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v2, p4

    iput-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 189
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 190
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v2, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v2}, Lcom/android/launcher3/ItemInfo;-><init>()V

    iput-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    .line 191
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 193
    move v2, v4

    move-object/from16 v1, p6

    if-eqz v1, :cond_9

    .line 194
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v3, v6, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 196
    :cond_9
    move-object/from16 v1, p7

    if-eqz v1, :cond_a

    .line 197
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, v6, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 200
    :cond_a
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->performHapticFeedback(I)Z

    .line 201
    iget v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    iget v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    iget-object v5, v6, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v5, v3, v3}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iget-object v3, v6, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    iget-object v3, v6, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    iput-boolean v2, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {v6, v5}, Lcom/android/launcher3/dragndrop/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1, v4}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$6;

    invoke-direct {v1, v6}, Lcom/android/launcher3/dragndrop/DragView$6;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v6, v1}, Lcom/android/launcher3/dragndrop/DragView;->post(Ljava/lang/Runnable;)Z

    .line 202
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 204
    iget-boolean v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v1, :cond_b

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    goto :goto_7

    .line 206
    :cond_b
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_c

    .line 207
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 210
    :cond_c
    :goto_7
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    iget v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 211
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:[I

    iget v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    aput v3, v1, v2

    .line 212
    iget v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    iget v2, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    .line 213
    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mActionDurationMillis:J

    .line 214
    return-object v6
.end method
