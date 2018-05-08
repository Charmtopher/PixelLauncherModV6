.class public Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;
.super Lcom/android/launcher3/logging/UserEventDispatcher;
.source "SourceFile"


# static fields
.field private static zH:Lcom/google/android/apps/nexuslauncher/logging/b;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

.field private final zF:Lcom/google/android/apps/nexuslauncher/logging/a;

.field private final zG:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zH:Lcom/google/android/apps/nexuslauncher/logging/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/launcher3/logging/UserEventDispatcher;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    .line 56
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/a;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zF:Lcom/google/android/apps/nexuslauncher/logging/a;

    .line 58
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    .line 59
    return-void
.end method

.method private static declared-synchronized h(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/logging/b;
    .locals 2

    const-class v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    monitor-enter v0

    .line 176
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zH:Lcom/google/android/apps/nexuslauncher/logging/b;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lcom/google/android/apps/nexuslauncher/logging/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/logging/b;-><init>(Landroid/content/Context;)V

    .line 178
    sput-object v1, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zH:Lcom/google/android/apps/nexuslauncher/logging/b;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/logging/b;->register()V

    .line 179
    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zH:Lcom/google/android/apps/nexuslauncher/logging/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/e/e;->B(Z)V

    .line 181
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zH:Lcom/google/android/apps/nexuslauncher/logging/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 175
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final C(II)V
    .locals 5

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 68
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p1

    aput-object p1, v2, v3

    .line 67
    invoke-static {v1, v2}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    .line 69
    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v0

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 70
    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v1, v0

    iput p2, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 71
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)V
    .locals 6

    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    .line 122
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 125
    invoke-static {p1, v4}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v3, v4

    .line 126
    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 124
    invoke-static {v1, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v0

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->fillIntentInfo(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Landroid/content/Intent;)V

    .line 132
    :cond_1
    iget-object p1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v4

    iput p3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 133
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 134
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public final ax(I)V
    .locals 5

    .line 138
    nop

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    new-instance v4, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-direct {v4}, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;-><init>()V

    .line 140
    invoke-static {v2, v4}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(ILcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v3, v0

    .line 138
    invoke-static {v1, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    .line 141
    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    iput p1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    .line 142
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method public final dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 147
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 148
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->h(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/logging/b;

    move-result-object v3

    .line 149
    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v5, v3, Lcom/google/android/apps/nexuslauncher/logging/b;->zI:Z

    if-eqz v5, :cond_0

    .line 150
    iget-object v5, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v5, v5, v4

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v5, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 152
    :cond_0
    invoke-super/range {p0 .. p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 153
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zF:Lcom/google/android/apps/nexuslauncher/logging/a;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/logging/a;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-static {v3, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 155
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 156
    instance-of v6, v2, Lcom/android/launcher3/shortcuts/ShortcutKey;

    if-nez v6, :cond_2

    .line 157
    iget-object v6, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@instantapp"

    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    iget-object v6, v6, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v6, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->wU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    iget-object v6, v6, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v6, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 166
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iget v2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    if-lez v2, :cond_6

    iget-object v1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 170
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->b(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xL:Lcom/google/android/apps/nexuslauncher/allapps/h;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/h;->xR:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/allapps/d;->c(Lcom/google/android/apps/nexuslauncher/allapps/d;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/h;->xR:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/allapps/d;->d(Lcom/google/android/apps/nexuslauncher/allapps/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/h;->xR:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-static {v8}, Lcom/google/android/apps/nexuslauncher/allapps/d;->d(Lcom/google/android/apps/nexuslauncher/allapps/d;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/nexuslauncher/allapps/a;

    iget-object v8, v8, Lcom/google/android/apps/nexuslauncher/allapps/a;->sc:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, ""

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v11, v10, v4

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide v12, v11

    move v11, v5

    :goto_2
    array-length v14, v10

    if-ge v11, v14, :cond_3

    aget-object v14, v10, v11

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    sub-long v10, v6, v12

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :cond_6
    return-void
.end method

.method public final logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 6

    .line 76
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 77
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    const-string v2, "shortcut_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 88
    :cond_2
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 90
    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@instantapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, v1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v2, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 98
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V

    .line 99
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public final logTaskLaunchOrDismiss(IILcom/android/launcher3/util/ComponentKey;)V
    .locals 1

    .line 104
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 105
    :goto_1
    if-nez v0, :cond_3

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IILcom/android/launcher3/util/ComponentKey;)V

    .line 107
    return-void

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IILcom/android/launcher3/util/ComponentKey;)V

    .line 111
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->zG:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 112
    return-void
.end method
