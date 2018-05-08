.class public Lcom/android/launcher3/dragndrop/PinItemDragListener;
.super Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.source "SourceFile"


# instance fields
.field private final mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 52
    return-void
.end method

.method public static getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 100
    if-eqz p0, :cond_0

    const-string v0, "appWidgetPreview"

    .line 101
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "appWidgetPreview"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0

    .line 104
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    new-instance v1, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/pm/LauncherApps$PinItemRequest;)V

    .line 75
    new-instance v2, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;-><init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;)V

    .line 82
    move-object v0, v2

    :goto_0
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    new-instance v0, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreview:Landroid/widget/RemoteViews;

    .line 89
    :cond_1
    return-object v0
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 95
    const/16 p1, 0xa

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 96
    return-void
.end method

.method protected final onDragStart(Landroid/view/DragEvent;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method
