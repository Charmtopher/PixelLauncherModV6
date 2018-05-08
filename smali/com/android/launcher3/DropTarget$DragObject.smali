.class public Lcom/android/launcher3/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accessibleDrag:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Lcom/android/launcher3/ItemInfo;

.field public dragSource:Lcom/android/launcher3/DragSource;

.field public dragView:Lcom/android/launcher3/dragndrop/DragView;

.field public originalDragInfo:Lcom/android/launcher3/ItemInfo;

.field public stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 33
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 36
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 39
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 51
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 54
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    .line 57
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 63
    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 71
    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .locals 5

    .line 80
    const/4 v0, 0x2

    if-nez p1, :cond_0

    new-array p1, v0, [F

    .line 86
    :cond_0
    iget v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v1, v2

    .line 87
    iget v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget v3, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v2, v3

    .line 90
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v4, v4, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, p1, v3

    .line 91
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v3, v3, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v0, v2

    aput v0, p1, v1

    .line 93
    return-object p1
.end method
