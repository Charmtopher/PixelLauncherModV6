.class Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final bg:Lcom/android/launcher3/folder/PreviewBackground;

.field final cellX:I

.field final cellY:I

.field final layout:Lcom/android/launcher3/CellLayout;

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V
    .locals 1

    .line 2470
    iput-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2468
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 2471
    iput-object p2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    .line 2472
    iput p3, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 2473
    iput p4, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 2475
    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    .line 2476
    iget-object p3, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p4, p2}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Lcom/android/launcher3/Launcher;Landroid/view/View;II)V

    .line 2479
    iget-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    .line 2480
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 3

    .line 2483
    iget-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-static {p1, v0}, Lcom/android/launcher3/Workspace;->access$102(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/folder/PreviewBackground;)Lcom/android/launcher3/folder/PreviewBackground;

    .line 2484
    iget-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {p1}, Lcom/android/launcher3/Workspace;->access$100(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    iget v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 2485
    iget-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 2486
    iget-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2487
    return-void
.end method
