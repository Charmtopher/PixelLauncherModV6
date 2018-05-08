.class public abstract Lcom/google/android/gms/common/internal/u;
.super Ljava/lang/Object;


# static fields
.field public static final Lo:[Ljava/lang/String;


# instance fields
.field private final Iz:Landroid/os/Looper;

.field KS:I

.field KT:J

.field private KU:J

.field private KV:I

.field private KW:J

.field private KX:Lcom/google/android/gms/common/internal/j;

.field private final KY:Lcom/google/android/gms/common/internal/e;

.field private final KZ:Lcom/google/android/gms/common/d;

.field private final La:Ljava/lang/Object;

.field private Lb:Lcom/google/android/gms/common/internal/zzaw;

.field protected Lc:Lcom/google/android/gms/common/internal/A;

.field private Ld:Landroid/os/IInterface;

.field private final Le:Ljava/util/ArrayList;

.field private Lf:Lcom/google/android/gms/common/internal/B;

.field private Lg:I

.field private final Lh:Lcom/google/android/gms/common/internal/w;

.field private final Li:Lcom/google/android/gms/common/internal/x;

.field private final Lj:I

.field private final Lk:Ljava/lang/String;

.field private Ll:Lcom/google/android/gms/common/ConnectionResult;

.field private Lm:Z

.field protected Ln:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/u;->Lo:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/d;ILcom/google/android/gms/common/internal/w;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/u;->La:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/u;->Le:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/u;->Ll:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/u;->Lm:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->mContext:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->Iz:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->KY:Lcom/google/android/gms/common/internal/e;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/d;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->KZ:Lcom/google/android/gms/common/d;

    new-instance p1, Lcom/google/android/gms/common/internal/y;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/y;-><init>(Lcom/google/android/gms/common/internal/u;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/u;->Lj:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/u;->Lh:Lcom/google/android/gms/common/internal/w;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/u;->Li:Lcom/google/android/gms/common/internal/x;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/u;->Lk:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/u;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->Ll:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/u;Lcom/google/android/gms/common/internal/zzaw;)Lcom/google/android/gms/common/internal/zzaw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->Lb:Lcom/google/android/gms/common/internal/zzaw;

    return-object p1
.end method

.method private final a(ILandroid/os/IInterface;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-ne v2, v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->F(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/u;->Ld:Landroid/os/IInterface;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/u;->KU:J

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->Lf:Lcom/google/android/gms/common/internal/B;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    if-eqz p1, :cond_3

    const-string p1, "GmsClient"

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object p2, p2, Lcom/google/android/gms/common/internal/j;->KC:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/j;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->KY:Lcom/google/android/gms/common/internal/e;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object p2, p2, Lcom/google/android/gms/common/internal/j;->KC:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/j;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->Lf:Lcom/google/android/gms/common/internal/B;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/u;->fP()Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/internal/B;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/B;-><init>(Lcom/google/android/gms/common/internal/u;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->Lf:Lcom/google/android/gms/common/internal/B;

    new-instance p1, Lcom/google/android/gms/common/internal/j;

    const-string p2, "com.google.android.gms"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fi()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/common/internal/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->KY:Lcom/google/android/gms/common/internal/e;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object p2, p2, Lcom/google/android/gms/common/internal/j;->KC:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/j;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->Lf:Lcom/google/android/gms/common/internal/B;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/u;->fP()Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/common/internal/f;

    invoke-direct {v3, p2, v1}, Lcom/google/android/gms/common/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/f;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "GmsClient"

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object p2, p2, Lcom/google/android/gms/common/internal/j;->KC:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->KX:Lcom/google/android/gms/common/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/j;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/u;->D(II)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->Lf:Lcom/google/android/gms/common/internal/B;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->KY:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fi()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.google.android.gms"

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->Lf:Lcom/google/android/gms/common/internal/B;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/u;->fP()Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->Lf:Lcom/google/android/gms/common/internal/B;

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/u;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/u;->fQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/u;->Lm:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v3, 0x10

    invoke-virtual {v2, v0, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/u;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/u;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method private final a(IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/u;->a(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/u;IILandroid/os/IInterface;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/u;->a(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/u;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/u;->La:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/u;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/u;->fW()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/u;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/u;->Lm:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/u;->Ll:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/w;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/u;->Lh:Lcom/google/android/gms/common/internal/w;

    return-object p0
.end method

.method private final fP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->Lk:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->Lk:Ljava/lang/String;

    return-object v0
.end method

.method private final fQ()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final fW()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/u;->Lm:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method static synthetic g(Lcom/google/android/gms/common/internal/u;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/u;->Le:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/x;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/u;->Li:Lcom/google/android/gms/common/internal/x;

    return-object p0
.end method


# virtual methods
.method protected final D(II)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/E;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/internal/E;-><init>(Lcom/google/android/gms/common/internal/u;I)V

    const/4 p1, 0x7

    const/4 v3, -0x1

    invoke-virtual {v1, p1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/D;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/D;-><init>(Lcom/google/android/gms/common/internal/u;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v1, p1, p4, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/A;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/A;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u;->Lc:Lcom/google/android/gms/common/internal/A;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/u;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fS()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/zzx;

    iget v2, p0, Lcom/google/android/gms/common/internal/u;->Lj:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/zzx;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/internal/zzx;->LF:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/common/internal/zzx;->LI:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/zzx;->LH:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fp()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p2, v1, Lcom/google/android/gms/common/internal/zzx;->LJ:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzal;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/zzx;->LG:Landroid/os/IBinder;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fR()[Lcom/google/android/gms/common/zzc;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/zzx;->LK:[Lcom/google/android/gms/common/zzc;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->La:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->Lb:Lcom/google/android/gms/common/internal/zzaw;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->Lb:Lcom/google/android/gms/common/internal/zzaw;

    new-instance v0, Lcom/google/android/gms/common/internal/zzk;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/zzk;-><init>(Lcom/google/android/gms/common/internal/u;I)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/common/internal/zzaw;->zza(Lcom/google/android/gms/common/internal/zzau;Lcom/google/android/gms/common/internal/zzx;)V

    goto :goto_1

    :cond_3
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/google/android/gms/common/internal/u;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/u;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->Ln:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->Le:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->Le:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/u;->Le:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/z;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/z;->removeListener()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->Le:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->La:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/u;->Lb:Lcom/google/android/gms/common/internal/zzaw;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/u;->a(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->Ld:Landroid/os/IInterface;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/u;->La:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->Lb:Lcom/google/android/gms/common/internal/zzaw;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "mConnectState="

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string v1, "DISCONNECTING"

    goto :goto_0

    :pswitch_1
    const-string v1, "CONNECTED"

    goto :goto_0

    :pswitch_2
    const-string v1, "LOCAL_CONNECTING"

    goto :goto_0

    :pswitch_3
    const-string v1, "REMOTE_CONNECTING"

    goto :goto_0

    :pswitch_4
    const-string v1, "DISCONNECTED"

    goto :goto_0

    :goto_1
    const-string v1, " mService="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_0

    const-string v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_2
    const-string v1, " mServiceBroker="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v1, "IGmsServiceBroker@"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzaw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/u;->KU:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/16 v2, 0x15

    if-lez v1, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "lastConnectedTime="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v5, p0, Lcom/google/android/gms/common/internal/u;->KU:J

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/google/android/gms/common/internal/u;->KU:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-wide v5, p0, Lcom/google/android/gms/common/internal/u;->KT:J

    cmp-long v1, v5, v3

    if-lez v1, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "lastSuspendedCause="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Lcom/google/android/gms/common/internal/u;->KS:I

    packed-switch v1, :pswitch_data_1

    iget v1, p0, Lcom/google/android/gms/common/internal/u;->KS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_5

    :pswitch_5
    const-string v1, "CAUSE_NETWORK_LOST"

    goto :goto_4

    :pswitch_6
    const-string v1, "CAUSE_SERVICE_DISCONNECTED"

    goto :goto_4

    :goto_5
    const-string v1, " lastSuspendedTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v5, p0, Lcom/google/android/gms/common/internal/u;->KT:J

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/google/android/gms/common/internal/u;->KT:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-wide v5, p0, Lcom/google/android/gms/common/internal/u;->KW:J

    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v1, "lastFailedStatus="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/common/internal/u;->KV:I

    invoke-static {v1}, Lcom/google/android/gms/common/api/o;->aJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, " lastFailedTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide v3, p0, Lcom/google/android/gms/common/internal/u;->KW:J

    new-instance p2, Ljava/util/Date;

    iget-wide v5, p0, Lcom/google/android/gms/common/internal/u;->KW:J

    invoke-direct {p2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final fJ()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fR()[Lcom/google/android/gms/common/zzc;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method public fS()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final fT()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fU()Landroid/os/IInterface;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->fT()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->Ld:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->Ld:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected fV()Ljava/util/Set;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public abstract fi()Ljava/lang/String;
.end method

.method public abstract fj()Ljava/lang/String;
.end method

.method public fp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final fq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final fr()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final fs()Landroid/content/Intent;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ft()Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->La:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->Lb:Lcom/google/android/gms/common/internal/zzaw;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->Lb:Lcom/google/android/gms/common/internal/zzaw;

    invoke-interface {v1}, Lcom/google/android/gms/common/internal/zzaw;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isConnecting()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/common/internal/u;->Lg:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    iput p1, p0, Lcom/google/android/gms/common/internal/u;->KV:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/u;->KW:J

    return-void
.end method
