.class public Lcom/google/android/apps/nexuslauncher/qsb/p;
.super Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.source "SourceFile"


# instance fields
.field private final AS:Lcom/android/launcher3/AppInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AppInfo;Landroid/graphics/Rect;)V
    .locals 2

    .line 24
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/p;->AS:Lcom/android/launcher3/AppInfo;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/p;)Lcom/android/launcher3/AppInfo;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/p;->AS:Lcom/android/launcher3/AppInfo;

    return-object p0
.end method


# virtual methods
.method protected final createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
    .locals 4

    .line 30
    new-instance v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/q;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/p;->AS:Lcom/android/launcher3/AppInfo;

    iget-object v2, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/p;->AS:Lcom/android/launcher3/AppInfo;

    iget-object v3, v3, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/nexuslauncher/qsb/q;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/p;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    .line 47
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/p;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 55
    return-void
.end method
