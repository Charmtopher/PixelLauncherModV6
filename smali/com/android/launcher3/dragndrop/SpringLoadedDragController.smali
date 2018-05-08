.class public Lcom/android/launcher3/dragndrop/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field public mAlarm:Lcom/android/launcher3/Alarm;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field public mScreen:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    .line 28
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 38
    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    .line 39
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    iput-object p0, p1, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 40
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 60
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 63
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 66
    return-void
.end method
