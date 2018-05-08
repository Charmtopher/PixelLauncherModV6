.class public Lcom/google/android/apps/nexuslauncher/reflection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/c;


# instance fields
.field private final Ba:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/a;->b(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a;->Ba:J

    .line 37
    return-void
.end method


# virtual methods
.method protected final b(Landroid/content/Context;I)J
    .locals 8

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.nexuslauncher.reflection.ACTION_BOOT_CYCLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    const/high16 v1, 0x20000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/util/MutableLong;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Landroid/util/MutableLong;-><init>(J)V

    .line 55
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 59
    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-direct {v5, p0, v2, v4}, Lcom/google/android/apps/nexuslauncher/reflection/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/a;Landroid/util/MutableLong;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v6, Landroid/os/Handler;

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    invoke-virtual {v1, p2, v5, v6}, Landroid/app/PendingIntent;->send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 69
    const-wide/16 v5, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 70
    iget-wide v4, v2, Landroid/util/MutableLong;->value:J
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    .line 71
    :catch_0
    move-exception v1

    .line 79
    :cond_0
    const-string v1, "time"

    iget-wide v4, v2, Landroid/util/MutableLong;->value:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x8000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 84
    const-string v0, "alarm"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p1, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 88
    iget-wide p1, v2, Landroid/util/MutableLong;->value:J

    return-wide p1
.end method

.method public final dT()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a;->Ba:J

    return-wide v0
.end method
