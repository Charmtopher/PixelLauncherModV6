.class public Lcom/android/launcher3/popup/SystemShortcut$Widgets;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    const v0, 0x7f020046

    const v1, 0x7f0c0056

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 46
    return-void
.end method

.method static synthetic lambda$getOnClickListener$0(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V
    .locals 4

    .line 58
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 60
    const/4 v2, 0x0

    const v3, 0x7f04003f

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsBottomSheet;

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->populateAndShow(Lcom/android/launcher3/ItemInfo;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;)V

    .line 65
    return-void
.end method


# virtual methods
.method public synthetic getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 4

    .line 42
    check-cast p1, Lcom/android/launcher3/Launcher;

    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Widgets$kv8wGFcliolz3NAO5Ak3G19e-ac;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Widgets$kv8wGFcliolz3NAO5Ak3G19e-ac;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V

    return-object v0
.end method
