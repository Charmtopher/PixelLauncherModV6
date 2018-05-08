.class public Lcom/google/android/apps/nexuslauncher/qsb/r;
.super Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.source "SourceFile"


# instance fields
.field private final AU:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/Rect;)V
    .locals 2

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->AU:Landroid/content/pm/LauncherActivityInfo;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/r;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->AU:Landroid/content/pm/LauncherActivityInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/qsb/r;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method


# virtual methods
.method protected final createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
    .locals 3

    .line 31
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/t;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/s;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->AU:Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/s;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/r;Landroid/content/pm/LauncherActivityInfo;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/t;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/r;Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    .line 48
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    new-instance v0, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 57
    return-void
.end method
