.class public final Lcom/google/android/gms/common/api/s;
.super Ljava/lang/Object;


# instance fields
.field public GT:Landroid/accounts/Account;

.field private final IJ:Ljava/util/Set;

.field private final IK:Ljava/util/Set;

.field private IL:I

.field private IM:Landroid/view/View;

.field private IN:Ljava/lang/String;

.field private IO:Ljava/lang/String;

.field private final IP:Ljava/util/Map;

.field private final IQ:Ljava/util/Map;

.field private IR:Lcom/google/android/gms/internal/bS;

.field private IS:I

.field private IT:Lcom/google/android/gms/common/api/u;

.field private IU:Lcom/google/android/gms/common/b;

.field private IV:Lcom/google/android/gms/common/api/f;

.field private final IW:Ljava/util/ArrayList;

.field private final IX:Ljava/util/ArrayList;

.field private IY:Z

.field private Iz:Landroid/os/Looper;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IJ:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IK:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IP:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IQ:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/s;->IS:I

    invoke-static {}, Lcom/google/android/gms/common/b;->fm()Lcom/google/android/gms/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IU:Lcom/google/android/gms/common/b;

    sget-object v0, Lcom/google/android/gms/internal/a;->Hk:Lcom/google/android/gms/common/api/f;

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IV:Lcom/google/android/gms/common/api/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IW:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IX:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/s;->IY:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/s;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->Iz:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/s;->IN:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/s;->IO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/s;
    .locals 2

    const-string v0, "Api must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/s;->IQ:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/s;->IK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/s;->IJ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final fw()Lcom/google/android/gms/common/internal/G;
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/f;->Na:Lcom/google/android/gms/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/s;->IQ:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/a;->Hl:Lcom/google/android/gms/common/api/a;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/s;->IQ:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/a;->Hl:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/f;

    :cond_0
    move-object v9, v0

    new-instance v0, Lcom/google/android/gms/common/internal/G;

    iget-object v2, p0, Lcom/google/android/gms/common/api/s;->GT:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/common/api/s;->IJ:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/gms/common/api/s;->IP:Ljava/util/Map;

    iget v5, p0, Lcom/google/android/gms/common/api/s;->IL:I

    iget-object v6, p0, Lcom/google/android/gms/common/api/s;->IM:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/gms/common/api/s;->IN:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/api/s;->IO:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/common/internal/G;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/f;)V

    return-object v0
.end method

.method public final fx()Lcom/google/android/gms/common/api/r;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/s;->IQ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "must call addApi() to add at least one API"

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/s;->fw()Lcom/google/android/gms/common/internal/G;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v11, v1, Lcom/google/android/gms/common/internal/G;->Lv:Ljava/util/Map;

    new-instance v12, Landroid/support/v4/c/a;

    invoke-direct {v12}, Landroid/support/v4/c/a;-><init>()V

    new-instance v14, Landroid/support/v4/c/a;

    invoke-direct {v14}, Landroid/support/v4/c/a;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/common/api/s;->IQ:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/gms/common/api/a;

    iget-object v4, v0, Lcom/google/android/gms/common/api/s;->IQ:Ljava/util/Map;

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    move v5, v2

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v12, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/google/android/gms/internal/aT;

    invoke-direct {v9, v10, v5}, Lcom/google/android/gms/internal/aT;-><init>(Lcom/google/android/gms/common/api/a;Z)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/google/android/gms/common/api/a;->fn()Lcom/google/android/gms/common/api/f;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/common/api/s;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/common/api/s;->Iz:Landroid/os/Looper;

    move-object v7, v1

    move-object/from16 v16, v9

    move-object v2, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/f;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v5

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/j;->fr()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v2, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

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

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be used with "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/common/api/s;->GT:Landroid/accounts/Account;

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    const-string v4, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v2, v4, v7}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/common/api/s;->IJ:Ljava/util/Set;

    iget-object v4, v0, Lcom/google/android/gms/common/api/s;->IK:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    aput-object v3, v7, v5

    invoke-static {v2, v4, v7}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    :goto_3
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/bw;->a(Ljava/lang/Iterable;Z)I

    move-result v16

    new-instance v2, Lcom/google/android/gms/internal/bw;

    iget-object v5, v0, Lcom/google/android/gms/common/api/s;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v7, v0, Lcom/google/android/gms/common/api/s;->Iz:Landroid/os/Looper;

    iget-object v9, v0, Lcom/google/android/gms/common/api/s;->IU:Lcom/google/android/gms/common/b;

    iget-object v10, v0, Lcom/google/android/gms/common/api/s;->IV:Lcom/google/android/gms/common/api/f;

    iget-object v3, v0, Lcom/google/android/gms/common/api/s;->IW:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/google/android/gms/common/api/s;->IX:Ljava/util/ArrayList;

    iget v11, v0, Lcom/google/android/gms/common/api/s;->IS:I

    move-object v4, v2

    move-object v8, v1

    move v1, v11

    move-object v11, v12

    move-object v12, v3

    move-object v3, v15

    move v15, v1

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/bw;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/f;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    invoke-static {}, Lcom/google/android/gms/common/api/r;->fv()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/r;->fv()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v0, Lcom/google/android/gms/common/api/s;->IS:I

    if-ltz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/common/api/s;->IR:Lcom/google/android/gms/internal/bS;

    invoke-static {v1}, Lcom/google/android/gms/internal/aF;->a(Lcom/google/android/gms/internal/bS;)Lcom/google/android/gms/internal/aF;

    move-result-object v1

    iget v3, v0, Lcom/google/android/gms/common/api/s;->IS:I

    iget-object v0, v0, Lcom/google/android/gms/common/api/s;->IT:Lcom/google/android/gms/common/api/u;

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/aF;->a(ILcom/google/android/gms/common/api/r;Lcom/google/android/gms/common/api/u;)V

    :cond_6
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
