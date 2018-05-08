.class public Lcom/android/systemui/shared/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStack"


# instance fields
.field private mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

.field private final mRawTaskList:Ljava/util/ArrayList;

.field private final mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    sget-object v1, Lcom/android/systemui/shared/recents/model/-$$Lambda$TaskStack$gkuBLLtJ6FV7PDAxT-_KECDzTOI;->INSTANCE:Lcom/android/systemui/shared/recents/model/-$$Lambda$TaskStack$gkuBLLtJ6FV7PDAxT-_KECDzTOI;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->setFilter(Lcom/android/systemui/shared/recents/model/TaskFilter;)Z

    .line 71
    return-void
.end method

.method private createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 5

    .line 374
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 376
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 377
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 378
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    return-object v0
.end method

.method private getNextLaunchTargetRaw()Lcom/android/systemui/shared/recents/model/Task;
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    .line 298
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    return-object v1

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    .line 302
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-lez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    return-object v0

    .line 305
    :cond_1
    return-object v1
.end method

.method static synthetic lambda$new$0(Landroid/util/SparseArray;Lcom/android/systemui/shared/recents/model/Task;I)Z
    .locals 0

    .line 70
    iget-boolean p0, p1, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    return p0
.end method


# virtual methods
.method public computeAllTasksList()Ljava/util/ArrayList;
    .locals 2

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    return-object v0
.end method

.method public computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 7

    .line 333
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 334
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 337
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 338
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 341
    iget v6, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v6, p2, :cond_1

    .line 343
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 344
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 345
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 347
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 350
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_0
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 356
    :cond_2
    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "TaskStack"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    const-string p1, " numStackTasks="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 388
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 389
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 391
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 392
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3, v0, p2}, Lcom/android/systemui/shared/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method public findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 317
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 318
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 319
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v4, p1, :cond_0

    .line 320
    return-object v3

    .line 317
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 256
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 257
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 258
    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_0

    .line 259
    return-object v3

    .line 256
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;
    .locals 2

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getNextLaunchTargetRaw()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .locals 5

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 220
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 221
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 222
    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-object v0
.end method

.method public getTasks()Ljava/util/ArrayList;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    return p1
.end method

.method public isNextLaunchTargetPip(J)Z
    .locals 7

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getNextLaunchTargetRaw()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    .line 271
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    cmp-long v6, p1, v3

    if-lez v6, :cond_1

    .line 273
    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    return v5

    :cond_0
    return v2

    .line 274
    :cond_1
    if-eqz v0, :cond_2

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    if-ne p1, v5, :cond_2

    .line 277
    return v5

    .line 279
    :cond_2
    return v2
.end method

.method public removeAllTasks(Z)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 111
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/shared/recents/model/Task;)Z

    .line 112
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {p1, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 118
    :cond_1
    return-void
.end method

.method public removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V
    .locals 1

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V

    .line 84
    return-void
.end method

.method public removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/shared/recents/model/Task;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 95
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V

    .line 101
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    .line 76
    return-void
.end method

.method public setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V
    .locals 0

    .line 125
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Ljava/util/List;Z)V

    .line 126
    return-void
.end method

.method public setTasks(Ljava/util/List;Z)V
    .locals 15

    move-object v7, p0

    .line 136
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 138
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v3, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    const/4 v10, 0x0

    if-nez v3, :cond_0

    .line 144
    nop

    .line 148
    move v11, v10

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    :goto_0
    iget-object v3, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 149
    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 150
    iget-object v4, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 151
    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 152
    if-eqz v11, :cond_1

    .line 153
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 159
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 160
    move v3, v10

    :goto_2
    if-ge v3, v1, :cond_5

    .line 161
    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 162
    iget-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    .line 163
    if-nez v6, :cond_3

    if-eqz v11, :cond_3

    .line 164
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 165
    :cond_3
    if-eqz v6, :cond_4

    .line 168
    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 169
    nop

    .line 171
    move-object v5, v6

    :cond_4
    :goto_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    .line 176
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    iput v0, v1, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    .line 175
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 179
    :cond_6
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 180
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 185
    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v13

    .line 186
    move v14, v10

    :goto_5
    if-ge v14, v12, :cond_7

    .line 187
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    sget-object v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, v13

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V

    .line 186
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 193
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 194
    :goto_6
    if-ge v10, v0, :cond_8

    .line 195
    iget-object v1, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {v1, v7, v2}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 194
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 199
    :cond_8
    if-eqz v11, :cond_9

    .line 200
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v0, v7}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 202
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stack Tasks ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 364
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    :cond_0
    return-object v0
.end method
