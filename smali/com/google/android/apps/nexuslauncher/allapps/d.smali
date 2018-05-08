.class public Lcom/google/android/apps/nexuslauncher/allapps/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final xC:Landroid/net/Uri;

.field private static final xD:Landroid/net/Uri;

.field private static final xE:Landroid/net/Uri;

.field private static final xF:[Ljava/lang/String;

.field private static xG:Lcom/google/android/apps/nexuslauncher/allapps/d;


# instance fields
.field final gL:Ljava/util/ArrayList;

.field private final mAppContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorker:Landroid/os/Handler;

.field private final xH:Landroid/content/SharedPreferences;

.field private final xI:Landroid/content/SharedPreferences;

.field private final xJ:Landroid/database/ContentObserver;

.field private final xK:Ljava/util/Comparator;

.field public final xL:Lcom/google/android/apps/nexuslauncher/allapps/h;

.field xM:Lcom/google/android/apps/nexuslauncher/allapps/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.miphone.aiai.allapps.actionsuggestprovider"

    .line 69
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xC:Landroid/net/Uri;

    .line 72
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 73
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.miphone.aiai.allapps.actionloggingprovider"

    .line 74
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xD:Landroid/net/Uri;

    .line 77
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.miphone.aiai.allapps.actionsettingprovider"

    .line 79
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xE:Landroid/net/Uri;

    .line 82
    const-string v0, "action_id"

    const-string v1, "shortcut_id"

    const-string v2, "expiration_time_millis"

    const-string v3, "publisher_package"

    const-string v4, "badge_package"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xF:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mUiHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->gL:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/e;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/e;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xJ:Landroid/database/ContentObserver;

    .line 122
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$d$duEh0paxQHyQSV_x01aBnbrlM40;->INSTANCE:Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$d$duEh0paxQHyQSV_x01aBnbrlM40;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xK:Ljava/util/Comparator;

    .line 125
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/h;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/h;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/d;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xL:Lcom/google/android/apps/nexuslauncher/allapps/h;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mWorker:Landroid/os/Handler;

    .line 131
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    .line 132
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xH:Landroid/content/SharedPreferences;

    .line 133
    const-string v0, "pref_file_impressions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xI:Landroid/content/SharedPreferences;

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xH:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cJ()V

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cK()V

    .line 137
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/f;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/f;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/d;)V

    const-string v1, "com.google.android.apps.miphone.aiai"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method private static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/a;Lcom/google/android/apps/nexuslauncher/allapps/a;)I
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->xv:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/a;->xv:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/google/android/apps/nexuslauncher/allapps/i;)Landroid/content/ContentValues;
    .locals 4

    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 289
    const-string v1, "timestamp"

    iget-wide v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/i;->ts:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    const-string v1, "event_type"

    iget-boolean v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/i;->xS:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v1, "clicked_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v1, "clicked_id"

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/i;->xT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "clicked_position"

    iget v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/i;->xU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v1, "top_suggestions"

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/i;->xV:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/google/android/apps/nexuslauncher/allapps/g;
    .locals 3

    .line 383
    if-eqz p2, :cond_1

    .line 384
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/g;

    .line 385
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/g;->shortcutId:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    return-object v0

    .line 388
    :cond_0
    goto :goto_0

    .line 390
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/d;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cL()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/d;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xG:Lcom/google/android/apps/nexuslauncher/allapps/d;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xG:Lcom/google/android/apps/nexuslauncher/allapps/d;

    .line 104
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xG:Lcom/google/android/apps/nexuslauncher/allapps/d;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/allapps/d;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cK()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/nexuslauncher/allapps/d;)Landroid/content/SharedPreferences;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xI:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 3

    .line 355
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/a;

    .line 358
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/a;->xv:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/a;->xw:Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 361
    :cond_1
    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xK:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    return-void
.end method

.method private cI()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xH:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_suggested_actions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private cJ()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mWorker:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cI()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    return-void
.end method

.method private cK()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xJ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/d;->xC:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xJ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cL()V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mWorker:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "ActionsController"

    const-string v2, "content provider not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-void
.end method

.method private cL()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mWorker:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method private cM()Ljava/util/ArrayList;
    .locals 21

    .line 227
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cI()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    return-object v1

    .line 232
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->xC:Landroid/net/Uri;

    sget-object v7, Lcom/google/android/apps/nexuslauncher/allapps/d;->xF:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    if-nez v4, :cond_2

    .line 236
    :try_start_2
    const-string v0, "ActionsController"

    const-string v4, "no cursor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    nop

    .line 280
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 237
    :cond_1
    return-object v1

    .line 239
    :cond_2
    :try_start_4
    new-instance v5, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v5}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 240
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 241
    :try_start_5
    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/g;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/google/android/apps/nexuslauncher/allapps/g;-><init>(B)V

    .line 242
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->sc:Ljava/lang/String;

    .line 243
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->shortcutId:Ljava/lang/String;

    .line 244
    const/4 v7, 0x3

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->xO:Ljava/lang/String;

    .line 245
    const/4 v7, 0x4

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->xP:Ljava/lang/String;

    .line 246
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->xQ:J

    .line 247
    iget-wide v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->xQ:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    iget-wide v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->xQ:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 248
    const-string v7, "ActionsController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "shortcut expired id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->shortcutId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->xQ:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    goto :goto_0

    .line 251
    :cond_3
    iget-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/g;->xO:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 252
    goto :goto_0

    .line 253
    :cond_4
    :try_start_6
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v4

    .line 254
    invoke-virtual {v5}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 256
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 257
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v11, :cond_5

    :try_start_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/nexuslauncher/allapps/g;

    .line 259
    iget-object v11, v11, Lcom/google/android/apps/nexuslauncher/allapps/g;->shortcutId:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 260
    goto :goto_2

    .line 261
    :cond_5
    nop

    .line 262
    :try_start_8
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 261
    invoke-virtual {v4, v8, v9, v10}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    .line 263
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 264
    invoke-direct {v0, v6, v9}, Lcom/google/android/apps/nexuslauncher/allapps/d;->a(Ljava/util/List;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/google/android/apps/nexuslauncher/allapps/g;

    move-result-object v10

    .line 265
    if-eqz v10, :cond_6

    .line 266
    new-instance v15, Lcom/android/launcher3/ShortcutInfo;

    iget-object v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-direct {v15, v9, v11}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 267
    iget v11, v15, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v15, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 268
    invoke-virtual {v2, v9, v7, v3}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v11

    invoke-virtual {v11, v15}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 269
    new-instance v13, Lcom/google/android/apps/nexuslauncher/allapps/a;

    iget-object v11, v10, Lcom/google/android/apps/nexuslauncher/allapps/g;->sc:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/apps/nexuslauncher/allapps/g;->shortcutId:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-wide v3, v10, Lcom/google/android/apps/nexuslauncher/allapps/g;->xQ:J

    iget-object v14, v10, Lcom/google/android/apps/nexuslauncher/allapps/g;->xO:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/apps/nexuslauncher/allapps/g;->xP:Ljava/lang/String;

    move-object/from16 v16, v10

    move-object v10, v13

    move-object v7, v13

    move-object/from16 v17, v14

    move-wide v13, v3

    move-object v3, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Lcom/google/android/apps/nexuslauncher/allapps/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    goto :goto_4

    .line 272
    :cond_6
    move-object/from16 v19, v4

    const-string v3, "ActionsController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "shortcut details not found: shortcut="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    nop

    .line 263
    :goto_4
    move-object/from16 v4, v19

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_3

    .line 275
    :cond_7
    move-object/from16 v19, v4

    .line 254
    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 279
    :cond_8
    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/d;->c(Ljava/util/ArrayList;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 280
    if-eqz v2, :cond_9

    :try_start_9
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    .line 282
    :cond_9
    goto :goto_7

    .line 280
    :catchall_0
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    goto :goto_5

    .line 232
    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 280
    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    :goto_5
    if-eqz v2, :cond_b

    if-eqz v4, :cond_a

    :try_start_b
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V

    :cond_b
    :goto_6
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    .line 281
    const-string v2, "ActionsController"

    const-string v3, "error loading actions"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_7
    return-object v1
.end method

.method private cN()V
    .locals 11

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xI:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/i;-><init>(B)V

    .line 313
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 314
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 316
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 317
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 318
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/apps/nexuslauncher/allapps/i;->ts:J

    .line 319
    iput-object v5, v1, Lcom/google/android/apps/nexuslauncher/allapps/i;->xV:Ljava/lang/String;

    .line 320
    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/d;->a(Lcom/google/android/apps/nexuslauncher/allapps/i;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const/4 v5, 0x1

    :goto_1
    array-length v7, v6

    if-ge v5, v7, :cond_0

    .line 322
    iget-wide v7, v1, Lcom/google/android/apps/nexuslauncher/allapps/i;->ts:J

    aget-object v9, v6, v5

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/apps/nexuslauncher/allapps/i;->ts:J

    .line 323
    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/d;->a(Lcom/google/android/apps/nexuslauncher/allapps/i;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 325
    :cond_0
    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/d;->xD:Landroid/net/Uri;

    .line 327
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xI:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 328
    :catch_0
    move-exception v0

    .line 329
    :try_start_1
    const-string v1, "ActionsController"

    const-string v2, "write impression logs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 331
    :goto_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xI:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v0
.end method

.method public static synthetic d(Lcom/google/android/apps/nexuslauncher/allapps/d;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->gL:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/apps/nexuslauncher/allapps/d;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mWorker:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$duEh0paxQHyQSV_x01aBnbrlM40(Lcom/google/android/apps/nexuslauncher/allapps/a;Lcom/google/android/apps/nexuslauncher/allapps/a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/d;->a(Lcom/google/android/apps/nexuslauncher/allapps/a;Lcom/google/android/apps/nexuslauncher/allapps/a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->gL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->gL:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xM:Lcom/google/android/apps/nexuslauncher/allapps/j;

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->xM:Lcom/google/android/apps/nexuslauncher/allapps/j;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->gL:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/j;->d(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cN()V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "enable_action_suggest"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/d;->xE:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActionsController"

    const-string v1, "write setting failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    goto :goto_0

    .line 190
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cM()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 192
    goto :goto_0

    .line 206
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/i;

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/d;->xD:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/d;->a(Lcom/google/android/apps/nexuslauncher/allapps/i;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "ActionsController"

    const-string v1, "write log failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    nop

    .line 218
    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 160
    const-string p1, "pref_show_suggested_actions"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cJ()V

    .line 162
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->cL()V

    .line 164
    :cond_0
    return-void
.end method
