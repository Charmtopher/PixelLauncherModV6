.class public final Lcom/google/android/gms/internal/bw;
.super Lcom/google/android/gms/common/api/r;

# interfaces
.implements Lcom/google/android/gms/internal/bR;


# instance fields
.field private final IS:I

.field private final IU:Lcom/google/android/gms/common/b;

.field private IV:Lcom/google/android/gms/common/api/f;

.field private IY:Z

.field final Iz:Landroid/os/Looper;

.field final SD:Ljava/util/Queue;

.field private final Sr:Ljava/util/concurrent/locks/Lock;

.field private Sy:Ljava/util/Map;

.field TA:Ljava/util/Set;

.field final TB:Lcom/google/android/gms/internal/cs;

.field private final TC:Lcom/google/android/gms/common/internal/d;

.field private final To:Lcom/google/android/gms/common/internal/c;

.field private Tp:Lcom/google/android/gms/internal/bQ;

.field private volatile Tq:Z

.field private Tr:J

.field private Ts:J

.field private final Tt:Lcom/google/android/gms/internal/by;

.field private Tu:Lcom/google/android/gms/internal/bO;

.field final Tv:Ljava/util/Map;

.field Tw:Ljava/util/Set;

.field private final Tx:Lcom/google/android/gms/internal/cb;

.field private final Ty:Ljava/util/ArrayList;

.field private Tz:Ljava/lang/Integer;

.field private final mContext:Landroid/content/Context;

.field private zzaOg:Lcom/google/android/gms/common/internal/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/f;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 5

    move-object v0, p0

    move-object v1, p3

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    const-wide/32 v3, 0x1d4c0

    iput-wide v3, v0, Lcom/google/android/gms/internal/bw;->Tr:J

    const-wide/16 v3, 0x1388

    iput-wide v3, v0, Lcom/google/android/gms/internal/bw;->Ts:J

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/bw;->Tw:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/internal/cb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/cb;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/bw;->Tx:Lcom/google/android/gms/internal/cb;

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/bx;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/bx;-><init>(Lcom/google/android/gms/internal/bw;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->TC:Lcom/google/android/gms/common/internal/d;

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/bw;->IY:Z

    new-instance v2, Lcom/google/android/gms/common/internal/c;

    iget-object v3, v0, Lcom/google/android/gms/internal/bw;->TC:Lcom/google/android/gms/common/internal/d;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/by;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/by;-><init>(Lcom/google/android/gms/internal/bw;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->Tt:Lcom/google/android/gms/internal/by;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->IU:Lcom/google/android/gms/common/b;

    move/from16 v1, p11

    iput v1, v0, Lcom/google/android/gms/internal/bw;->IS:I

    iget v1, v0, Lcom/google/android/gms/internal/bw;->IS:I

    if-ltz v1, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    :cond_0
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Sy:Ljava/util/Map;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->Ty:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/cs;

    iget-object v2, v0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cs;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/t;

    iget-object v3, v0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/api/t;)V

    goto :goto_0

    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/u;

    iget-object v3, v0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/api/u;)V

    goto :goto_1

    :cond_2
    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/internal/bw;->zzaOg:Lcom/google/android/gms/common/internal/G;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/bw;->IV:Lcom/google/android/gms/common/api/f;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Z)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/j;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/common/api/j;->fr()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v3

    :cond_4
    const/4 p0, 0x3

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->hz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->hA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->hz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private final bd(I)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_a

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/j;

    invoke-interface {v3}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    move v1, v5

    :cond_3
    invoke-interface {v3}, Lcom/google/android/gms/common/api/j;->fr()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v1, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->IY:Z

    if-eqz v0, :cond_5

    new-instance v12, Lcom/google/android/gms/internal/aZ;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/bw;->IU:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/bw;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v7, p0, Lcom/google/android/gms/internal/bw;->Sy:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/bw;->IV:Lcom/google/android/gms/common/api/f;

    iget-object v9, p0, Lcom/google/android/gms/internal/bw;->Ty:Ljava/util/ArrayList;

    const/4 v11, 0x1

    move-object v0, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/aZ;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bw;Z)V

    iput-object v12, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/bw;->IU:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/bw;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v7, p0, Lcom/google/android/gms/internal/bw;->Sy:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/bw;->IV:Lcom/google/android/gms/common/api/f;

    iget-object v9, p0, Lcom/google/android/gms/internal/bw;->Ty:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/aV;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/aV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    return-void

    :pswitch_1
    if-eqz v1, :cond_7

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->IY:Z

    if-eqz v0, :cond_9

    if-nez v2, :cond_9

    new-instance v12, Lcom/google/android/gms/internal/aZ;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/bw;->IU:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/bw;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v7, p0, Lcom/google/android/gms/internal/bw;->Sy:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/bw;->IV:Lcom/google/android/gms/common/api/f;

    iget-object v9, p0, Lcom/google/android/gms/internal/bw;->Ty:Ljava/util/ArrayList;

    const/4 v11, 0x0

    move-object v0, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/aZ;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bw;Z)V

    iput-object v12, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    return-void

    :cond_9
    new-instance v12, Lcom/google/android/gms/internal/bB;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/internal/bw;->IU:Lcom/google/android/gms/common/b;

    iget-object v6, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/bw;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v8, p0, Lcom/google/android/gms/internal/bw;->Sy:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/internal/bw;->IV:Lcom/google/android/gms/common/api/f;

    iget-object v10, p0, Lcom/google/android/gms/internal/bw;->Ty:Ljava/util/ArrayList;

    move-object v0, v12

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/bB;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bR;)V

    iput-object v12, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/bw;->be(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/bw;->be(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Mode was already set to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static be(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :pswitch_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :pswitch_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final hz()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/common/internal/c;->Kl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bQ;->connect()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->Iw:Lcom/google/android/gms/common/api/a;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->Iw:Lcom/google/android/gms/common/api/a;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "the API"

    :goto_1
    const/16 v2, 0x41

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required for this call."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bQ;->a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/api/t;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/cp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->Iw:Lcom/google/android/gms/common/api/a;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->Iw:Lcom/google/android/gms/common/api/a;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "the API"

    :goto_1
    const/16 v2, 0x41

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required for this call."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aK;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/aP;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->Je:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aK;->d(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bQ;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/common/api/u;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/c;->Kk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GmsClientEvents"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x39

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unregisterConnectionFailedListener(): listener "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/cp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    if-nez v0, :cond_0

    const-string p1, "GoogleApiClientImpl"

    const-string v0, "Attempted to remove pending transform when no transforms are registered."

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "GoogleApiClientImpl"

    const-string v0, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->hB()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bQ;->ho()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final connect()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/bw;->IS:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bw;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    const/16 v1, 0x21

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal sign-in mode: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bw;->bd(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->hz()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bQ;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tx:Lcom/google/android/gms/internal/cb;

    iget-object v1, v0, Lcom/google/android/gms/internal/cb;->UA:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/bX;

    iput-object v3, v2, Lcom/google/android/gms/internal/bX;->Lr:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/cb;->UA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aK;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aK;->a(Lcom/google/android/gms/internal/cv;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aK;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->hA()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->fI()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    const-string v1, " mUnconsumedApiCalls.size()="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->UT:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bQ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->IU:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/b;->d(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->hA()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v2, "onConnectionFailure must only be called on the Handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/gms/common/internal/c;->Kk:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v0, Lcom/google/android/gms/common/internal/c;->Km:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_2
    :goto_1
    if-ge v3, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/google/android/gms/common/api/u;

    iget-boolean v7, v0, Lcom/google/android/gms/common/internal/c;->Kl:Z

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/google/android/gms/common/internal/c;->Km:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v7, v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, v0, Lcom/google/android/gms/common/internal/c;->Kk:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6, p1}, Lcom/google/android/gms/common/api/u;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/c;->fI()V

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public final g(IZ)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->Tu:Lcom/google/android/gms/internal/bO;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/bz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/bz;-><init>(Lcom/google/android/gms/internal/bw;)V

    invoke-static {p2, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bP;)Lcom/google/android/gms/internal/bO;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/bw;->Tu:Lcom/google/android/gms/internal/bO;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->Tt:Lcom/google/android/gms/internal/by;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->Tt:Lcom/google/android/gms/internal/by;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/by;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/bw;->Tr:J

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/android/gms/internal/by;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->Tt:Lcom/google/android/gms/internal/by;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->Tt:Lcom/google/android/gms/internal/by;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/by;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/bw;->Ts:J

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/android/gms/internal/by;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    iget-object p2, p2, Lcom/google/android/gms/internal/cs;->UT:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/internal/cs;->US:[Lcom/google/android/gms/internal/aP;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/internal/aP;

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    sget-object v6, Lcom/google/android/gms/internal/cs;->UR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/aP;->e(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v4, p2, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v2, v4, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    const-string v4, "onUnintentionalDisconnection must only be called on the Handler thread"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v2, p2, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p2, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v1, p2, Lcom/google/android/gms/common/internal/c;->Kn:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/google/android/gms/common/internal/c;->Ki:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p2, Lcom/google/android/gms/common/internal/c;->Km:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_4
    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/common/api/t;

    iget-boolean v8, p2, Lcom/google/android/gms/common/internal/c;->Kl:Z

    if-eqz v8, :cond_5

    iget-object v8, p2, Lcom/google/android/gms/common/internal/c;->Km:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v4, :cond_5

    iget-object v8, p2, Lcom/google/android/gms/common/internal/c;->Ki:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7, p1}, Lcom/google/android/gms/common/api/t;->onConnectionSuspended(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/common/internal/c;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v3, p2, Lcom/google/android/gms/common/internal/c;->Kn:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/c;->fI()V

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->hz()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 9

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aK;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bw;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->To:Lcom/google/android/gms/common/internal/c;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v2, "onConnectionSuccess must only be called on the Handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/c;->Kn:Z

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->E(Z)V

    iget-object v2, v0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, v0, Lcom/google/android/gms/common/internal/c;->Kn:Z

    iget-object v2, v0, Lcom/google/android/gms/common/internal/c;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->E(Z)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/gms/common/internal/c;->Ki:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v0, Lcom/google/android/gms/common/internal/c;->Km:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_3
    :goto_3
    if-ge v6, v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/common/api/t;

    iget-boolean v8, v0, Lcom/google/android/gms/common/internal/c;->Kl:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/common/internal/c;->Kh:Lcom/google/android/gms/common/internal/d;

    invoke-interface {v8}, Lcom/google/android/gms/common/internal/d;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/common/internal/c;->Km:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v4, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/common/internal/c;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v7, p1}, Lcom/google/android/gms/common/api/t;->onConnected(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/google/android/gms/common/internal/c;->Kj:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v3, v0, Lcom/google/android/gms/common/internal/c;->Kn:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Iz:Landroid/os/Looper;

    return-object v0
.end method

.method final hA()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/bw;->Tq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tt:Lcom/google/android/gms/internal/by;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/by;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tt:Lcom/google/android/gms/internal/by;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/by;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tu:Lcom/google/android/gms/internal/bO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tu:Lcom/google/android/gms/internal/bO;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bO;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->Tu:Lcom/google/android/gms/internal/bO;

    :cond_1
    return v1
.end method

.method final hB()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->TA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final hC()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/internal/bw;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->Tp:Lcom/google/android/gms/internal/bQ;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bQ;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
