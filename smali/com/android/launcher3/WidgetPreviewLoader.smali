.class public Lcom/android/launcher3/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

.field final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private final mPackageVersions:Ljava/util/HashMap;

.field final mUnusedBitmaps:Ljava/util/Set;

.field final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final mWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    .line 76
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 82
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 84
    new-instance p2, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-direct {p2, p1}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 85
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method private removePackage$67ba8940(Ljava/lang/String;J)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    const-string v1, "packageName = ? AND profileId = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 165
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    return-void

    .line 161
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method final drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 435
    new-instance v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    .line 436
    const v2, 0x7f0b004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 437
    const v2, 0x7f0b004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    .line 438
    const v2, 0x7f0b004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 440
    iget-object v0, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    iget v3, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    int-to-float p2, p2

    iget v4, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    sub-float/2addr p2, v4

    int-to-float p3, p3

    iget v4, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    sub-float/2addr p3, v4

    iget v4, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    sub-float/2addr p3, v4

    invoke-virtual {v0, v2, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 443
    invoke-virtual {v1, p1}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    .line 444
    iget-object p1, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method public final generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 314
    if-gez p3, :cond_0

    const v0, 0x7fffffff

    .line 316
    move v5, v0

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    .line 317
    :goto_0
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 319
    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v7}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const-string v8, "WidgetPreviewLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error loading widget preview for: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    nop

    .line 326
    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v1, v0}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 329
    :cond_1
    const-string v8, "WidgetPreviewLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t load widget preview drawable 0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    .line 330
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for provider: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 329
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 334
    :cond_2
    move-object v0, v6

    :goto_2
    const/4 v8, 0x1

    if-eqz v0, :cond_3

    .line 335
    move v9, v8

    goto :goto_3

    .line 334
    :cond_3
    nop

    .line 335
    move v9, v7

    :goto_3
    iget v10, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    .line 336
    iget v11, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    .line 341
    if-eqz v9, :cond_4

    .line 342
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 343
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    goto :goto_4

    .line 345
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v12

    .line 346
    iget v13, v12, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v12, v12, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 347
    mul-int v13, v12, v10

    .line 348
    mul-int/2addr v12, v11

    .line 353
    move/from16 v22, v13

    move v13, v12

    move/from16 v12, v22

    .line 354
    :goto_4
    if-eqz p5, :cond_5

    .line 355
    aput v12, p5, v7

    .line 357
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    if-le v12, v5, :cond_6

    .line 358
    int-to-float v5, v5

    int-to-float v14, v12

    div-float/2addr v5, v14

    goto :goto_5

    .line 360
    :cond_6
    move v5, v4

    :goto_5
    cmpl-float v4, v5, v4

    if-eqz v4, :cond_7

    .line 361
    int-to-float v4, v12

    mul-float/2addr v4, v5

    float-to-int v12, v4

    .line 362
    int-to-float v4, v13

    mul-float/2addr v4, v5

    float-to-int v13, v4

    .line 366
    :cond_7
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 367
    if-nez v3, :cond_8

    .line 368
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 369
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 374
    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v14, v13, :cond_9

    .line 375
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-virtual {v3, v14, v13, v15}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 378
    :cond_9
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v14}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 383
    :goto_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v14, v12

    div-int/lit8 v14, v14, 0x2

    .line 384
    if-eqz v9, :cond_a

    .line 385
    add-int/2addr v12, v14

    invoke-virtual {v0, v14, v7, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 386
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    .line 388
    :cond_a
    invoke-virtual {v1, v4, v12, v13}, Lcom/android/launcher3/WidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    move-result-object v0

    .line 391
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 392
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 393
    iget-object v9, v1, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f0b004e

    .line 394
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 393
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 397
    iget v9, v0, Landroid/graphics/RectF;->left:F

    .line 398
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v14

    int-to-float v15, v10

    div-float v20, v14, v15

    .line 399
    move v14, v9

    move v9, v8

    :goto_7
    if-ge v9, v10, :cond_b

    .line 400
    add-float v21, v14, v20

    .line 401
    const/16 v16, 0x0

    int-to-float v15, v13

    move-object v14, v4

    move/from16 v18, v15

    move/from16 v15, v21

    move/from16 v17, v21

    move-object/from16 v19, v7

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v21

    goto :goto_7

    .line 404
    :cond_b
    iget v9, v0, Landroid/graphics/RectF;->top:F

    .line 405
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v10

    int-to-float v14, v11

    div-float/2addr v10, v14

    .line 406
    :goto_8
    if-ge v8, v11, :cond_c

    .line 407
    add-float/2addr v9, v10

    .line 408
    const/4 v15, 0x0

    int-to-float v14, v12

    move/from16 v17, v14

    move-object v14, v4

    move/from16 v16, v9

    move/from16 v18, v9

    move-object/from16 v19, v7

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 413
    :cond_c
    :try_start_1
    iget-object v7, v1, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v8, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 414
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v2, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {v7, v8, v2}, Lcom/android/launcher3/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 415
    if-eqz v2, :cond_d

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 417
    int-to-float v7, v7

    mul-float/2addr v7, v5

    .line 418
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 417
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 420
    invoke-virtual {v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 421
    sub-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x2

    .line 422
    sub-int/2addr v13, v0

    div-int/lit8 v13, v13, 0x2

    .line 423
    add-int v2, v12, v0

    add-int/2addr v0, v13

    invoke-virtual {v1, v12, v13, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 424
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    :cond_d
    goto :goto_9

    :catch_1
    move-exception v0

    .line 427
    :goto_9
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 429
    :goto_a
    return-object v3
.end method

.method final getPackageVersion(Ljava/lang/String;)[J
    .locals 6

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 509
    if-nez v1, :cond_0

    .line 510
    const/4 v1, 0x2

    new-array v1, v1, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 514
    const/4 v3, 0x0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v4

    aput-wide v4, v1, v3

    .line 515
    const/4 v3, 0x1

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    aput-wide v4, v1, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    goto :goto_0

    .line 516
    :catch_0
    move-exception v2

    .line 517
    :try_start_2
    const-string v3, "WidgetPreviewLoader"

    const-string v4, "PackageInfo not found"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_0
    monitor-exit v0

    return-object v1

    .line 522
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$1;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 494
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    return-object p1

    .line 498
    :catch_0
    move-exception p1

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 495
    :catch_1
    move-exception p1

    .line 496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 497
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method final readFromDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 9

    .line 252
    nop

    .line 254
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    const-string v2, "preview_bitmap"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentName = ? AND profileId = ? AND size = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    .line 259
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v8, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Landroid/os/UserHandle;

    .line 260
    invoke-virtual {v7, v8}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    iget-object p1, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    aput-object p1, v4, v5

    .line 254
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :try_start_1
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 265
    if-eqz p1, :cond_0

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_0
    return-object v0

    .line 267
    :cond_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 269
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 270
    iput-object p2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    :try_start_3
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 273
    array-length p2, v1

    invoke-static {v1, v6, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 282
    if-eqz p1, :cond_2

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_2
    return-object p2

    .line 277
    :cond_3
    goto :goto_0

    .line 275
    :catch_0
    move-exception p2

    .line 276
    if-eqz p1, :cond_4

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_4
    return-object v0

    .line 282
    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    goto :goto_2

    .line 279
    :catch_1
    move-exception p2

    goto :goto_1

    .line 282
    :catchall_0
    move-exception p2

    goto :goto_3

    .line 279
    :catch_2
    move-exception p2

    move-object p1, v0

    .line 280
    :goto_1
    :try_start_4
    const-string p3, "WidgetPreviewLoader"

    const-string v1, "Error loading preview from DB"

    invoke-static {p3, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    if-eqz p1, :cond_6

    .line 283
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_6
    return-object v0

    .line 282
    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_3
    if-eqz v0, :cond_7

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p2
.end method

.method public final removeObsoletePreviews(Ljava/util/ArrayList;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 18

    move-object/from16 v0, p0

    .line 179
    move-object/from16 v1, p2

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 183
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/ComponentKey;

    .line 184
    iget-object v5, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v6, v4, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    .line 185
    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .line 186
    if-nez v7, :cond_0

    .line 187
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 188
    invoke-virtual {v2, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v4, v4, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_0

    .line 193
    :cond_1
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 194
    if-nez v1, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_1

    .line 195
    :cond_2
    iget-object v4, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v5, v1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    .line 196
    :goto_1
    nop

    .line 198
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    const-string v8, "profileId"

    const-string v9, "packageName"

    const-string v10, "lastUpdated"

    const-string v11, "version"

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :cond_3
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_7

    .line 203
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 204
    const/4 v6, 0x1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 205
    const/4 v12, 0x2

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 206
    const/4 v14, 0x3

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 208
    if-eqz v1, :cond_4

    iget-object v6, v1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    cmp-long v6, v9, v4

    if-nez v6, :cond_3

    .line 211
    :cond_4
    invoke-virtual {v2, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 215
    if-eqz v6, :cond_5

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 216
    invoke-virtual {v0, v11}, Lcom/android/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v6

    .line 217
    aget-wide v16, v6, v8

    cmp-long v8, v16, v14

    if-nez v8, :cond_5

    const/4 v8, 0x1

    aget-wide v14, v6, v8

    cmp-long v6, v14, v12

    if-eqz v6, :cond_3

    .line 219
    :cond_5
    invoke-virtual {v3, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 225
    if-nez v6, :cond_6

    .line 226
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 227
    invoke-virtual {v3, v9, v10, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 229
    :cond_6
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    goto :goto_2

    .line 232
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_9

    .line 233
    invoke-virtual {v3, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 234
    iget-object v4, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    .line 235
    invoke-virtual {v3, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 236
    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage$67ba8940(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    goto :goto_4

    .line 232
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 242
    :cond_9
    if-eqz v7, :cond_a

    .line 243
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    .line 242
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 239
    :catch_0
    move-exception v0

    move-object v6, v7

    goto :goto_5

    .line 242
    :catchall_1
    move-exception v0

    move-object v7, v6

    goto :goto_6

    .line 239
    :catch_1
    move-exception v0

    .line 240
    :goto_5
    :try_start_2
    const-string v1, "WidgetPreviewLoader"

    const-string v2, "Error updating widget previews"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    if-eqz v6, :cond_a

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    .line 246
    :cond_a
    return-void

    .line 242
    :goto_6
    if-eqz v7, :cond_b

    .line 243
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public final removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage$67ba8940(Ljava/lang/String;J)V

    .line 156
    return-void
.end method
