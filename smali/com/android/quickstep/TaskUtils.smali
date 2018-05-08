.class public Lcom/android/quickstep/TaskUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTaskViewToLaunch(Lcom/android/launcher3/BaseDraggingActivity;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;
    .locals 5

    .line 89
    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/android/quickstep/views/TaskView;

    return-object p1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ItemInfo;

    .line 98
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    .line 104
    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    return-object v2

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 113
    return-object p1

    .line 116
    :cond_3
    nop

    .line 117
    array-length v0, p2

    :goto_1
    const/4 v2, -0x1

    if-ge v1, v0, :cond_5

    aget-object v3, p2, v1

    .line 118
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_4

    .line 119
    iget p2, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 120
    goto :goto_2

    .line 117
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_5
    move p2, v2

    :goto_2
    if-ne p2, v2, :cond_6

    .line 126
    return-object p1

    .line 131
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->getTaskView(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    .line 132
    if-eqz p2, :cond_8

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_3

    .line 135
    :cond_7
    return-object p2

    .line 133
    :cond_8
    :goto_3
    return-object p1
.end method

.method public static getComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;
    .locals 2

    .line 76
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static getRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;
    .locals 9

    .line 145
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsInterpolator()Lcom/android/quickstep/RecentsAnimationInterpolator;

    move-result-object v2

    .line 147
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 148
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 151
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    new-instance v8, Lcom/android/quickstep/TaskUtils$1;

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/TaskUtils$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RecentsAnimationInterpolator;ZLandroid/graphics/Matrix;Landroid/graphics/Rect;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    return-object v7

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;
    .locals 5

    .line 61
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 62
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 64
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 65
    nop

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 65
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const-string p0, "TaskUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get title for task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string p0, ""

    return-object p0

    .line 71
    :cond_0
    nop

    .line 72
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 71
    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static taskIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;II)Z
    .locals 5

    .line 215
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 216
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    iget v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, p1, :cond_0

    .line 217
    const/4 p0, 0x1

    return p0

    .line 215
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return v1
.end method
