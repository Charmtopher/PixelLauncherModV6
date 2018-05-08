.class abstract Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mStackTrace:[Ljava/lang/StackTraceElement;

.field private final mVerifier:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 1

    .line 344
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance p1, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p1, v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mVerifier:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 345
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mStackTrace:[Ljava/lang/StackTraceElement;

    .line 346
    return-void
.end method


# virtual methods
.method protected final updateItemArrays(Lcom/android/launcher3/ItemInfo;J)V
    .locals 9

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, v0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mStackTrace:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, p2, p3, p1, v2}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 353
    iget-wide v1, p1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    const-wide/16 v5, -0x65

    if-eqz v1, :cond_0

    iget-wide v1, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v1, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v7, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v1, v7, v8}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " container being set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", not in the list of folders"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    const-string v1, "ModelWriter"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object p1, p1, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ItemInfo;

    .line 369
    if-eqz p1, :cond_3

    iget-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long p2, p2, v3

    if-eqz p2, :cond_1

    iget-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long p2, p2, v5

    if-nez p2, :cond_3

    .line 372
    :cond_1
    iget p2, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 p3, 0x6

    if-eq p2, p3, :cond_2

    packed-switch p2, :pswitch_data_0

    .line 382
    goto :goto_0

    .line 377
    :cond_2
    :pswitch_0
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object p2, p2, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p2, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 378
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object p2, p2, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p2, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object p2, p2, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p2, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mVerifier:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 388
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
