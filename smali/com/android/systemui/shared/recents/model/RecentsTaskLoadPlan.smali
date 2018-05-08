.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRawTasks:Ljava/util/List;

.field private mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field private final mTmpLockedUsers:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 74
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 75
    return-void
.end method


# virtual methods
.method public executePlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V
    .locals 11

    .line 162
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 167
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    .line 168
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 169
    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 171
    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v7, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    .line 172
    move v6, v8

    goto :goto_1

    .line 171
    :cond_0
    nop

    .line 172
    move v6, v2

    :goto_1
    iget v7, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v7, v1, v7

    if-lt v3, v7, :cond_1

    .line 173
    move v7, v8

    goto :goto_2

    .line 172
    :cond_1
    nop

    .line 173
    move v7, v2

    :goto_2
    iget v9, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v9, v1, v9

    if-lt v3, v9, :cond_2

    .line 176
    move v9, v8

    goto :goto_3

    .line 173
    :cond_2
    nop

    .line 176
    move v9, v2

    :goto_3
    iget-boolean v10, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v10, :cond_3

    if-nez v6, :cond_6

    .line 177
    :cond_3
    iget-boolean v10, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v10, :cond_5

    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    .line 181
    :cond_4
    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    .line 182
    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2, v5, v6, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 186
    :cond_5
    iget-boolean v6, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v6, :cond_6

    if-eqz v9, :cond_6

    .line 187
    invoke-virtual {p2, v5, v8, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 167
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_7
    return-void
.end method

.method public getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    .line 205
    :cond_1
    return v1
.end method

.method public preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 90
    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v4, :cond_0

    .line 93
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v5

    .line 93
    move/from16 v6, p4

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 97
    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 100
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 101
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    .line 102
    iget-object v7, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 105
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v8

    .line 106
    new-instance v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v12, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v13, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move/from16 v25, v6

    iget-wide v5, v7, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move-object v9, v14

    move v11, v8

    move/from16 v26, v4

    move-object v4, v14

    move-wide v14, v5

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJ)V

    .line 109
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v8, v5, :cond_1

    .line 110
    move v5, v6

    goto :goto_1

    .line 109
    :cond_1
    nop

    .line 110
    const/4 v5, 0x0

    .line 111
    :goto_1
    xor-int/lit8 v18, v5, 0x1

    iget v5, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move/from16 v8, p3

    if-ne v5, v8, :cond_2

    .line 113
    move/from16 v17, v6

    goto :goto_2

    .line 111
    :cond_2
    nop

    .line 113
    const/16 v17, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_8

    .line 115
    iget-boolean v9, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    if-eqz v9, :cond_3

    .line 120
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v9

    .line 122
    :goto_3
    move-object v13, v9

    goto :goto_4

    .line 121
    :cond_3
    const-string v9, ""

    goto :goto_3

    .line 122
    :goto_4
    iget-boolean v9, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    if-eqz v9, :cond_4

    .line 123
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v9

    .line 125
    :goto_5
    move-object v14, v9

    goto :goto_6

    .line 124
    :cond_4
    const-string v9, ""

    goto :goto_5

    .line 125
    :goto_6
    if-eqz v18, :cond_5

    .line 126
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v9, v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 128
    :goto_7
    move-object v11, v9

    goto :goto_8

    .line 127
    :cond_5
    const/4 v10, 0x0

    const/4 v9, 0x0

    goto :goto_7

    .line 128
    :goto_8
    invoke-virtual {v2, v4, v10, v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v12

    .line 130
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v15

    .line 131
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v16

    .line 132
    if-eqz v5, :cond_6

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 136
    move/from16 v19, v6

    goto :goto_9

    .line 132
    :cond_6
    nop

    .line 136
    const/16 v19, 0x0

    :goto_9
    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_7

    .line 137
    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget-object v9, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v9, v10}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 139
    :cond_7
    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v24

    .line 142
    new-instance v5, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    iget-object v7, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move/from16 v22, v9

    move-object v9, v5

    move-object/from16 v21, v10

    move-object v10, v4

    move/from16 v20, v6

    move-object/from16 v23, v7

    invoke-direct/range {v9 .. v24}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Z)V

    .line 147
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_8
    add-int/lit8 v6, v25, 0x1

    move/from16 v4, v26

    goto/16 :goto_0

    .line 151
    :cond_9
    new-instance v1, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 152
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Ljava/util/List;Z)V

    .line 153
    return-void
.end method
