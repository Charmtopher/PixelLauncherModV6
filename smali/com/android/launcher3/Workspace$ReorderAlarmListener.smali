.class Lcom/android/launcher3/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final child:Landroid/view/View;

.field final dragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final dragViewCenter:[F

.field final minSpanX:I

.field final minSpanY:I

.field final spanX:I

.field final spanY:I

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V
    .locals 0

    .line 2497
    iput-object p1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2498
    iput-object p2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    .line 2499
    iput p3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    .line 2500
    iput p4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    .line 2501
    iput p5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    .line 2502
    iput p6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    .line 2503
    iput-object p8, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    .line 2504
    iput-object p7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 2505
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 14

    .line 2508
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2509
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v11, 0x0

    aget v2, v2, v11

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v12, 0x1

    aget v3, v3, v12

    float-to-int v3, v3

    iget v4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget-object v6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v6, v6, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v7, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2512
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    iput v1, v0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2513
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v12

    iput v1, v0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2515
    iget-object v13, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v11

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v12

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iget v6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v8, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v10, 0x1

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v13, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2519
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v11

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v12

    if-gez v0, :cond_0

    goto :goto_0

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    goto :goto_1

    .line 2520
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2525
    :goto_1
    aget v0, p1, v11

    iget v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v0, v1, :cond_3

    aget v0, p1, v12

    iget v1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 2526
    :cond_2
    move v9, v11

    goto :goto_3

    .line 2525
    :cond_3
    :goto_2
    nop

    .line 2526
    move v9, v12

    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->access$200(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/graphics/DragPreviewProvider;

    move-result-object v4

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v0, v11

    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v0, v12

    aget v7, p1, v11

    aget v8, p1, v12

    iget-object v10, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;IIIIZLcom/android/launcher3/DropTarget$DragObject;)V

    .line 2528
    return-void
.end method
