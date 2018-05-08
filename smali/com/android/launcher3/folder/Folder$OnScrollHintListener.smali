.class Lcom/android/launcher3/folder/Folder$OnScrollHintListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field private final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1367
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 3

    .line 1374
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget p1, p1, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1375
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->scrollLeft()V

    .line 1376
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v0, p1, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    goto :goto_0

    .line 1377
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget p1, p1, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1378
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->scrollRight()V

    .line 1379
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v0, p1, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 1384
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v0, p1, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 1387
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    iput-object v0, p1, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 1388
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x384

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 1389
    return-void

    .line 1382
    :cond_1
    return-void
.end method
