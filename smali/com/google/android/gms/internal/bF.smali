.class public final Lcom/google/android/gms/internal/bF;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final Ja:Ljava/lang/Object;

.field public static final TP:Lcom/google/android/gms/common/api/Status;

.field private static final TQ:Lcom/google/android/gms/common/api/Status;

.field private static TS:Lcom/google/android/gms/internal/bF;


# instance fields
.field private final IU:Lcom/google/android/gms/common/b;

.field final Sw:Ljava/util/Map;

.field private TR:J

.field private TT:I

.field public final TU:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final TV:Ljava/util/concurrent/atomic/AtomicInteger;

.field TW:Lcom/google/android/gms/internal/bf;

.field final TX:Ljava/util/Set;

.field private final TY:Ljava/util/Set;

.field private Tr:J

.field private Ts:J

.field final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/bF;->TP:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/bF;->TQ:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bF;->Ja:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/internal/bF;->Ts:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/bF;->Tr:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/internal/bF;->TR:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bF;->TT:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bF;->TU:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bF;->TV:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bF;->TW:Lcom/google/android/gms/internal/bf;

    new-instance v0, Lcom/google/android/gms/common/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bF;->TX:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bF;->TY:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/bF;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/bF;->IU:Lcom/google/android/gms/common/b;

    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static D(Landroid/content/Context;)Lcom/google/android/gms/internal/bF;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/bF;->Ja:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/bF;->TS:Lcom/google/android/gms/internal/bF;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bF;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/b;->fm()Lcom/google/android/gms/common/b;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/internal/bF;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/b;)V

    sput-object v2, Lcom/google/android/gms/internal/bF;->TS:Lcom/google/android/gms/internal/bF;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/bF;->TS:Lcom/google/android/gms/internal/bF;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bF;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/bF;->TT:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bF;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bF;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/bF;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bF;->Ts:J

    return-wide v0
.end method

.method private final c(Lcom/google/android/gms/common/api/p;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    iget-object v1, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bH;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/bH;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bH;-><init>(Lcom/google/android/gms/internal/bF;Lcom/google/android/gms/common/api/p;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/bH;->fp()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->TY:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/bH;->connect()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/bF;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bF;->Tr:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/bF;)Lcom/google/android/gms/internal/bf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bF;->TW:Lcom/google/android/gms/internal/bf;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/bF;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bF;->TX:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/bF;)Lcom/google/android/gms/common/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bF;->IU:Lcom/google/android/gms/common/b;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/bF;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bF;->TR:J

    return-wide v0
.end method

.method public static hE()Lcom/google/android/gms/internal/bF;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/bF;->Ja:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/bF;->TS:Lcom/google/android/gms/internal/bF;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/bF;->TS:Lcom/google/android/gms/internal/bF;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final hF()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->TY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aE;

    iget-object v2, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bH;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bH;->hK()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->TY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method static synthetic hG()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bF;->TQ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic hH()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bF;->Ja:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/bF;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/bF;->TT:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/bF;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/bF;->c(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/p;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final c(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->IU:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/bF;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    return p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiManager"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bH;

    iget-object v0, p1, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v0, v0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/bH;->Ue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/bH;->Uc:Lcom/google/android/gms/internal/bc;

    iget-object v1, v0, Lcom/google/android/gms/internal/bc;->SK:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/bc;->SL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bH;->hO()V

    goto/16 :goto_8

    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/j;->disconnect()V

    goto/16 :goto_8

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bH;

    iget-object v0, p1, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v0, v0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/bH;->Tq:Z

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bH;->hN()V

    iget-object v0, p1, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v0, v0, Lcom/google/android/gms/internal/bF;->IU:Lcom/google/android/gms/common/b;

    iget-object v1, p1, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v1, v1, Lcom/google/android/gms/internal/bF;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->t(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x8

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bH;->f(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bF;->hF()V

    goto/16 :goto_8

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bH;

    iget-object v0, p1, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v0, v0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/bH;->Tq:Z

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bH;->connect()V

    goto/16 :goto_8

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/p;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bF;->c(Lcom/google/android/gms/common/api/p;)V

    goto/16 :goto_8

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/internal/aI;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/internal/aI;->hg()Lcom/google/android/gms/internal/aI;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/bG;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bG;-><init>(Lcom/google/android/gms/internal/bF;)V

    sget-object v5, Lcom/google/android/gms/internal/aI;->RC:Lcom/google/android/gms/internal/aI;

    monitor-enter v5

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/aI;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/internal/aI;->hg()Lcom/google/android/gms/internal/aI;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/internal/aI;->RE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v0, v5, :cond_4

    move v3, v4

    :cond_4
    if-eqz v3, :cond_5

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v3, p1, Lcom/google/android/gms/internal/aI;->RE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_6

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/aI;->RD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_5
    move p1, v4

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p1, p1, Lcom/google/android/gms/internal/aI;->RD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    :goto_3
    if-nez p1, :cond_10

    iput-wide v1, p0, Lcom/google/android/gms/internal/bF;->TR:J

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/bH;

    iget v5, v3, Lcom/google/android/gms/internal/bH;->Uf:I

    if-ne v5, v0, :cond_7

    move-object v1, v3

    :cond_8
    if-eqz v1, :cond_9

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/gms/internal/bF;->IU:Lcom/google/android/gms/common/b;

    iget v5, p1, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/b;->aH(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->If:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x45

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bH;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_8

    :cond_9
    const-string p1, "GoogleApiManager"

    const/16 v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/cc;

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/cc;->UD:Lcom/google/android/gms/common/api/p;

    iget-object v1, v1, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bH;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/cc;->UD:Lcom/google/android/gms/common/api/p;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bF;->c(Lcom/google/android/gms/common/api/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/cc;->UD:Lcom/google/android/gms/common/api/p;

    iget-object v1, v1, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bH;

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/bH;->fp()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/bF;->TV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/internal/cc;->UC:I

    if-eq v1, v2, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/cc;->UB:Lcom/google/android/gms/internal/ay;

    sget-object v1, Lcom/google/android/gms/internal/bF;->TP:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ay;->b(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bH;->hK()V

    goto/16 :goto_8

    :cond_b
    iget-object p1, p1, Lcom/google/android/gms/internal/cc;->UB:Lcom/google/android/gms/internal/ay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bH;->a(Lcom/google/android/gms/internal/ay;)V

    goto/16 :goto_8

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bH;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bH;->hL()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bH;->connect()V

    goto :goto_4

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/aH;

    iget-object v0, p1, Lcom/google/android/gms/internal/aH;->zzaMh:Landroid/support/v4/c/a;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aE;

    iget-object v2, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/bH;

    if-nez v2, :cond_c

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aH;->a(Lcom/google/android/gms/internal/aE;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/bH;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->Ib:Lcom/google/android/gms/common/ConnectionResult;

    :goto_6
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/aH;->a(Lcom/google/android/gms/internal/aE;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/bH;->hM()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bH;->hM()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    goto :goto_6

    :cond_e
    iget-object v1, v2, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v1, v1, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v1, v2, Lcom/google/android/gms/internal/bH;->Ud:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    const-wide/16 v1, 0x2710

    :cond_f
    iput-wide v1, p0, Lcom/google/android/gms/internal/bF;->TR:J

    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aE;

    iget-object v2, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v5, p0, Lcom/google/android/gms/internal/bF;->TR:J

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    :cond_10
    :goto_8
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final hf()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
