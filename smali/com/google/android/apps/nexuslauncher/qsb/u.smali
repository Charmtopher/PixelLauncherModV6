.class public Lcom/google/android/apps/nexuslauncher/qsb/u;
.super Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.source "SourceFile"


# instance fields
.field private final AW:Lcom/android/launcher3/util/ComponentKey;

.field private final AX:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field private final AY:Lcom/android/launcher3/graphics/BitmapInfo;

.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/graphics/Rect;)V
    .locals 2

    .line 32
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, p4, v0, v1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AW:Lcom/android/launcher3/util/ComponentKey;

    .line 35
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AX:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 36
    invoke-static {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object p2

    .line 37
    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Z)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AY:Lcom/android/launcher3/graphics/BitmapInfo;

    .line 38
    invoke-virtual {p2}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 39
    new-instance p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {p2, p3, p1}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->mInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 40
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AY:Lcom/android/launcher3/graphics/BitmapInfo;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->mInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/ShortcutInfo;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->mInfo:Lcom/android/launcher3/ShortcutInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AY:Lcom/android/launcher3/graphics/BitmapInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AX:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/apps/nexuslauncher/qsb/u;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
    .locals 5

    .line 45
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/qsb/v;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AW:Lcom/android/launcher3/util/ComponentKey;

    iget-object v3, v3, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/u;->AW:Lcom/android/launcher3/util/ComponentKey;

    iget-object v4, v4, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/apps/nexuslauncher/qsb/v;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/u;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    new-instance v1, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 76
    return-void
.end method
