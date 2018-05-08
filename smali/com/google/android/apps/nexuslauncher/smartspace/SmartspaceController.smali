.class public Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static Fj:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;


# instance fields
.field private final Fk:Lcom/android/launcher3/Alarm;

.field private final Fl:Lcom/google/android/apps/nexuslauncher/e/f;

.field public final Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

.field private Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

.field private final mAppContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mUiHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "smartspace-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mWorker:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 79
    new-instance v0, Lcom/google/android/apps/nexuslauncher/e/f;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fl:Lcom/google/android/apps/nexuslauncher/e/f;

    .line 80
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fk:Lcom/android/launcher3/Alarm;

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fk:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/smartspace/-$$Lambda$SmartspaceController$t4irJpeDkn213Ux_ne5AqCi1Lu8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/-$$Lambda$SmartspaceController$t4irJpeDkn213Ux_ne5AqCi1Lu8;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;)V

    iput-object v1, v0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 83
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->eN()V

    .line 86
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/c;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/c;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-static {v2, v1}, Lcom/google/android/apps/nexuslauncher/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mWorker:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 98
    return-void
.end method

.method private a(Lcom/android/launcher3/Alarm;)V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->eM()V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->eN()V

    return-void
.end method

.method private a(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mWorker:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->ordinal()I

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method private createSettingsIntent()Landroid/content/Intent;
    .locals 2

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.gsa.smartspace.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 250
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 248
    return-object v0
.end method

.method private eN()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->eN()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.gsa.smartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public static synthetic lambda$t4irJpeDkn213Ux_ne5AqCi1Lu8(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;Lcom/android/launcher3/Alarm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method public static p(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fj:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fj:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    .line 62
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fj:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/smartspace/a;)V
    .locals 1

    .line 105
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fc:Z

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->Fp:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->Fq:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    .line 110
    return-void
.end method

.method public final a(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V
    .locals 2

    .line 157
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    .line 158
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->a(Lcom/google/android/apps/nexuslauncher/smartspace/d;Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public final eM()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eS()Z

    .line 144
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->Fp:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    .line 147
    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->Fq:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.gsa.smartspace.EXPIRE_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 151
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    :cond_1
    return-void
.end method

.method public final eO()Z
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 237
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->createSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final eP()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->createSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    .line 191
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;

    .line 193
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->values()[Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->filename:Ljava/lang/String;

    .line 194
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 195
    move-object v7, v2

    goto :goto_2

    .line 194
    :cond_0
    new-instance v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;

    invoke-direct {v7}, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;-><init>()V

    invoke-virtual {v0, v6}, Lcom/google/android/apps/nexuslauncher/smartspace/a;->o(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-boolean v8, v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fc:Z

    if-eqz v8, :cond_1

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const/4 v10, -0x1

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v6, v9

    :cond_1
    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    goto :goto_0

    :cond_2
    new-array v8, v4, [B

    :goto_0
    iput-object v8, v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FR:[B

    if-eqz v6, :cond_3

    new-instance v8, Lcom/google/android/apps/nexuslauncher/e/c;

    invoke-direct {v8}, Lcom/google/android/apps/nexuslauncher/e/c;-><init>()V

    invoke-virtual {v8, v6}, Lcom/google/android/apps/nexuslauncher/e/c;->b(Landroid/graphics/Bitmap;)Z

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    iput-boolean v6, v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FS:Z

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iput-object v6, v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->Fb:Lcom/google/android/apps/nexuslauncher/smartspace/a/d;

    iget-wide v8, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->EZ:J

    iput-wide v8, v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->EZ:J

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fa:Landroid/content/pm/PackageInfo;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fa:Landroid/content/pm/PackageInfo;

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FQ:I

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->Fa:Landroid/content/pm/PackageInfo;

    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v8, v7, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;->FP:J

    .line 195
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fl:Lcom/google/android/apps/nexuslauncher/e/f;

    :try_start_0
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/e/f;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_5

    :try_start_1
    invoke-static {v7}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v2

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    const-string v7, "ProtoStore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "deleting "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/e/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v6, :cond_8

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_4
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    :goto_5
    if-eqz v6, :cond_7

    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    :goto_6
    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v5, "ProtoStore"

    const-string v6, "unable to write file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v0, "ProtoStore"

    const-string v5, "file does not exist"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_8
    :goto_7
    :pswitch_1
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;-><init>()V

    .line 202
    nop

    .line 203
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fl:Lcom/google/android/apps/nexuslauncher/e/f;

    sget-object v6, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->Fp:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    iget-object v6, v6, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/google/android/apps/nexuslauncher/e/f;->a(Ljava/lang/String;Lcom/google/protobuf/nano/g;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 204
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    invoke-static {v5, v0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/a/b;Z)Lcom/google/android/apps/nexuslauncher/smartspace/b;

    move-result-object v0

    goto :goto_8

    .line 206
    :cond_9
    move-object v0, v2

    :goto_8
    new-instance v5, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;

    invoke-direct {v5}, Lcom/google/android/apps/nexuslauncher/smartspace/a/b;-><init>()V

    .line 207
    nop

    .line 208
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fl:Lcom/google/android/apps/nexuslauncher/e/f;

    sget-object v7, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->Fq:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    iget-object v7, v7, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->filename:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/google/android/apps/nexuslauncher/e/f;->a(Ljava/lang/String;Lcom/google/protobuf/nano/g;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 209
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v5, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->a(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/a/b;Z)Lcom/google/android/apps/nexuslauncher/smartspace/b;

    move-result-object v2

    .line 211
    :cond_a
    iget p1, p1, Landroid/os/Message;->what:I

    .line 212
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->mUiHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/android/apps/nexuslauncher/smartspace/b;

    aput-object v0, v6, v4

    aput-object v2, v6, v3

    invoke-static {v5, v1, p1, v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 214
    goto/16 :goto_e

    .line 218
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 220
    if-eqz v0, :cond_e

    .line 221
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    array-length v5, v0

    if-lez v5, :cond_c

    aget-object v5, v0, v4

    goto :goto_9

    :cond_c
    move-object v5, v2

    :goto_9
    iput-object v5, v1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 222
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    array-length v5, v0

    if-le v5, v3, :cond_d

    aget-object v2, v0, v3

    nop

    :cond_d
    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 224
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eS()Z

    .line 226
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 227
    if-eq p1, v3, :cond_f

    move p1, v3

    goto :goto_a

    :cond_f
    move p1, v4

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fk:Lcom/android/launcher3/Alarm;

    iput-boolean v4, v0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getExpiration()J

    move-result-wide v7

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getExpiration()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_b
    sub-long v0, v7, v1

    goto :goto_d

    :cond_10
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    :goto_c
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getExpiration()J

    move-result-wide v7

    goto :goto_b

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    goto :goto_c

    :cond_12
    move-wide v0, v5

    :goto_d
    cmp-long v2, v0, v5

    if-lez v2, :cond_13

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fk:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fn:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->Fm:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->a(Lcom/google/android/apps/nexuslauncher/smartspace/d;Z)V

    .line 228
    :cond_14
    :goto_e
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
