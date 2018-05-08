.class public Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseActivity;

.field mBitmapToRecycle:Landroid/graphics/Bitmap;

.field private final mCaller:Lcom/android/launcher3/widget/WidgetCell;

.field private final mInfo:Lcom/android/launcher3/model/WidgetItem;

.field final mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field mVersions:[J

.field final synthetic this$0:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Lcom/android/launcher3/model/WidgetItem;IILcom/android/launcher3/widget/WidgetCell;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 538
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    .line 539
    iput-object p3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    .line 540
    iput p5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    .line 541
    iput p4, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    .line 542
    iput-object p6, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/WidgetCell;

    .line 543
    iget-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 548
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->doInBackground$2d4c763b()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs doInBackground$2d4c763b()Landroid/graphics/Bitmap;
    .locals 11

    .line 552
    nop

    .line 555
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    return-object v1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 561
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    if-ne v4, v5, :cond_1

    .line 563
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    if-ne v4, v5, :cond_1

    .line 564
    nop

    .line 565
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 566
    goto :goto_1

    .line 568
    :cond_1
    goto :goto_0

    .line 569
    :cond_2
    move-object v3, v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    if-nez v3, :cond_3

    .line 573
    iget v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 576
    :cond_3
    move-object v8, v3

    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    return-object v8

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    invoke-virtual {v0, v2, v8, p0}, Lcom/android/launcher3/WidgetPreviewLoader;->readFromDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v0, :cond_e

    .line 585
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, v0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, v0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    .line 586
    invoke-virtual {v0}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 587
    :cond_5
    move v0, v2

    goto :goto_3

    .line 586
    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 587
    :goto_3
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v3, v3, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_4

    .line 588
    :cond_7
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    .line 591
    iget-object v4, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mActivity:Lcom/android/launcher3/BaseActivity;

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    iget v7, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    iget-object v6, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_7

    :cond_8
    iget-object v0, v0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b004f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v9, 0x2

    mul-int/2addr v9, v5

    add-int/2addr v9, v6

    if-lt v3, v9, :cond_d

    if-lt v7, v9, :cond_d

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lt v7, v9, :cond_c

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v7, v9, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v7, v9, :cond_a

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v9, :cond_b

    :cond_a
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v8, v9, v9, v7}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_b
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    :cond_c
    :goto_5
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_6
    invoke-virtual {v4, v3, v9, v9}, Lcom/android/launcher3/WidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v9, v4, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v9

    iget-object v10, v4, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v4, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float v2, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v6, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v2, v5

    invoke-virtual {v7, v2, v2}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v0, v4, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    move-object v0, v8

    goto :goto_7

    .line 591
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max size is too small for preview"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_e
    :goto_7
    return-object v0

    .line 569
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCancel()V
    .locals 2

    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->cancel(Z)Z

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    :cond_0
    return-void
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 2

    .line 525
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 525
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    return-void
.end method
