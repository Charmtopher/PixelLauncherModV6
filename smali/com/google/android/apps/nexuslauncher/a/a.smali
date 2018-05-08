.class public Lcom/google/android/apps/nexuslauncher/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static xm:Lcom/google/android/apps/nexuslauncher/a/a;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field public final mWorker:Landroid/os/Handler;

.field public final xn:Ljava/util/Map;

.field public xo:Lcom/google/android/apps/nexuslauncher/i;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mUiHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mWorker:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->xn:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private a(Lcom/android/launcher3/shortcuts/ShortcutKey;)Lcom/android/launcher3/ShortcutInfo;
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    .line 103
    iget-object v1, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    .line 104
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v2, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    .line 103
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 109
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    const/4 v2, 0x1

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 116
    :cond_0
    nop

    .line 117
    :goto_0
    return-object v0

    .line 111
    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 109
    :catch_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V

    :cond_2
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 115
    return-object v1

    .line 122
    :cond_3
    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/a/a;
    .locals 2

    const-class v0, Lcom/google/android/apps/nexuslauncher/a/a;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/a/a;->xm:Lcom/google/android/apps/nexuslauncher/a/a;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/a/a;->xm:Lcom/google/android/apps/nexuslauncher/a/a;

    .line 46
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/a/a;->xm:Lcom/google/android/apps/nexuslauncher/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 68
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 70
    invoke-direct {p0, v2}, Lcom/google/android/apps/nexuslauncher/a/a;->a(Lcom/android/launcher3/shortcuts/ShortcutKey;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    new-instance v4, Lcom/google/android/apps/nexuslauncher/a/b;

    invoke-direct {v4, p0, v2, v3}, Lcom/google/android/apps/nexuslauncher/a/b;-><init>(Lcom/google/android/apps/nexuslauncher/a/a;Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    goto :goto_1

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mUiHandler:Landroid/os/Handler;

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 76
    return v1

    .line 77
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_6

    .line 78
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->xn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/a/b;

    .line 81
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->xn:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/a/b;->xp:Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a/b;->xq:Lcom/android/launcher3/ShortcutInfo;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->xo:Lcom/google/android/apps/nexuslauncher/i;

    if-eqz p1, :cond_5

    .line 84
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->xo:Lcom/google/android/apps/nexuslauncher/i;

    invoke-interface {p1}, Lcom/google/android/apps/nexuslauncher/i;->cG()V

    .line 86
    :cond_5
    return v1

    .line 88
    :cond_6
    const/4 p1, 0x0

    return p1
.end method
