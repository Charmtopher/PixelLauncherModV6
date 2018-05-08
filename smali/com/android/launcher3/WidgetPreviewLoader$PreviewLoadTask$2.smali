.class Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;
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

    .line 632
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->val$preview:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->val$preview:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
