.class public Lcom/google/android/apps/nexuslauncher/qsb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final AK:Landroid/net/Uri;

.field private static AL:Lcom/google/android/apps/nexuslauncher/qsb/k;


# instance fields
.field private final AM:Landroid/database/ContentObserver;

.field private final AN:Landroid/util/ArrayMap;

.field AO:Landroid/graphics/Bitmap;

.field private final AP:Landroid/content/BroadcastReceiver;

.field private final AQ:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerHandler:Landroid/os/Handler;

.field private final xH:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 198
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "content://com.google.android.googlequicksearchbox.GsaPublicContentProvider/publicvalue"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AK:Landroid/net/Uri;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/l;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/l;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AP:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/m;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/m;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AQ:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    .line 113
    const-string v0, "dynamic_qsb_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "qsb-experiments"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    .line 120
    const-string v0, "pixel_2017_qsb_background_color"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$mvWufLhFbPNO4vRpkLpL4hjf2Ac;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$mvWufLhFbPNO4vRpkLpL4hjf2Ac;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 121
    const-string v0, "pixel_2017_qsb_hint_text"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$tT-L66lw03IFX9kSIqdALWvilt0;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$tT-L66lw03IFX9kSIqdALWvilt0;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 122
    const-string v0, "pixel_2018_qsb_hint_is_for_assistant"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$XLu335UmXKFCsOfYC_Gn-ABmEck;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$XLu335UmXKFCsOfYC_Gn-ABmEck;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 123
    const-string v0, "pixel_2017_qsb_use_colored_g"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$VbiabZwY_jVjIevVaMNcSHTQh0g;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$VbiabZwY_jVjIevVaMNcSHTQh0g;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 124
    const-string v0, "pixel_2018_qsb_use_two_bubbles"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$yN3FywF18FiTQwXyChSHpe0xQgY;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$yN3FywF18FiTQwXyChSHpe0xQgY;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 125
    const-string v0, "pixel_2018_qsb_mic_stroke_width_dp"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$FhZIQ67En18oInfzwDPmZ-SgXxE;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$FhZIQ67En18oInfzwDPmZ-SgXxE;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 126
    const-string v0, "pixel_2018_qsb_mic_opacity"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$e9SolUevi8dElMRl-2rpqfWTeH8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$e9SolUevi8dElMRl-2rpqfWTeH8;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 127
    const-string v0, "qsb.superg.animation"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$XwAI_xj8-c_DfA_xe1g99bynLRA;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$XwAI_xj8-c_DfA_xe1g99bynLRA;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 129
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/n;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/n;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AM:Landroid/database/ContentObserver;

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AP:Landroid/content/BroadcastReceiver;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AQ:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 143
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    return-void
.end method

.method private a(Landroid/database/Cursor;I)I
    .locals 3

    .line 339
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->k(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    return p2

    .line 344
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string v0, "QsbUiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return p2
.end method

.method private a(La/a/a/a/a/a/c;)Landroid/graphics/Bitmap;
    .locals 9

    .line 387
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 388
    return-object v0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 392
    :try_start_0
    iget-object p1, p1, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 394
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v2, :cond_1

    .line 395
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 399
    :cond_1
    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 400
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 401
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 402
    invoke-virtual {v4, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 406
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 407
    array-length v3, v2

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    nop

    .line 411
    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 410
    :cond_3
    return-object v1

    .line 411
    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 411
    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    if-eqz p1, :cond_4

    :try_start_4
    invoke-static {v2, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 412
    const-string v1, "QsbUiManager"

    const-string v2, "Could not retrieve Doodle spritesheet"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/k;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dL()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/net/Uri;)V
    .locals 7

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, p0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    const-string p0, "QsbUiManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error fetching update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/k;->AK:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method private a(Landroid/database/Cursor;)Z
    .locals 2

    .line 219
    const v0, -0x66050506

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Landroid/database/Cursor;I)I

    move-result p1

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->getBackgroundColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2017_qsb_background_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    const/4 p1, 0x1

    return p1

    .line 224
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/k;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/qsb/k;)Landroid/content/SharedPreferences;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private b(Landroid/database/Cursor;)Z
    .locals 0

    .line 235
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->k(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->l(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/qsb/k;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Landroid/database/Cursor;)Z
    .locals 2

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->i(Landroid/database/Cursor;)Z

    move-result p1

    .line 240
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dR()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2018_qsb_hint_is_for_assistant"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    const/4 p1, 0x1

    return p1

    .line 244
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(Landroid/database/Cursor;)Z
    .locals 2

    .line 287
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->i(Landroid/database/Cursor;)Z

    move-result p1

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dQ()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2017_qsb_use_colored_g"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    const/4 p1, 0x1

    return p1

    .line 292
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dL()V
    .locals 13

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AM:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    const/4 v1, 0x0

    const/16 v2, 0xc9

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    if-ltz v4, :cond_0

    .line 171
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    .line 172
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AM:Landroid/database/ContentObserver;

    .line 171
    invoke-virtual {v0, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 181
    :cond_0
    goto :goto_1

    .line 174
    :catch_0
    move-exception v4

    .line 175
    const-string v4, "QsbUiManager"

    const-string v5, "Unable to register for configuration changes, UI changes will be reset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    return-void

    .line 183
    :cond_1
    :goto_1
    :try_start_1
    sget-object v4, Lcom/google/android/apps/nexuslauncher/qsb/k;->AK:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 184
    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 185
    :try_start_2
    const-string v1, "QsbUiManager"

    const-string v2, "Unable to get content provider client, skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 186
    :cond_2
    return-void

    .line 198
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 183
    :catch_1
    move-exception v1

    move-object v4, v1

    goto :goto_3

    .line 188
    :cond_3
    nop

    .line 189
    :try_start_4
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v3

    move v11, v1

    move v1, v5

    :goto_2
    if-ltz v1, :cond_5

    .line 190
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/util/function/Predicate;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AN:Landroid/util/ArrayMap;

    .line 191
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 190
    invoke-interface {v12, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 192
    nop

    .line 189
    move v11, v3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 195
    :cond_5
    if-eqz v11, :cond_6

    .line 196
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    :cond_6
    if-eqz v0, :cond_7

    :try_start_5
    invoke-static {v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    .line 200
    :cond_7
    return-void

    .line 183
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 198
    :goto_4
    if-eqz v0, :cond_8

    :try_start_7
    invoke-static {v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    .line 199
    const-string v1, "QsbUiManager"

    const-string v2, "Error getting client "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    return-void
.end method

.method private e(Landroid/database/Cursor;)Z
    .locals 2

    .line 296
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->i(Landroid/database/Cursor;)Z

    move-result p1

    .line 297
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dP()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2018_qsb_use_two_bubbles"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    const/4 p1, 0x1

    return p1

    .line 301
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f(Landroid/database/Cursor;)Z
    .locals 2

    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->h(Landroid/database/Cursor;)F

    move-result p1

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dN()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2018_qsb_mic_stroke_width_dp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    const/4 p1, 0x1

    return p1

    .line 310
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g(Landroid/database/Cursor;)Z
    .locals 3

    .line 314
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Landroid/database/Cursor;I)I

    move-result p1

    .line 315
    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 316
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pixel_2018_qsb_mic_opacity"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dM()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pixel_2018_qsb_mic_opacity"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    return v1

    .line 322
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private h(Landroid/database/Cursor;)F
    .locals 4

    .line 326
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->k(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 328
    return v1

    .line 331
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v0, "QsbUiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid float value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v1
.end method

.method private i(Landroid/database/Cursor;)Z
    .locals 4

    .line 352
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->k(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    return v1

    .line 357
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v0, "QsbUiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid boolean value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v1
.end method

.method public static j(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/k;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AL:Lcom/google/android/apps/nexuslauncher/qsb/k;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AL:Lcom/google/android/apps/nexuslauncher/qsb/k;

    .line 83
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AL:Lcom/google/android/apps/nexuslauncher/qsb/k;

    return-object p0
.end method

.method private j(Landroid/database/Cursor;)Z
    .locals 11

    .line 464
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->k(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 465
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "qsb.superg.animation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->m(Ljava/lang/String;)La/a/a/a/a/a/c;

    move-result-object v1

    .line 468
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-object v5, v1, La/a/a/a/a/a/c;->aiD:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v1, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    if-eqz v5, :cond_5

    iget-object v1, v1, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    iget-object v1, v1, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    if-nez v1, :cond_0

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_0
    array-length v5, v1

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v1, v6

    iget-object v8, v7, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, v7, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    array-length v8, v7

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_3
    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    if-nez v1, :cond_6

    .line 469
    const-string p1, "QsbUiManager"

    const-string v1, "Doodle is not valid."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    nop

    .line 473
    move-object p1, v2

    :cond_6
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 474
    xor-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 475
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "qsb.superg.animation"

    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 477
    :cond_7
    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AO:Landroid/graphics/Bitmap;

    if-nez p1, :cond_a

    .line 478
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dS()La/a/a/a/a/a/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(La/a/a/a/a/a/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AO:Landroid/graphics/Bitmap;

    .line 479
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AO:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lez p1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v4

    :goto_5
    if-nez v3, :cond_a

    .line 480
    const-string p1, "QsbUiManager"

    const-string v1, "Doodle bitmap is not valid."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->AO:Landroid/graphics/Bitmap;

    .line 484
    :cond_a
    return v0
.end method

.method private static k(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 488
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 489
    return-object v0

    .line 493
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    .line 494
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 496
    :cond_1
    :try_start_1
    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    if-gez v1, :cond_2

    .line 498
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 500
    :cond_2
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 501
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 501
    return-object v0

    .line 503
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private l(Ljava/lang/String;)Z
    .locals 6

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dO()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pixel_2017_qsb_hint_text"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pixel_2017_qsb_hint_text_value"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 256
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    const-string v4, "string"

    const-string v5, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 258
    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 260
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pixel_2017_qsb_hint_text"

    .line 261
    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pixel_2017_qsb_hint_text_value"

    .line 262
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 263
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v3

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v0, "QsbUiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading hint text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v3
.end method

.method public static synthetic lambda$FhZIQ67En18oInfzwDPmZ-SgXxE(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->f(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VbiabZwY_jVjIevVaMNcSHTQh0g(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->d(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XLu335UmXKFCsOfYC_Gn-ABmEck(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->c(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XwAI_xj8-c_DfA_xe1g99bynLRA(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->j(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$e9SolUevi8dElMRl-2rpqfWTeH8(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->g(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$mvWufLhFbPNO4vRpkLpL4hjf2Ac(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$tT-L66lw03IFX9kSIqdALWvilt0(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->b(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$yN3FywF18FiTQwXyChSHpe0xQgY(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->e(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method private m(Ljava/lang/String;)La/a/a/a/a/a/c;
    .locals 4

    .line 422
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 423
    return-object v0

    .line 426
    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 427
    new-instance v2, La/a/a/a/a/a/c;

    invoke-direct {v2}, La/a/a/a/a/a/c;-><init>()V

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v1

    check-cast v1, La/a/a/a/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 428
    :catch_0
    move-exception v1

    .line 429
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "qsb.superg.animation"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 430
    const-string v1, "QsbUiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Doodle proto: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/qsb/o;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    return-void
.end method

.method public final b(Lcom/google/android/apps/nexuslauncher/qsb/o;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method public final dM()I
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2018_qsb_mic_opacity"

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final dN()F
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2018_qsb_mic_stroke_width_dp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final dO()Ljava/lang/String;
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2017_qsb_hint_text_value"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dP()Z
    .locals 3

    .line 368
    # iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;
    #
    # const-string v1, "pixel_2018_qsb_use_two_bubbles"
    #
    # const/4 v2, 0x0
    #
    # invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    #
    # move-result v0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->twoBubblesQsb(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final dQ()Z
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2017_qsb_use_colored_g"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dR()Z
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2018_qsb_hint_is_for_assistant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dS()La/a/a/a/a/a/c;
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "qsb.superg.animation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->m(Ljava/lang/String;)La/a/a/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundColor()I
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->xH:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2017_qsb_background_color"

    const v2, -0x66050506

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 152
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    .line 163
    const/4 p1, 0x0

    return p1

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/o;

    .line 159
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/qsb/o;->dx()V

    .line 160
    goto :goto_0

    .line 161
    :cond_1
    return v1

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->dL()V

    .line 155
    return v1
.end method
