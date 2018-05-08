.class Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;
.super Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.source "SourceFile"


# instance fields
.field private final mItems:Ljava/util/ArrayList;

.field private final mValues:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 315
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mValues:Ljava/util/ArrayList;

    .line 316
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    .line 317
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 323
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 325
    iget-wide v4, v3, Lcom/android/launcher3/ItemInfo;->id:J

    .line 326
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    .line 327
    iget-object v7, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 329
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->updateItemArrays(Lcom/android/launcher3/ItemInfo;J)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v1, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    return-void

    .line 334
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    return-void
.end method
