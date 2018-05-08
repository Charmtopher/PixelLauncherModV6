.class public Lcom/google/android/apps/nexuslauncher/b/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final yy:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field public yA:Lcom/google/android/apps/nexuslauncher/b/c;

.field public final yz:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.deskclock"

    const-string v2, "com.android.deskclock.DeskClock"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/b/f;->yy:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 70
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yz:Ljava/util/Set;

    .line 72
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yA:Lcom/google/android/apps/nexuslauncher/b/c;

    .line 75
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->mUiHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    const-string v1, "com.google.android.deskclock"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    new-instance v1, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$f$XR6G65e-6aEQq6dDu9IZWnzJd0o;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$f$XR6G65e-6aEQq6dDu9IZWnzJd0o;-><init>(Lcom/google/android/apps/nexuslauncher/b/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/g;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/b/g;-><init>(Lcom/google/android/apps/nexuslauncher/b/f;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/b/f;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/b/f;->a(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/c;->cU()Lcom/google/android/apps/nexuslauncher/b/c;

    move-result-object p0

    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/c;->cW()Z

    .line 150
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/b/c;->yu:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 152
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/b/c;
    .locals 7

    .line 158
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/b/c;-><init>()V

    .line 161
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 162
    const-string v3, "com.google.android.deskclock"

    const/16 v4, 0x2080

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 164
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 165
    if-nez v4, :cond_0

    .line 166
    return-object v0

    .line 168
    :cond_0
    const-string v5, "com.google.android.apps.nexuslauncher.LEVEL_PER_TICK_ICON_ROUND"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 169
    if-nez v5, :cond_1

    .line 170
    return-object v0

    .line 173
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yu:Landroid/graphics/drawable/Drawable;

    .line 176
    const-string p1, "com.google.android.apps.nexuslauncher.HOUR_LAYER_INDEX"

    .line 177
    const/4 v2, -0x1

    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yo:I

    .line 178
    const-string p1, "com.google.android.apps.nexuslauncher.MINUTE_LAYER_INDEX"

    .line 179
    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yp:I

    .line 180
    const-string p1, "com.google.android.apps.nexuslauncher.SECOND_LAYER_INDEX"

    .line 181
    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yq:I

    .line 183
    const-string p1, "com.google.android.apps.nexuslauncher.DEFAULT_HOUR"

    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yr:I

    .line 184
    const-string p1, "com.google.android.apps.nexuslauncher.DEFAULT_MINUTE"

    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->ys:I

    .line 185
    const-string p1, "com.google.android.apps.nexuslauncher.DEFAULT_SECOND"

    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yt:I

    .line 187
    if-eqz p2, :cond_2

    .line 188
    invoke-static {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object p1

    iget-object p2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, v1, v1, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->scale:F

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 193
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/c;->cV()Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p1

    .line 195
    iget p2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yo:I

    if-ltz p2, :cond_3

    iget p2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yo:I

    if-lt p2, p1, :cond_4

    .line 196
    :cond_3
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yo:I

    .line 198
    :cond_4
    iget p2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yp:I

    if-ltz p2, :cond_5

    iget p2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yp:I

    if-lt p2, p1, :cond_6

    .line 199
    :cond_5
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yp:I

    .line 201
    :cond_6
    iget p2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yq:I

    if-ltz p2, :cond_8

    iget p2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yq:I

    if-lt p2, p1, :cond_7

    goto :goto_0

    .line 204
    :cond_7
    iget p1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yq:I

    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 205
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yq:I

    .line 209
    goto :goto_1

    .line 202
    :cond_8
    :goto_0
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yq:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    :catch_0
    move-exception p0

    .line 208
    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/b/c;->yu:Landroid/graphics/drawable/Drawable;

    .line 210
    :goto_1
    return-object v0
.end method

.method private synthetic a(Lcom/google/android/apps/nexuslauncher/b/d;Lcom/google/android/apps/nexuslauncher/b/c;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yA:Lcom/google/android/apps/nexuslauncher/b/c;

    if-eq v0, p2, :cond_0

    .line 140
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yA:Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/b/c;->cU()Lcom/google/android/apps/nexuslauncher/b/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/b/d;->a(Lcom/google/android/apps/nexuslauncher/b/c;)V

    .line 142
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/b/f;Ljava/lang/String;)V
    .locals 2

    .line 38
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yz:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/b/d;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/b/d;->yx:Lcom/google/android/apps/nexuslauncher/b/c;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/b/d;->yx:Lcom/google/android/apps/nexuslauncher/b/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/b/c;->yn:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/d;->invalidateSelf()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private synthetic b(Lcom/google/android/apps/nexuslauncher/b/c;)V
    .locals 2

    .line 116
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yA:Lcom/google/android/apps/nexuslauncher/b/c;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yz:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/b/d;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yA:Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/b/c;->cU()Lcom/google/android/apps/nexuslauncher/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/b/d;->a(Lcom/google/android/apps/nexuslauncher/b/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cY()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 114
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/b/f;->a(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/b/c;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$f$FRbvo1ZsL7x027BvY77OJOvJU9c;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$f$FRbvo1ZsL7x027BvY77OJOvJU9c;-><init>(Lcom/google/android/apps/nexuslauncher/b/f;Lcom/google/android/apps/nexuslauncher/b/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public static synthetic lambda$FRbvo1ZsL7x027BvY77OJOvJU9c(Lcom/google/android/apps/nexuslauncher/b/f;Lcom/google/android/apps/nexuslauncher/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/b/f;->b(Lcom/google/android/apps/nexuslauncher/b/c;)V

    return-void
.end method

.method public static synthetic lambda$KQ_fMHXReV0Q4Ucm8E_SvIlm9_k(Lcom/google/android/apps/nexuslauncher/b/f;Lcom/google/android/apps/nexuslauncher/b/d;Lcom/google/android/apps/nexuslauncher/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/b/f;->a(Lcom/google/android/apps/nexuslauncher/b/d;Lcom/google/android/apps/nexuslauncher/b/c;)V

    return-void
.end method

.method public static synthetic lambda$XR6G65e-6aEQq6dDu9IZWnzJd0o(Lcom/google/android/apps/nexuslauncher/b/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/f;->cY()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/graphics/BitmapInfo;)Lcom/google/android/apps/nexuslauncher/b/d;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->yA:Lcom/google/android/apps/nexuslauncher/b/c;

    .line 136
    new-instance v1, Lcom/google/android/apps/nexuslauncher/b/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/c;->cU()Lcom/google/android/apps/nexuslauncher/b/c;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/google/android/apps/nexuslauncher/b/d;-><init>(Lcom/android/launcher3/graphics/BitmapInfo;Lcom/google/android/apps/nexuslauncher/b/c;Lcom/google/android/apps/nexuslauncher/b/f;)V

    .line 137
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$f$KQ_fMHXReV0Q4Ucm8E_SvIlm9_k;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$f$KQ_fMHXReV0Q4Ucm8E_SvIlm9_k;-><init>(Lcom/google/android/apps/nexuslauncher/b/f;Lcom/google/android/apps/nexuslauncher/b/d;Lcom/google/android/apps/nexuslauncher/b/c;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/f;->cY()V

    .line 101
    return-void
.end method
