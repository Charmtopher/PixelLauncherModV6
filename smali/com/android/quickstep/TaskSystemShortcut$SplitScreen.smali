.class public Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;
.super Lcom/android/quickstep/TaskSystemShortcut;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mHandler:Landroid/os/Handler;

.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 113
    const v0, 0x7f02003f

    const v1, 0x7f0c0098

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/TaskSystemShortcut;-><init>(II)V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method public static synthetic lambda$getOnClickListener$0(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->addIgnoreResetTask(Lcom/android/quickstep/views/TaskView;)V

    .line 155
    iget-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 156
    iget-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 157
    return-void
.end method

.method public static synthetic lambda$getOnClickListener$1(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V
    .locals 8

    .line 133
    const/4 p5, 0x1

    const/16 v0, 0x18f

    invoke-static {p1, p5, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/BaseDraggingActivity;ZI)V

    .line 136
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    .line 137
    invoke-static {p5}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 136
    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    nop

    .line 148
    invoke-virtual {p1, p0}, Lcom/android/launcher3/BaseDraggingActivity;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 150
    new-instance p1, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$q9j_EgnWY6JUWP3xlVqv8g1Kin8;

    invoke-direct {p1, p0}, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$q9j_EgnWY6JUWP3xlVqv8g1Kin8;-><init>(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;)V

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 160
    invoke-virtual {p3, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getLocationOnScreen([I)V

    .line 161
    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskThumbnailView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 162
    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskThumbnailView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p4}, Lcom/android/quickstep/views/TaskView;->getScaleY()F

    move-result p4

    mul-float/2addr v2, p4

    float-to-int p4, v2

    .line 163
    new-instance v7, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v0, p5

    aget v2, v0, v2

    add-int/2addr v2, v1

    aget v0, v0, p5

    add-int/2addr v0, p4

    invoke-direct {v7, v3, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    nop

    .line 167
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    .line 166
    invoke-static {p4, v0, p3, v1, v2}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 169
    new-instance p3, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;

    iget-object v4, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mHandler:Landroid/os/Handler;

    move-object v2, p3

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;-><init>(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;Landroid/os/Handler;ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 177
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p2

    iget-object p4, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1, p4, p5}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;Z)V

    goto :goto_0

    .line 141
    :catch_0
    move-exception p1

    .line 142
    const-string p2, "TaskSystemShortcut"

    const-string p3, "Failed to notify SysUI of split screen: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-void

    .line 180
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 9

    .line 120
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    return-object v1

    .line 123
    :cond_0
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 124
    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 125
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_1

    .line 126
    return-object v1

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 129
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 130
    iput-object p2, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 131
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v7

    .line 132
    new-instance v0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;-><init>(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskView;)V

    return-object v0
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseDraggingActivity;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 193
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 202
    iget-object p1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p2, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/RecentsView;->removeIgnoreResetTask(Lcom/android/quickstep/views/TaskView;)V

    .line 205
    iget-object p1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p2, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 206
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 186
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->endProlongedAnimations()V

    .line 187
    const/4 v0, 0x1

    return v0
.end method
