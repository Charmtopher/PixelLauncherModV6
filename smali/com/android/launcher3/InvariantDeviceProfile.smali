.class public Lcom/android/launcher3/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEFAULT_ICON_SIZE_DP:F

.field private static KNEARESTNEIGHBOR:F

.field private static WEIGHT_EFFICIENT:F

.field private static WEIGHT_POWER:F


# instance fields
.field defaultLayoutId:I

.field public defaultWallpaperSize:Landroid/graphics/Point;

.field demoModeLayoutId:I

.field public fillResIconDpi:I

.field public iconBitmapSize:I

.field public iconSize:F

.field public iconTextSize:F

.field public landscapeIconSize:F

.field public landscapeProfile:Lcom/android/launcher3/DeviceProfile;

.field minHeightDps:F

.field minWidthDps:F

.field name:Ljava/lang/String;

.field public numColumns:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numHotseatIcons:I

.field public numRows:I

.field public portraitProfile:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->DEFAULT_ICON_SIZE_DP:F

    .line 51
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    .line 52
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_POWER:F

    .line 55
    const v0, 0x47c35000    # 100000.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 123
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 128
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 129
    invoke-virtual {v0, v11, v12}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 132
    iget v2, v11, Landroid/graphics/Point;->x:I

    iget v3, v11, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    .line 133
    iget v2, v12, Landroid/graphics/Point;->x:I

    iget v3, v12, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 135
    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 135
    new-instance v5, Lcom/android/launcher3/InvariantDeviceProfile$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/launcher3/InvariantDeviceProfile$1;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;FF)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 138
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 141
    iget v4, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 142
    iget v4, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 143
    iget v4, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 144
    iget v4, v3, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 145
    iget v4, v3, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    .line 146
    iget v4, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 147
    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 149
    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 150
    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    .line 151
    iget v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 152
    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 153
    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getLauncherIconDensity(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v2

    if-eqz v2, :cond_4

    const/high16 v3, -0x40800000    # -1.0f

    :try_start_0
    iget-object v4, v2, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    const-string v5, "grid_num_rows"

    const-string v6, "integer"

    iget-object v7, v2, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-lez v4, :cond_0

    iget-object v6, v2, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget-object v6, v2, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    const-string v7, "grid_num_columns"

    const-string v8, "integer"

    iget-object v9, v2, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    iget-object v5, v2, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    :cond_1
    iget-object v6, v2, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    const-string v7, "grid_icon_size_dp"

    const-string v8, "dimen"

    iget-object v9, v2, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    iget-object v2, v2, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-lez v4, :cond_3

    if-lez v5, :cond_3

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    :cond_3
    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Launcher.Partner"

    const-string v3, "Invalid Partner grid resource!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_4
    :goto_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 163
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 164
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 166
    new-instance v13, Lcom/android/launcher3/DeviceProfile;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v13

    move-object v3, p1

    move-object v4, p0

    move-object v5, v11

    move-object v6, v12

    move v7, v1

    move v8, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZZ)V

    iput-object v13, p0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    .line 168
    new-instance v13, Lcom/android/launcher3/DeviceProfile;

    const/4 v9, 0x0

    move-object v2, v13

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZZ)V

    iput-object v13, p0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x2d0

    if-lt p1, v2, :cond_5

    .line 174
    new-instance p1, Landroid/graphics/Point;

    int-to-float v2, v1

    .line 175
    int-to-float v0, v0

    div-float v0, v2, v0

    const v3, 0x3e9d89d7

    mul-float/2addr v3, v0

    const v0, 0x3f80fc10

    add-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v0, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    return-void

    .line 178
    :cond_5
    new-instance p1, Landroid/graphics/Point;

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    .line 180
    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 14

    .line 97
    iget-object v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v3, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    iget v4, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v5, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v6, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iget v7, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v8, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iget v9, p1, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    iget v10, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    iget v11, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    iget v12, p1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    iget v13, p1, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIFFFIII)V

    .line 101
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FFIIIIFFFIII)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->name:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    .line 107
    iput p3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 108
    iput p4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 109
    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 110
    iput p6, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 111
    iput p7, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 112
    iput p8, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 113
    iput p9, p0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    .line 114
    iput p10, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 115
    iput p11, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 116
    iput p12, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 117
    iput p13, p0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    .line 118
    return-void
.end method

.method private getLauncherIconDensity(I)I
    .locals 5

    .line 221
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 231
    nop

    .line 232
    const/16 v1, 0x280

    const/4 v2, 0x6

    :goto_0
    if-ltz v2, :cond_1

    .line 233
    const/high16 v3, 0x42400000    # 48.0f

    aget v4, v0, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 235
    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 236
    aget v1, v0, v2

    .line 232
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 240
    :cond_1
    return v1

    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    .line 305
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 306
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    .line 307
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 308
    return-object p0
.end method


# virtual methods
.method final dist(FFFF)F
    .locals 2

    .line 256
    sub-float/2addr p3, p1

    float-to-double v0, p3

    sub-float/2addr p4, p2

    float-to-double p1, p4

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public final getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 324
    nop

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 324
    iget-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    .line 323
    return-object p1
.end method

.method final getPredefinedDeviceProfiles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 24

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 185
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 188
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 189
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_2

    :cond_0
    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 190
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    const-string v4, "profile"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    nop

    .line 192
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v8, Lcom/android/launcher3/R$styleable;->InvariantDeviceProfile:[I

    .line 191
    move-object/from16 v9, p1

    invoke-virtual {v9, v4, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 193
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 194
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 195
    const/16 v5, 0x8

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 196
    new-instance v13, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 197
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 198
    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 199
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v7, 0x5

    .line 202
    invoke-virtual {v4, v7, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    const/4 v7, 0x6

    .line 203
    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    const/16 v7, 0x9

    .line 205
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    const/16 v7, 0xa

    .line 206
    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    const/4 v7, 0x7

    .line 207
    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    const/16 v7, 0xb

    .line 208
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    const/16 v7, 0xc

    .line 209
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move-object v10, v13

    move-object v7, v13

    move v13, v6

    move/from16 v18, v5

    invoke-direct/range {v10 .. v23}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIFFFIII)V

    .line 196
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    goto/16 :goto_0

    .line 188
    :cond_1
    move-object/from16 v9, p1

    goto/16 :goto_0

    .line 213
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 215
    :cond_3
    nop

    .line 216
    :goto_1
    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_2

    .line 184
    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final invDistWeightedInterpolate(FFLjava/util/ArrayList;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 12

    .line 281
    nop

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 284
    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 285
    return-object v1

    .line 288
    :cond_0
    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>()V

    .line 289
    move v2, v3

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    int-to-float v4, v0

    sget v5, Lcom/android/launcher3/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 290
    new-instance v4, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 291
    iget v5, v4, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v6, v4, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    sget v7, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_POWER:F

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_1

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_1

    :cond_1
    sget v6, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    float-to-double v8, v6

    float-to-double v5, v5

    float-to-double v10, v7

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v8, v5

    double-to-float v5, v8

    .line 292
    :goto_1
    add-float/2addr v2, v5

    .line 293
    invoke-direct {v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iget v6, v4, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    add-float/2addr v5, v6

    iput v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    iget v6, v4, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    add-float/2addr v5, v6

    iput v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    add-float/2addr v5, v4

    iput v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, v2

    invoke-direct {v1, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    return-object p1
.end method
