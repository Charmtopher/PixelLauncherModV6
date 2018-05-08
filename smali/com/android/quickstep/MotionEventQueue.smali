.class public Lcom/android/quickstep/MotionEventQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_DEFER_INIT:I = 0x5fe

.field private static final ACTION_QUICK_SCRUB_END:I = 0x3fe

.field private static final ACTION_QUICK_SCRUB_PROGRESS:I = 0x2fe

.field private static final ACTION_QUICK_SCRUB_START:I = 0x1fe

.field private static final ACTION_QUICK_STEP:I = 0x7fe

.field private static final ACTION_RESET:I = 0x4fe

.field private static final ACTION_SHOW_OVERVIEW_FROM_ALT_TAB:I = 0x6fe

.field private static final ACTION_VIRTUAL:I = 0xfe

.field private static final TAG:Ljava/lang/String; = "MotionEventQueue"


# instance fields
.field private final mArrays:[Lcom/android/quickstep/MotionEventQueue$EventArray;

.field private final mConsumer:Lcom/android/quickstep/TouchConsumer;

.field private mCurrentChoreographer:Landroid/view/Choreographer;

.field private mCurrentIndex:I

.field private mCurrentRunnable:Ljava/lang/Runnable;

.field private final mEmptyArray:Lcom/android/quickstep/MotionEventQueue$EventArray;

.field private final mExecutionLock:Ljava/lang/Object;

.field private mInterimChoreographer:Landroid/view/Choreographer;

.field private final mInterimFrameCallback:Ljava/lang/Runnable;

.field private final mMainChoreographer:Landroid/view/Choreographer;

.field private final mMainFrameCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Lcom/android/quickstep/TouchConsumer;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/quickstep/MotionEventQueue$EventArray;

    invoke-direct {v0}, Lcom/android/quickstep/MotionEventQueue$EventArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mEmptyArray:Lcom/android/quickstep/MotionEventQueue$EventArray;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mExecutionLock:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/quickstep/MotionEventQueue$EventArray;

    new-instance v1, Lcom/android/quickstep/MotionEventQueue$EventArray;

    invoke-direct {v1}, Lcom/android/quickstep/MotionEventQueue$EventArray;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/quickstep/MotionEventQueue$EventArray;

    invoke-direct {v1}, Lcom/android/quickstep/MotionEventQueue$EventArray;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mArrays:[Lcom/android/quickstep/MotionEventQueue$EventArray;

    .line 64
    iput v2, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentIndex:I

    .line 66
    new-instance v0, Lcom/android/quickstep/-$$Lambda$MotionEventQueue$9q1CSWXYzlK1SrSfsd3E79Dop7U;

    invoke-direct {v0, p0}, Lcom/android/quickstep/-$$Lambda$MotionEventQueue$9q1CSWXYzlK1SrSfsd3E79Dop7U;-><init>(Lcom/android/quickstep/MotionEventQueue;)V

    iput-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mMainFrameCallback:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/android/quickstep/-$$Lambda$MotionEventQueue$ChiGH2z0n5tlTb-fvoTp_Scqn50;

    invoke-direct {v0, p0}, Lcom/android/quickstep/-$$Lambda$MotionEventQueue$ChiGH2z0n5tlTb-fvoTp_Scqn50;-><init>(Lcom/android/quickstep/MotionEventQueue;)V

    iput-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mInterimFrameCallback:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mMainChoreographer:Landroid/view/Choreographer;

    .line 80
    iput-object p2, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    .line 81
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mMainChoreographer:Landroid/view/Choreographer;

    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentChoreographer:Landroid/view/Choreographer;

    .line 82
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mMainFrameCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-interface {p2, p0}, Lcom/android/quickstep/TouchConsumer;->getIntrimChoreographer(Lcom/android/quickstep/MotionEventQueue;)Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MotionEventQueue;->setInterimChoreographer(Landroid/view/Choreographer;)V

    .line 85
    return-void
.end method

.method private frameCallbackForInterimChoreographer()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mInterimChoreographer:Landroid/view/Choreographer;

    invoke-direct {p0, v0}, Lcom/android/quickstep/MotionEventQueue;->runFor(Landroid/view/Choreographer;)V

    .line 136
    return-void
.end method

.method private frameCallbackForMainChoreographer()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mMainChoreographer:Landroid/view/Choreographer;

    invoke-direct {p0, v0}, Lcom/android/quickstep/MotionEventQueue;->runFor(Landroid/view/Choreographer;)V

    .line 132
    return-void
.end method

.method public static synthetic lambda$9q1CSWXYzlK1SrSfsd3E79Dop7U(Lcom/android/quickstep/MotionEventQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/MotionEventQueue;->frameCallbackForMainChoreographer()V

    return-void
.end method

.method public static synthetic lambda$ChiGH2z0n5tlTb-fvoTp_Scqn50(Lcom/android/quickstep/MotionEventQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/MotionEventQueue;->frameCallbackForInterimChoreographer()V

    return-void
.end method

.method private queueNoPreProcess(Landroid/view/MotionEvent;)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mArrays:[Lcom/android/quickstep/MotionEventQueue$EventArray;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/MotionEventQueue;->mArrays:[Lcom/android/quickstep/MotionEventQueue$EventArray;

    iget v2, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentIndex:I

    aget-object v1, v1, v2

    .line 115
    invoke-virtual {v1}, Lcom/android/quickstep/MotionEventQueue$EventArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/android/systemui/shared/system/ChoreographerCompat;->postInputFrame(Landroid/view/Choreographer;Ljava/lang/Runnable;)V

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 120
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v4, v1, Lcom/android/quickstep/MotionEventQueue$EventArray;->lastEventAction:I

    if-ne v4, v3, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/android/quickstep/MotionEventQueue$EventArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/quickstep/MotionEventQueue$EventArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/quickstep/MotionEventQueue$EventArray;->add(Ljava/lang/Object;)Z

    .line 125
    iput v2, v1, Lcom/android/quickstep/MotionEventQueue$EventArray;->lastEventAction:I

    .line 127
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private queueVirtualAction(IF)V
    .locals 8

    .line 193
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/MotionEventQueue;->queueNoPreProcess(Landroid/view/MotionEvent;)V

    .line 194
    return-void
.end method

.method private runFor(Landroid/view/Choreographer;)V
    .locals 9

    .line 139
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mExecutionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/MotionEventQueue;->swapAndGetCurrentArray(Landroid/view/Choreographer;)Lcom/android/quickstep/MotionEventQueue$EventArray;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/android/quickstep/MotionEventQueue$EventArray;->size()I

    move-result v1

    .line 142
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    .line 143
    invoke-virtual {p1, v2}, Lcom/android/quickstep/MotionEventQueue$EventArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    .line 144
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/16 v5, 0xfe

    if-ne v4, v5, :cond_7

    .line 145
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x1fe

    const/4 v6, 0x1

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2fe

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3fe

    if-eq v4, v5, :cond_4

    const/16 v5, 0x4fe

    if-eq v4, v5, :cond_3

    const/16 v5, 0x5fe

    if-eq v4, v5, :cond_2

    const/16 v5, 0x6fe

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7fe

    if-eq v4, v5, :cond_0

    .line 169
    const-string v4, "MotionEventQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid virtual event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/quickstep/TouchConsumer;->onQuickStep(FFJ)V

    .line 167
    goto :goto_1

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v4}, Lcom/android/quickstep/TouchConsumer;->onShowOverviewFromAltTab()V

    .line 163
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v4, v6}, Lcom/android/quickstep/TouchConsumer;->updateTouchTracking(I)V

    .line 164
    goto :goto_1

    .line 159
    :cond_2
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v4}, Lcom/android/quickstep/TouchConsumer;->deferInit()V

    .line 160
    goto :goto_1

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v4}, Lcom/android/quickstep/TouchConsumer;->reset()V

    .line 157
    goto :goto_1

    .line 153
    :cond_4
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v4}, Lcom/android/quickstep/TouchConsumer;->onQuickScrubEnd()V

    .line 154
    goto :goto_1

    .line 150
    :cond_5
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/quickstep/TouchConsumer;->onQuickScrubProgress(F)V

    .line 151
    goto :goto_1

    .line 147
    :cond_6
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v4, v6}, Lcom/android/quickstep/TouchConsumer;->updateTouchTracking(I)V

    .line 148
    goto :goto_1

    .line 172
    :cond_7
    iget-object v4, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v4, v3}, Lcom/android/quickstep/TouchConsumer;->accept(Ljava/lang/Object;)V

    .line 174
    :goto_1
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 176
    :cond_8
    invoke-virtual {p1}, Lcom/android/quickstep/MotionEventQueue$EventArray;->clear()V

    .line 177
    const/4 v1, 0x3

    iput v1, p1, Lcom/android/quickstep/MotionEventQueue$EventArray;->lastEventAction:I

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setInterimChoreographerLocked(Landroid/view/Choreographer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mInterimChoreographer:Landroid/view/Choreographer;

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mMainChoreographer:Landroid/view/Choreographer;

    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentChoreographer:Landroid/view/Choreographer;

    .line 100
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mMainFrameCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentRunnable:Ljava/lang/Runnable;

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mInterimChoreographer:Landroid/view/Choreographer;

    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentChoreographer:Landroid/view/Choreographer;

    .line 103
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mInterimFrameCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method private swapAndGetCurrentArray(Landroid/view/Choreographer;)Lcom/android/quickstep/MotionEventQueue$EventArray;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mArrays:[Lcom/android/quickstep/MotionEventQueue$EventArray;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentChoreographer:Landroid/view/Choreographer;

    if-eq p1, v1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mEmptyArray:Lcom/android/quickstep/MotionEventQueue$EventArray;

    monitor-exit v0

    return-object p1

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mArrays:[Lcom/android/quickstep/MotionEventQueue$EventArray;

    iget v1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentIndex:I

    aget-object p1, p1, v1

    .line 187
    iget v1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentIndex:I

    xor-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentIndex:I

    .line 188
    monitor-exit v0

    return-object p1

    .line 189
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public deferInit()V
    .locals 2

    .line 222
    const/16 v0, 0x5fe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/MotionEventQueue;->queueVirtualAction(IF)V

    .line 223
    return-void
.end method

.method public getConsumer()Lcom/android/quickstep/TouchConsumer;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    return-object v0
.end method

.method public onOverviewShownFromAltTab()V
    .locals 2

    .line 201
    const/16 v0, 0x6fe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/MotionEventQueue;->queueVirtualAction(IF)V

    .line 202
    return-void
.end method

.method public onQuickScrubEnd()V
    .locals 2

    .line 209
    const/16 v0, 0x3fe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/MotionEventQueue;->queueVirtualAction(IF)V

    .line 210
    return-void
.end method

.method public onQuickScrubProgress(F)V
    .locals 1

    .line 205
    const/16 v0, 0x2fe

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/MotionEventQueue;->queueVirtualAction(IF)V

    .line 206
    return-void
.end method

.method public onQuickScrubStart()V
    .locals 2

    .line 197
    const/16 v0, 0x1fe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/MotionEventQueue;->queueVirtualAction(IF)V

    .line 198
    return-void
.end method

.method public onQuickStep(Landroid/view/MotionEvent;)V
    .locals 1

    .line 213
    const/16 v0, 0x7fe

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 214
    invoke-direct {p0, p1}, Lcom/android/quickstep/MotionEventQueue;->queueNoPreProcess(Landroid/view/MotionEvent;)V

    .line 215
    return-void
.end method

.method public queue(Landroid/view/MotionEvent;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mConsumer:Lcom/android/quickstep/TouchConsumer;

    invoke-interface {v0, p1}, Lcom/android/quickstep/TouchConsumer;->preProcessMotionEvent(Landroid/view/MotionEvent;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/quickstep/MotionEventQueue;->queueNoPreProcess(Landroid/view/MotionEvent;)V

    .line 110
    return-void
.end method

.method public reset()V
    .locals 2

    .line 218
    const/16 v0, 0x4fe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/MotionEventQueue;->queueVirtualAction(IF)V

    .line 219
    return-void
.end method

.method public setInterimChoreographer(Landroid/view/Choreographer;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/MotionEventQueue;->mExecutionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/MotionEventQueue;->mArrays:[Lcom/android/quickstep/MotionEventQueue$EventArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/quickstep/MotionEventQueue;->setInterimChoreographerLocked(Landroid/view/Choreographer;)V

    .line 91
    iget-object p1, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/quickstep/MotionEventQueue;->mCurrentRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v2}, Lcom/android/systemui/shared/system/ChoreographerCompat;->postInputFrame(Landroid/view/Choreographer;Ljava/lang/Runnable;)V

    .line 92
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 92
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 93
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
