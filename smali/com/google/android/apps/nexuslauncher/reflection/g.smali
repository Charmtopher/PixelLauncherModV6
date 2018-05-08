.class public Lcom/google/android/apps/nexuslauncher/reflection/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static Bj:Lcom/google/android/apps/nexuslauncher/reflection/g;

.field private static final LOCK:Ljava/lang/Object;


# instance fields
.field public Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

.field public final Bk:Landroid/os/Handler;

.field public final Bl:Landroid/os/HandlerThread;

.field private final Bm:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mContext:Landroid/content/Context;

.field final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    .line 66
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "reflection-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mWorkerThread:Landroid/os/HandlerThread;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "reflection-place-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bl:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bl:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bm:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 73
    return-void
.end method

.method public static k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;
    .locals 4

    .line 55
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bj:Lcom/google/android/apps/nexuslauncher/reflection/g;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;-><init>(Landroid/content/Context;)V

    .line 58
    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bj:Lcom/google/android/apps/nexuslauncher/reflection/g;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "pref_show_predictions"

    const/4 v3, 0x1

    .line 59
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 58
    invoke-virtual {v1, p0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->setEnabled(Z)V

    .line 61
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bj:Lcom/google/android/apps/nexuslauncher/reflection/g;

    return-object p0

    .line 61
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 23

    move-object/from16 v0, p0

    .line 113
    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    .line 151
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 145
    :pswitch_1
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v2, :cond_0

    .line 146
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BE:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iget-object v1, v1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->Cg:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v7 .. v13}, Lcom/google/android/apps/nexuslauncher/reflection/b/d;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/b/c;Landroid/content/ComponentName;JJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->ec()V

    .line 148
    :cond_0
    return v6

    .line 138
    :pswitch_2
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v1, :cond_c

    .line 139
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bm:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 140
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    const-string v2, "GEL"

    sget-object v7, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->ahZ:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    const-string v8, "predictionEvent"

    const-string v9, ""

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BJ:Lcom/google/android/apps/nexuslauncher/reflection/c;

    invoke-interface {v3}, Lcom/google/android/apps/nexuslauncher/reflection/c;->dT()J

    move-result-wide v10

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BB:Lcom/google/research/reflection/c/d;

    invoke-virtual {v3}, Lcom/google/research/reflection/c/d;->jj()Lcom/google/research/reflection/signal/b;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;Ljava/lang/String;Ljava/lang/String;JLcom/google/research/reflection/signal/b;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Z)V

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BL:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    if-eqz v7, :cond_1

    new-instance v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    invoke-direct {v7}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;-><init>()V

    const-string v8, "prediction_update"

    iput-object v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->tM:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    invoke-direct {v8}, Lcom/google/android/apps/nexuslauncher/reflection/e/f;-><init>()V

    iput-object v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->CU:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    goto :goto_0

    :cond_1
    move-object v7, v5

    move-object v8, v7

    :goto_0
    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BD:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    iput v1, v9, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->Ca:I

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {v9, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/j;->c(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Lcom/google/research/reflection/predictor/l;

    move-result-object v2

    iget-object v3, v2, Lcom/google/research/reflection/predictor/l;->ahR:[D

    iget-object v2, v2, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_1
    iget-object v13, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BE:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    invoke-virtual {v13, v2, v9}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BC:Lcom/google/android/apps/nexuslauncher/reflection/b/e;

    invoke-virtual {v9, v2, v11}, Lcom/google/android/apps/nexuslauncher/reflection/b/e;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v9, v2, v12}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BG:Lcom/google/android/apps/nexuslauncher/reflection/b/g;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/apps/nexuslauncher/reflection/b/g;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BF:Lcom/google/android/apps/nexuslauncher/reflection/b/f;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/apps/nexuslauncher/reflection/b/f;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BD:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-virtual {v5, v2}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->j(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v5, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/d/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v5, v2, v9}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    if-ltz v13, :cond_3

    invoke-interface {v2, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/predictor/m;

    iget-object v13, v9, Lcom/google/research/reflection/predictor/m;->ahV:Ljava/util/Set;

    const-string v15, "instant_app_filter"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v13, Landroid/content/ComponentName;

    const-string v15, "@instantapp"

    invoke-direct {v13, v9, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/research/reflection/predictor/m;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "instant_app_filter"

    invoke-direct {v9, v13, v14, v15}, Lcom/google/research/reflection/predictor/m;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    iget v15, v5, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->Ca:I

    if-lez v15, :cond_4

    iget v5, v5, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->Ca:I

    sub-int/2addr v5, v6

    goto :goto_3

    :cond_4
    const/4 v5, 0x4

    :goto_3
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/research/reflection/predictor/m;

    iget v14, v13, Lcom/google/research/reflection/predictor/m;->CX:F

    nop

    :cond_5
    iput v14, v9, Lcom/google/research/reflection/predictor/m;->CX:F

    invoke-interface {v2, v5, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    if-eqz v8, :cond_8

    if-eqz v3, :cond_7

    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    invoke-direct {v5}, Lcom/google/android/apps/nexuslauncher/reflection/e/e;-><init>()V

    iput-object v5, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    iget-object v5, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->De:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    iput-object v3, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->CC:[D

    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->CZ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-virtual {v0, v10}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Da:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-virtual {v0, v11}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Dd:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-virtual {v0, v12}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->Db:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0xc

    if-le v3, v5, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    :cond_9
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BH:Lcom/google/android/apps/nexuslauncher/reflection/f;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/f;->dW()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_a

    invoke-interface {v2, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v4, v2

    :goto_4
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v4, v3}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    :cond_b
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BH:Lcom/google/android/apps/nexuslauncher/reflection/f;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lcom/google/android/apps/nexuslauncher/reflection/f;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/f;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/f;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/reflection/f;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "reflection_last_predictions"

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "reflection_last_predictions_timestamp"

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "prediction_order"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "prediction_order_by_rank"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v7, :cond_c

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BL:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->a(Lcom/google/android/apps/nexuslauncher/reflection/e/c;)V

    .line 142
    :cond_c
    return v6

    .line 127
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 128
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/util/ComponentKey;

    .line 129
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    .line 130
    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v7, :cond_11

    .line 131
    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v7

    iget-object v8, v5, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 132
    invoke-virtual {v7, v8}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    .line 133
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_d

    iget-object v1, v5, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v8, v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->a(Landroid/content/ComponentName;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->ahZ:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    :goto_5
    move-object v8, v1

    move-object v7, v3

    goto :goto_6

    :cond_d
    const/4 v9, 0x6

    if-ne v1, v9, :cond_e

    iget-object v1, v5, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    const-string v9, "%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v10, "_"

    aput-object v10, v3, v4

    invoke-static {v1, v7, v8, v5}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->a(Landroid/content/ComponentName;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aic:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    goto :goto_5

    :cond_e
    const/4 v3, 0x7

    if-ne v1, v3, :cond_11

    iget-object v1, v5, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v8, v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->a(Landroid/content/ComponentName;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aib:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    goto :goto_5

    :goto_6
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    const-string v1, "GEL"

    if-nez v8, :cond_f

    const-string v0, "Reflection.SvcHandler"

    const-string v1, "Empty event string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    const-string v3, ""

    iget-object v4, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v4, v4

    if-le v4, v6, :cond_10

    iget-object v3, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :cond_10
    move-object v9, v3

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BJ:Lcom/google/android/apps/nexuslauncher/reflection/c;

    invoke-interface {v3}, Lcom/google/android/apps/nexuslauncher/reflection/c;->dT()J

    move-result-wide v10

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BB:Lcom/google/research/reflection/c/d;

    invoke-virtual {v3}, Lcom/google/research/reflection/c/d;->jj()Lcom/google/research/reflection/signal/b;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;Ljava/lang/String;Ljava/lang/String;JLcom/google/research/reflection/signal/b;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Z)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V

    .line 135
    :cond_11
    :goto_7
    return v6

    .line 119
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    invoke-virtual {v1, v6}, Lcom/google/android/apps/nexuslauncher/reflection/k;->v(Z)V

    iput-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    .line 120
    :cond_12
    return v6

    .line 115
    :pswitch_5
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/google/android/apps/nexuslauncher/reflection/a;

    invoke-direct {v15, v1}, Lcom/google/android/apps/nexuslauncher/reflection/a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/h;

    invoke-direct {v8}, Lcom/google/android/apps/nexuslauncher/reflection/h;-><init>()V

    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    const-string v9, "reflection.events"

    invoke-direct {v8, v1, v9}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-direct {v14, v8, v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/a;Landroid/content/Context;)V

    new-instance v8, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "client_actions"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v9, "pre_debug"

    invoke-interface {v7, v9, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_14

    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    const-wide/32 v9, 0xa00000

    invoke-direct {v5, v8, v9, v10}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;-><init>(Ljava/io/File;J)V

    :cond_13
    :goto_8
    move-object/from16 v17, v5

    goto :goto_9

    :cond_14
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_8

    :goto_9
    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/i;->l(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v13, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v13, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/apps/nexuslauncher/reflection/b/e;

    invoke-direct {v12, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/e;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    invoke-direct {v11, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/google/android/apps/nexuslauncher/reflection/j;

    const-string v16, "foreground_evt_buf.properties"

    const/16 v18, 0x0

    move-object v7, v10

    move-object v8, v1

    move-object v9, v14

    move-object v3, v10

    move-object v10, v14

    move-object/from16 v19, v11

    move-object v11, v5

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    move-object/from16 v21, v13

    move-object/from16 v13, v18

    invoke-direct/range {v7 .. v13}, Lcom/google/android/apps/nexuslauncher/reflection/j;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Lcom/google/research/reflection/a/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v13, Lcom/google/research/reflection/c/d;

    invoke-direct {v13}, Lcom/google/research/reflection/c/d;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/research/reflection/c/c;

    iget-object v8, v3, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bp:Lcom/google/research/reflection/c/b;

    aput-object v8, v7, v4

    iget-object v8, v3, Lcom/google/android/apps/nexuslauncher/reflection/j;->Bq:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    aput-object v8, v7, v6

    const/4 v8, 0x2

    aput-object v13, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v7, v13, v2}, Lcom/google/android/apps/nexuslauncher/reflection/m;->a(Landroid/content/Context;Ljava/util/List;Lcom/google/research/reflection/c/d;Ljava/util/List;)V

    new-instance v12, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "reflection.engine"

    invoke-direct {v12, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "reflection.engine.background"

    invoke-direct {v11, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/apps/nexuslauncher/reflection/p;

    move-object v7, v10

    move-object v8, v1

    move-object v14, v10

    move-object v10, v5

    move-object v4, v12

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/p;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/j;)V

    new-instance v7, Lcom/google/android/apps/nexuslauncher/reflection/d;

    invoke-direct {v7}, Lcom/google/android/apps/nexuslauncher/reflection/d;-><init>()V

    invoke-virtual {v7, v4, v3, v14}, Lcom/google/android/apps/nexuslauncher/reflection/d;->a(Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/p;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/nexuslauncher/reflection/j;->a(Ljava/io/File;)V

    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/f;

    invoke-direct {v4, v5}, Lcom/google/android/apps/nexuslauncher/reflection/f;-><init>(Landroid/content/SharedPreferences;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/google/android/apps/nexuslauncher/reflection/i;->Bo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    :goto_b
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    goto :goto_b

    :cond_16
    new-instance v12, Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v5, v8, v7}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;-><init>(Landroid/content/SharedPreferences;Ljava/io/File;Ljava/util/List;)V

    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/k;

    move-object v7, v5

    move-object v8, v1

    move-object v9, v3

    move-object v10, v14

    move-object v11, v13

    move-object v3, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v20

    move-object/from16 v14, v19

    move-object/from16 v18, v15

    move-object v15, v4

    move-object/from16 v16, v3

    invoke-direct/range {v7 .. v18}, Lcom/google/android/apps/nexuslauncher/reflection/k;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/research/reflection/c/d;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/b/e;Lcom/google/android/apps/nexuslauncher/reflection/b/c;Lcom/google/android/apps/nexuslauncher/reflection/f;Lcom/google/android/apps/nexuslauncher/reflection/d/f;Lcom/google/android/apps/nexuslauncher/reflection/d/e;Lcom/google/android/apps/nexuslauncher/reflection/c;)V

    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/e;

    move-object/from16 v4, v21

    invoke-direct {v3, v1, v5, v4}, Lcom/google/android/apps/nexuslauncher/reflection/e;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/k;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Lcom/google/android/apps/nexuslauncher/reflection/k;->Bz:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/e;->dU()V

    iput-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    .line 116
    :cond_17
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final setEnabled(Z)V
    .locals 2

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->Bk:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method
