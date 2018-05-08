.class public Lcom/android/launcher3/Alarm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field public mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 68
    iget-boolean v1, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    if-eqz v1, :cond_1

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 70
    iget-wide v3, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    return-void

    .line 76
    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-interface {v0, p0}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 82
    :cond_1
    return-void
.end method

.method public final setAlarm(J)V
    .locals 5

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 46
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 47
    iget-wide v3, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    .line 48
    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    .line 51
    iget-boolean p1, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    cmp-long p1, v3, p1

    if-lez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 55
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iput-boolean v2, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 59
    :cond_1
    return-void
.end method
