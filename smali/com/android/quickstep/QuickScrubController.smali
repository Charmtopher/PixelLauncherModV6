.class public Lcom/android/quickstep/QuickScrubController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# static fields
.field private static final AUTO_ADVANCE_DELAY:J = 0x1f4L

.field private static final ENABLE_AUTO_ADVANCE:Z = true

.field private static final QUICKSCRUB_END_SNAP_DURATION_PER_PAGE:I = 0x3c

.field private static final QUICKSCRUB_SNAP_DURATION_PER_PAGE:I = 0x145

.field public static final QUICK_SCRUB_START_DURATION:I = 0xd2

.field private static final QUICK_SCRUB_THRESHOLDS:[F


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseActivity;

.field private final mAutoAdvanceAlarm:Lcom/android/launcher3/Alarm;

.field private mFinishedTransitionToQuickScrub:Z

.field private mInQuickScrub:Z

.field private mQuickScrubSection:I

.field private final mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private mStartedFromHome:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/quickstep/QuickScrubController;->QUICK_SCRUB_THRESHOLDS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3eb33333    # 0.35f
        0x3f266666    # 0.65f
        0x3f733333    # 0.95f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 64
    iput-object p2, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 66
    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mAutoAdvanceAlarm:Lcom/android/launcher3/Alarm;

    .line 67
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mAutoAdvanceAlarm:Lcom/android/launcher3/Alarm;

    iput-object p0, p1, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 69
    return-void
.end method

.method private goToPageWithHaptic(I)V
    .locals 2

    .line 148
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/QuickScrubController;->goToPageWithHaptic(IIZ)V

    .line 149
    return-void
.end method

.method private goToPageWithHaptic(IIZ)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 153
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 154
    move v2, v1

    goto :goto_0

    .line 153
    :cond_0
    nop

    .line 154
    :goto_0
    if-eqz v2, :cond_2

    .line 155
    if-ltz p2, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    iget-object p2, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 156
    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result p2

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x145

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->snapToPage(II)Z

    .line 160
    :cond_2
    if-nez v2, :cond_3

    if-eqz p3, :cond_4

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, v1, v1}, Lcom/android/quickstep/views/RecentsView;->performHapticFeedback(II)Z

    .line 164
    :cond_4
    return-void
.end method

.method public static synthetic lambda$onQuickScrubEnd$0(Lcom/android/quickstep/QuickScrubController;I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(Z)V

    return-void

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->onBackPressed()V

    .line 95
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result p1

    .line 169
    iget v0, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    sget-object v1, Lcom/android/quickstep/QuickScrubController;->QUICK_SCRUB_THRESHOLDS:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 170
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 171
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickScrubController;->goToPageWithHaptic(I)V

    goto :goto_0

    .line 172
    :cond_0
    iget v0, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 173
    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/android/quickstep/QuickScrubController;->goToPageWithHaptic(I)V

    .line 176
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mAutoAdvanceAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 178
    return-void
.end method

.method public onFinishedTransitionToQuickScrub()V
    .locals 1

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/QuickScrubController;->mFinishedTransitionToQuickScrub:Z

    .line 138
    return-void
.end method

.method public onQuickScrubEnd()V
    .locals 5

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/QuickScrubController;->mInQuickScrub:Z

    .line 84
    iget-object v1, p0, Lcom/android/quickstep/QuickScrubController;->mAutoAdvanceAlarm:Lcom/android/launcher3/Alarm;

    iput-boolean v0, v1, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 86
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    .line 87
    new-instance v1, Lcom/android/quickstep/-$$Lambda$QuickScrubController$MCE3lk0Hm8D8rqt4AkxkBIb9G5A;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/-$$Lambda$QuickScrubController$MCE3lk0Hm8D8rqt4AkxkBIb9G5A;-><init>(Lcom/android/quickstep/QuickScrubController;I)V

    .line 96
    iget-object v2, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPageNearestToCenterOfScreen()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 98
    iget-object v3, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3, v0, v2}, Lcom/android/quickstep/views/RecentsView;->snapToPage(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setNextPageSwitchRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 106
    iget-boolean v4, p0, Lcom/android/quickstep/QuickScrubController;->mStartedFromHome:Z

    if-eqz v4, :cond_1

    .line 107
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0xd

    .line 105
    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;I)V

    .line 108
    return-void
.end method

.method public onQuickScrubProgress(F)V
    .locals 6

    .line 111
    nop

    .line 112
    sget-object v0, Lcom/android/quickstep/QuickScrubController;->QUICK_SCRUB_THRESHOLDS:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget v5, v0, v3

    .line 113
    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget p1, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    if-eq v4, p1, :cond_6

    .line 119
    iget p1, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    sget-object v0, Lcom/android/quickstep/QuickScrubController;->QUICK_SCRUB_THRESHOLDS:[F

    array-length v0, v0

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    if-nez p1, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    move p1, v2

    goto :goto_2

    .line 119
    :cond_2
    :goto_1
    nop

    .line 121
    const/4 p1, 0x1

    :goto_2
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    add-int/2addr v0, v4

    iget v1, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    sub-int/2addr v0, v1

    .line 122
    iget-boolean v1, p0, Lcom/android/quickstep/QuickScrubController;->mFinishedTransitionToQuickScrub:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 123
    invoke-direct {p0, v0}, Lcom/android/quickstep/QuickScrubController;->goToPageWithHaptic(I)V

    .line 126
    :cond_3
    sget-object p1, Lcom/android/quickstep/QuickScrubController;->QUICK_SCRUB_THRESHOLDS:[F

    array-length p1, p1

    if-eq v4, p1, :cond_5

    if-nez v4, :cond_4

    goto :goto_3

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mAutoAdvanceAlarm:Lcom/android/launcher3/Alarm;

    iput-boolean v2, p1, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    goto :goto_4

    .line 127
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mAutoAdvanceAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 132
    :goto_4
    iput v4, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    .line 134
    :cond_6
    return-void
.end method

.method public onQuickScrubStart(Z)V
    .locals 2

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/QuickScrubController;->mInQuickScrub:Z

    .line 73
    iput-boolean p1, p0, Lcom/android/quickstep/QuickScrubController;->mStartedFromHome:Z

    .line 74
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/quickstep/QuickScrubController;->mQuickScrubSection:I

    .line 75
    iput-boolean p1, p0, Lcom/android/quickstep/QuickScrubController;->mFinishedTransitionToQuickScrub:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/quickstep/QuickScrubController;->snapToNextTaskIfAvailable()V

    .line 78
    iget-object p1, p0, Lcom/android/quickstep/QuickScrubController;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/launcher3/logging/UserEventDispatcher;->mActionDurationMillis:J

    .line 79
    return-void
.end method

.method public snapToNextTaskIfAvailable()V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/android/quickstep/QuickScrubController;->mInQuickScrub:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 142
    iget-boolean v0, p0, Lcom/android/quickstep/QuickScrubController;->mStartedFromHome:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/QuickScrubController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    add-int/2addr v0, v1

    .line 143
    :goto_0
    const/16 v2, 0xd2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/quickstep/QuickScrubController;->goToPageWithHaptic(IIZ)V

    .line 145
    :cond_1
    return-void
.end method
