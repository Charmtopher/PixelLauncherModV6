.class Lcom/android/launcher3/Workspace$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$container:J

.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;JJLcom/android/launcher3/ItemInfo;)V
    .locals 0

    .line 2610
    iput-object p1, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$8;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iput-wide p3, p0, Lcom/android/launcher3/Workspace$8;->val$container:J

    iput-wide p5, p0, Lcom/android/launcher3/Workspace$8;->val$screenId:J

    iput-object p7, p0, Lcom/android/launcher3/Workspace$8;->val$item:Lcom/android/launcher3/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2616
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 2620
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$8;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget-wide v3, p0, Lcom/android/launcher3/Workspace$8;->val$container:J

    iget-wide v5, p0, Lcom/android/launcher3/Workspace$8;->val$screenId:J

    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$item:Lcom/android/launcher3/ItemInfo;

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$item:Lcom/android/launcher3/ItemInfo;

    iget v9, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V

    .line 2622
    return-void
.end method
