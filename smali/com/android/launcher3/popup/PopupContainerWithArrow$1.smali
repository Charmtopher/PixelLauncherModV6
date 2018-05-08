.class public Lcom/android/launcher3/popup/PopupContainerWithArrow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 7

    .line 421
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    .line 422
    if-eqz p2, :cond_0

    .line 424
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    return-void

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p1, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->getLaunchProviderRecursive(Landroid/view/View;)Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ItemInfo;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v6, p1, Lcom/android/launcher3/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-static {v3, v6}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x3

    invoke-static {v6}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v4

    iget-object v5, v4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v5, v5, v2

    iget-object v6, v4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v6, v0

    invoke-interface {v1, p2, v3, v5, v0}, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v4, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    const-string p2, "deep shortcut open"

    invoke-virtual {p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    .line 427
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean p1, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez p1, :cond_3

    .line 429
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 433
    :cond_3
    return-void
.end method

.method public final onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean p1, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz p1, :cond_0

    .line 411
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    .line 412
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    return-void

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public final shouldStartDrag(D)Z
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$000(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I

    move-result v0

    int-to-double v0, v0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
