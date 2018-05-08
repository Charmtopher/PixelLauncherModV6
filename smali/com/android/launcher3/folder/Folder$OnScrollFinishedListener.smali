.class Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;
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

    .line 1396
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1398
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 1

    .line 1406
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 1407
    return-void
.end method
