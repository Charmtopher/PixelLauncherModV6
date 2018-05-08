.class Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

.field final synthetic val$preview:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 605
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    invoke-virtual {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    iget-object v3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "componentName"

    iget-object v6, v1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "profileId"

    iget-object v6, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v7, v1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "size"

    iget-object v6, v1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "packageName"

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "lastUpdated"

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "preview_bitmap"

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->insertOrReplace(Landroid/content/ContentValues;)V

    .line 609
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
