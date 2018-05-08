.class public Lcom/android/launcher3/compat/WallpaperManagerCompatVL;
.super Lcom/android/launcher3/compat/WallpaperManagerCompat;
.source "SourceFile"


# static fields
.field private static final ACTION_EXTRACTION_COMPLETE:Ljava/lang/String; = "com.android.launcher3.compat.WallpaperManagerCompatVL.EXTRACTION_COMPLETE"

.field private static final KEY_COLORS:Ljava/lang/String; = "wallpaper_parsed_colors"

.field private static final TAG:Ljava/lang/String; = "WMCompatVL"

.field private static final VERSION_PREFIX:Ljava/lang/String; = "1,"


# instance fields
.field private mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompat;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mListeners:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallpaper_parsed_colors"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    nop

    .line 73
    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->parseValue(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 75
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 76
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    goto :goto_0

    .line 79
    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->getWallpaperId(Landroid/content/Context;)I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->reloadColors()V

    .line 82
    :cond_2
    new-instance v0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$1;-><init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x1000

    .line 93
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 96
    iget v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 97
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    move-object v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_4
    goto :goto_2

    .line 100
    :catch_0
    move-exception p1

    .line 102
    const-string v1, "WMCompatVL"

    const-string v2, "Unable to get permission info"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :goto_2
    iget-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;-><init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.launcher3.compat.WallpaperManagerCompatVL.EXTRACTION_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->reloadColors()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->handleResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)I
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->getWallpaperId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static final getWallpaperId(Landroid/content/Context;)I
    .locals 1

    .line 139
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-nez v0, :cond_0

    .line 140
    const/4 p0, -0x1

    return p0

    .line 142
    :cond_0
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p0

    return p0
.end method

.method private handleResult(Ljava/lang/String;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallpaper_parsed_colors"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    invoke-static {p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->parseValue(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    .line 133
    iget-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;->onColorsChanged(Lcom/android/launcher3/compat/WallpaperColorsCompat;I)V

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private static parseValue(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6

    .line 149
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 150
    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 153
    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 156
    :cond_0
    array-length v1, p0

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 157
    :cond_1
    move v1, v3

    :goto_0
    array-length v2, p0

    const/4 v4, 0x3

    if-le v2, v4, :cond_2

    aget-object v2, p0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 158
    :cond_2
    move v2, v3

    :goto_1
    array-length v4, p0

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    aget-object p0, p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    .line 160
    :cond_3
    move p0, v3

    :goto_2
    new-instance v4, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    invoke-direct {v4, v1, v2, p0, v3}, Lcom/android/launcher3/compat/WallpaperColorsCompat;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private reloadColors()V
    .locals 4

    .line 124
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 126
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 128
    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 1

    .line 115
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
