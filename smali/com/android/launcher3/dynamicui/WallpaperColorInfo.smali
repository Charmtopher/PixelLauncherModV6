.class public Lcom/android/launcher3/dynamicui/WallpaperColorInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;


# static fields
.field private static sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mExtractionType:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

.field public mIsDark:Z

.field private final mListeners:Ljava/util/ArrayList;

.field public mMainColor:I

.field public mSecondaryColor:I

.field public mSupportsDarkText:Z

.field private mTempListeners:[Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

.field private final mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    .line 40
    invoke-static {p1}, Lcom/android/launcher3/compat/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/WallpaperManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompat;->addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V

    .line 42
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mExtractionType:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    .line 43
    iget-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/compat/WallpaperManagerCompat;->getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->update(Lcom/android/launcher3/compat/WallpaperColorsCompat;)V

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;
    .locals 2

    .line 21
    sget-object v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 25
    :cond_0
    sget-object p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    monitor-exit v0

    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private update(Lcom/android/launcher3/compat/WallpaperColorsCompat;)V
    .locals 17

    move-object/from16 v0, p0

    .line 71
    iget-object v2, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mExtractionType:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v2

    goto/16 :goto_7

    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getPrimaryColor()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getPrimaryColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getSecondaryColor()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getSecondaryColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getTertiaryColor()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getTertiaryColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getColorHints()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_4

    move v9, v5

    goto :goto_1

    :cond_4
    move v9, v6

    :goto_1
    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [F

    move v13, v6

    :goto_2
    if-ge v13, v8, :cond_7

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v15, v11, v3, v12}, Landroid/support/v4/b/a;->a(III[F)V

    invoke-virtual {v2, v12}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->isBlacklisted([F)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x3

    goto :goto_2

    :cond_7
    :goto_3
    if-nez v10, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v7, v8, v3, v12}, Landroid/support/v4/b/a;->a(III[F)V

    aget v3, v12, v6

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v3, v7

    aput v3, v12, v6

    aget v3, v12, v6

    aget v7, v12, v5

    invoke-static {v3, v7}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->findTonalPalette(FF)Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v2, "Tonal"

    const-string v3, "Could not find a tonal palette!"

    :goto_4
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    aget v7, v12, v6

    aget v8, v12, v5

    aget v10, v12, v4

    invoke-static {v3, v7, v8, v10}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->bestFit(Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;FFF)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    const-string v2, "Tonal"

    const-string v3, "Could not find best fit!"

    goto :goto_4

    :cond_a
    iget-object v8, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->h:[F

    aget v10, v12, v6

    const/high16 v11, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v13, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v8, v10, v7, v11, v13}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fit([FFIFF)[F

    move-result-object v8

    iget-object v10, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->s:[F

    aget v11, v12, v5

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static {v10, v11, v7, v14, v13}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fit([FFIFF)[F

    move-result-object v10

    iget-object v3, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->l:[F

    aget v11, v12, v4

    invoke-static {v3, v11, v7, v14, v13}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fit([FFIFF)[F

    move-result-object v3

    invoke-virtual {v2, v7, v8, v10, v3}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->getColorInt(I[F[F[F)I

    move-result v11

    iget-object v12, v2, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    invoke-static {v11, v12}, Landroid/support/v4/b/a;->a(I[F)V

    iget-object v12, v2, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v12, v12, v4

    const v13, -0x4f4f50

    iget-object v14, v2, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    invoke-static {v13, v14}, Landroid/support/v4/b/a;->a(I[F)V

    iget-object v13, v2, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v13, v13, v4

    cmpl-float v13, v12, v13

    if-lez v13, :cond_b

    goto/16 :goto_0

    :cond_b
    const v13, -0xdededf

    iget-object v14, v2, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    invoke-static {v13, v14}, Landroid/support/v4/b/a;->a(I[F)V

    iget-object v13, v2, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v13, v13, v4

    cmpg-float v12, v12, v13

    if-gez v12, :cond_c

    goto/16 :goto_0

    :cond_c
    if-eqz v9, :cond_d

    array-length v7, v8

    sub-int/2addr v7, v5

    goto :goto_5

    :cond_d
    if-ge v7, v4, :cond_e

    move v7, v6

    goto :goto_5

    :cond_e
    const/4 v9, 0x3

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_5
    if-lt v7, v4, :cond_f

    const/4 v9, -0x2

    goto :goto_6

    :cond_f
    move v9, v4

    :goto_6
    add-int/2addr v7, v9

    invoke-virtual {v2, v7, v8, v10, v3}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->getColorInt(I[F[F[F)I

    move-result v2

    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_10

    .line 73
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    .line 74
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    goto :goto_8

    .line 76
    :cond_10
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    .line 77
    iput v2, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    .line 79
    :goto_8
    if-eqz p1, :cond_12

    .line 81
    nop

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getColorHints()I

    move-result v2

    and-int/2addr v2, v5

    if-lez v2, :cond_11

    .line 81
    move v2, v5

    goto :goto_9

    .line 80
    :cond_11
    nop

    .line 81
    :cond_12
    move v2, v6

    :goto_9
    iput-boolean v2, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    .line 82
    if-eqz p1, :cond_14

    .line 84
    nop

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getColorHints()I

    move-result v1

    and-int/2addr v1, v4

    if-lez v1, :cond_13

    .line 84
    move v6, v5

    goto :goto_a

    .line 83
    :cond_13
    nop

    .line 84
    :cond_14
    :goto_a
    iput-boolean v6, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    .line 85
    return-void
.end method


# virtual methods
.method public final addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public onColorsChanged(Lcom/android/launcher3/compat/WallpaperColorsCompat;I)V
    .locals 2

    .line 64
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->update(Lcom/android/launcher3/compat/WallpaperColorsCompat;)V

    .line 66
    iget-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mTempListeners:[Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mTempListeners:[Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    array-length p1, p1

    iget-object p2, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mTempListeners:[Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    :goto_0
    iget-object p2, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    iput-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mTempListeners:[Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    iget-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mTempListeners:[Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;->onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method public final removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method
