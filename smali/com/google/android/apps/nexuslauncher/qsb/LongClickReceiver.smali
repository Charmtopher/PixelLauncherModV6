.class public Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static AF:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->AF:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->AF:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 47
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->AF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 48
    if-nez v0, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/nexuslauncher/e/b;->a(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    return-void

    .line 58
    :cond_1
    const-string v2, "deepshortcut"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "iconType"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v5, "deepshortcut_id"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v5, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    aput-object v2, v7, v4

    .line 62
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v2, v7}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 64
    new-instance v5, Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v5, p1, v1, v2, p2}, Lcom/google/android/apps/nexuslauncher/qsb/u;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 66
    :cond_2
    return-void

    .line 68
    :cond_3
    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "@instantapp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/d/b;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/d/b;

    move-result-object p1

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 70
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/nexuslauncher/d/b;->h(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/d/a;

    move-result-object p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    new-instance v5, Lcom/google/android/apps/nexuslauncher/qsb/p;

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v5, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/p;-><init>(Lcom/android/launcher3/AppInfo;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 74
    :cond_4
    return-void

    .line 76
    :cond_5
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 78
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 77
    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    new-instance v5, Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v5, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/r;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/Rect;)V

    .line 87
    :goto_0
    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->xb:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->wX:Lcom/google/android/apps/nexuslauncher/qsb/i;

    invoke-virtual {p1, v4}, Lcom/google/android/apps/nexuslauncher/qsb/i;->u(Z)V

    .line 88
    invoke-virtual {v5, v0, v4}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->init(Lcom/android/launcher3/Launcher;Z)Z

    .line 92
    new-instance p1, Landroid/content/ClipDescription;

    const-string p2, ""

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p1, p2, v0}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 93
    new-instance p2, Landroid/content/ClipData;

    new-instance v0, Landroid/content/ClipData$Item;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p1, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 95
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v0, "clip_data"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 98
    return-void

    .line 82
    :cond_6
    return-void
.end method
