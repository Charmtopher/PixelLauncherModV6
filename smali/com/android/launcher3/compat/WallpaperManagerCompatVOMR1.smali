.class public Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;
.super Lcom/android/launcher3/compat/WallpaperManagerCompat;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WMCompatVOMR1"


# instance fields
.field private mWCColorHintsMethod:Ljava/lang/reflect/Method;

.field private final mWm:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompat;-><init>()V

    .line 39
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    .line 40
    const-class p1, Landroid/app/WallpaperColors;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    :try_start_0
    const-class p1, Landroid/app/WallpaperColors;

    const-string v0, "getColorHints"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 43
    :catch_0
    move-exception p1

    .line 44
    const-string v0, "WMCompatVOMR1"

    const-string v1, "getColorHints not available"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Landroid/app/WallpaperColors;)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move-result-object p0

    return-object p0
.end method

.method private convertColorsObject(Landroid/app/WallpaperColors;)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 6

    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v2

    .line 72
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    goto :goto_0

    .line 73
    :cond_1
    move v0, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    goto :goto_1

    .line 74
    :cond_2
    move v1, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    goto :goto_2

    .line 75
    :cond_3
    move v2, v3

    .line 77
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    .line 78
    iget-object v4, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    move v3, p1

    :cond_4
    goto :goto_3

    .line 80
    :catch_0
    move-exception p1

    .line 81
    const-string v4, "WMCompatVOMR1"

    const-string v5, "error calling color hints"

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_3
    new-instance p1, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/launcher3/compat/WallpaperColorsCompat;-><init>(IIII)V

    return-object p1
.end method


# virtual methods
.method public addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
    .locals 2

    .line 56
    new-instance v0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;-><init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V

    .line 62
    iget-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    .line 63
    return-void
.end method

.method public getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move-result-object p1

    return-object p1
.end method
