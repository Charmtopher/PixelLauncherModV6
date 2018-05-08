.class Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/Launcher$OnResumeCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private final mOriginal:Lcom/android/launcher3/DragSource;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/SecondaryDropTarget;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/SecondaryDropTarget;Lcom/android/launcher3/DragSource;Landroid/content/Context;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    .line 268
    iput-object p3, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mContext:Landroid/content/Context;

    .line 269
    return-void
.end method


# virtual methods
.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/DragSource;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 281
    return-void
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    .line 274
    iput-object p2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 275
    return-void
.end method

.method public final onLauncherResume()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 287
    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->sendFailure()V

    .line 294
    return-void
.end method

.method public final sendFailure()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 300
    return-void
.end method
