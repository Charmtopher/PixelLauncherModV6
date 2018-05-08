.class public Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ColorExtractionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerHandler:Landroid/os/Handler;

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 183
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 185
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 17

    .line 204
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->access$200(Landroid/content/Context;)I

    move-result v1

    .line 206
    nop

    .line 207
    nop

    .line 209
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 211
    const-wide v3, 0x40c8800000000000L    # 12544.0

    const/16 v5, 0x3100

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    move-object v9, v6

    move-object v6, v0

    goto/16 :goto_6

    .line 215
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_5

    .line 216
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 217
    nop

    .line 218
    :try_start_1
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    .line 221
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 223
    if-le v9, v5, :cond_1

    .line 224
    int-to-double v11, v9

    div-double/2addr v11, v3

    .line 226
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    div-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    .line 228
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v9, v11

    iput v9, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 230
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v12

    invoke-direct {v9, v7, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    invoke-virtual {v0, v9, v10}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v11, v9

    goto :goto_4

    .line 235
    :cond_2
    goto :goto_5

    .line 233
    :catchall_0
    move-exception v0

    move-object v10, v6

    move-object v11, v9

    goto :goto_1

    .line 216
    :catch_1
    move-exception v0

    move-object v10, v9

    move-object v9, v0

    goto :goto_0

    .line 233
    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v10, v6

    move-object v11, v10

    goto :goto_2

    .line 216
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v10, v6

    :goto_0
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 233
    :catchall_2
    move-exception v0

    move-object v11, v10

    move-object v10, v9

    :goto_1
    move-object v9, v0

    :goto_2
    if-eqz v8, :cond_4

    if-eqz v10, :cond_3

    :try_start_5
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_4
    :goto_3
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v11, v6

    .line 234
    :goto_4
    const-string v8, "WMCompatVL"

    const-string v9, "Fetching partial bitmap failed, trying old method"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    move-object v9, v11

    goto :goto_5

    :cond_5
    move-object v9, v6

    :goto_5
    if-nez v9, :cond_6

    .line 238
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 242
    :cond_6
    :goto_6
    if-eqz v6, :cond_8

    .line 245
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 246
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 247
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 248
    if-le v0, v5, :cond_7

    .line 249
    int-to-double v8, v0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 251
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    .line 252
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 251
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 253
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 254
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v6, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "1,"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v9, :cond_9

    .line 261
    invoke-static {v9, v5}, Lcom/android/launcher3/graphics/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher3.compat.WallpaperManagerCompatVL.EXTRACTION_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wallpaper_parsed_colors"

    .line 268
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    return-void
.end method
