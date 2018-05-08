.class Landroid/support/a/e;
.super Landroid/support/a/d;
.source "SourceFile"


# instance fields
.field aK:J

.field private final mHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/a/b;)V
    .locals 2

    .line 225
    invoke-direct {p0, p1}, Landroid/support/a/d;-><init>(Landroid/support/a/b;)V

    .line 222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/a/e;->aK:J

    .line 226
    new-instance p1, Landroid/support/a/f;

    invoke-direct {p1, p0}, Landroid/support/a/f;-><init>(Landroid/support/a/e;)V

    iput-object p1, p0, Landroid/support/a/e;->mRunnable:Ljava/lang/Runnable;

    .line 233
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/support/a/e;->mHandler:Landroid/os/Handler;

    .line 234
    return-void
.end method


# virtual methods
.method final s()V
    .locals 4

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/a/e;->aK:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    sub-long/2addr v2, v0

    .line 239
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Landroid/support/a/e;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/a/e;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void
.end method
