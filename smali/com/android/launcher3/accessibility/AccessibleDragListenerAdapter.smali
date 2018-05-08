.class public Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private final mDragType:I

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    .line 43
    iput p2, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mDragType:I

    .line 44
    return-void
.end method


# virtual methods
.method public enableAccessibleDrag(Z)V
    .locals 2

    .line 58
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public final onDragEnd()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 55
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .line 48
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 49
    return-void
.end method

.method public final setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mDragType:I

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 65
    return-void
.end method
