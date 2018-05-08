.class final Lcom/google/android/gms/internal/aV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bQ;


# instance fields
.field private final Iz:Landroid/os/Looper;

.field private final Sh:Lcom/google/android/gms/internal/bw;

.field final Si:Lcom/google/android/gms/internal/bB;

.field final Sj:Lcom/google/android/gms/internal/bB;

.field private final Sk:Ljava/util/Map;

.field private final Sl:Ljava/util/Set;

.field private final Sm:Lcom/google/android/gms/common/api/j;

.field Sn:Landroid/os/Bundle;

.field So:Lcom/google/android/gms/common/ConnectionResult;

.field Sp:Lcom/google/android/gms/common/ConnectionResult;

.field Sq:Z

.field final Sr:Ljava/util/concurrent/locks/Lock;

.field private Ss:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/aV;->Sl:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, v0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/aV;->Sq:Z

    iput v1, v0, Lcom/google/android/gms/internal/aV;->Ss:I

    move-object/from16 v14, p1

    iput-object v14, v0, Lcom/google/android/gms/internal/aV;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/internal/aV;->Sh:Lcom/google/android/gms/internal/bw;

    move-object/from16 v15, p3

    iput-object v15, v0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/google/android/gms/internal/aV;->Iz:Landroid/os/Looper;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/google/android/gms/internal/aV;->Sm:Lcom/google/android/gms/common/api/j;

    new-instance v12, Lcom/google/android/gms/internal/bB;

    iget-object v4, v0, Lcom/google/android/gms/internal/aV;->Sh:Lcom/google/android/gms/internal/bw;

    new-instance v11, Lcom/google/android/gms/internal/aW;

    invoke-direct {v11, v0, v1}, Lcom/google/android/gms/internal/aW;-><init>(Lcom/google/android/gms/internal/aV;B)V

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v2, v12

    move-object v3, v14

    move-object v5, v15

    move-object v6, v13

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p14

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object v1, v12

    move-object/from16 v12, p12

    move-object/from16 v13, v17

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/bB;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bR;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    new-instance v1, Lcom/google/android/gms/internal/bB;

    iget-object v4, v0, Lcom/google/android/gms/internal/aV;->Sh:Lcom/google/android/gms/internal/bw;

    new-instance v13, Lcom/google/android/gms/internal/aX;

    const/4 v2, 0x0

    invoke-direct {v13, v0, v2}, Lcom/google/android/gms/internal/aX;-><init>(Lcom/google/android/gms/internal/aV;B)V

    move-object v2, v1

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p13

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/bB;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bR;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    new-instance v1, Landroid/support/v4/c/a;

    invoke-direct {v1}, Landroid/support/v4/c/a;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/h;

    iget-object v4, v0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/h;

    iget-object v4, v0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/aV;->Sk:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/aV;
    .locals 16

    move-object/from16 v0, p7

    new-instance v6, Landroid/support/v4/c/a;

    invoke-direct {v6}, Landroid/support/v4/c/a;-><init>()V

    new-instance v7, Landroid/support/v4/c/a;

    invoke-direct {v7}, Landroid/support/v4/c/a;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/j;

    invoke-interface {v3}, Lcom/google/android/gms/common/api/j;->fr()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v10, v3

    :cond_0
    invoke-interface {v3}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/h;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/h;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    new-instance v13, Landroid/support/v4/c/a;

    invoke-direct {v13}, Landroid/support/v4/c/a;-><init>()V

    new-instance v14, Landroid/support/v4/c/a;

    invoke-direct {v14}, Landroid/support/v4/c/a;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p9

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/aT;

    iget-object v4, v3, Lcom/google/android/gms/internal/aT;->Iw:Lcom/google/android/gms/common/api/a;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v4, v3, Lcom/google/android/gms/internal/aT;->Iw:Lcom/google/android/gms/common/api/a;

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v15, Lcom/google/android/gms/internal/aV;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/aV;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v15
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aV;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->d(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->d(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hq()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/aV;->Ss:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hp()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aV;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bB;->disconnect()V

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/aV;->Ss:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->Sn:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bw;->g(Landroid/os/Bundle;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hp()V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/aV;->Ss:I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->d(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aV;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    iget v1, v1, Lcom/google/android/gms/internal/bB;->TK:I

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    iget v2, v2, Lcom/google/android/gms/internal/bB;->TK:I

    if-ge v1, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aV;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aV;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bw;->g(IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method private final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/aV;->Ss:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "CompositeGAC"

    const-string v0, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bw;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hp()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/aV;->Ss:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(Lcom/google/android/gms/internal/aK;)Z
    .locals 2

    iget-object p1, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/bB;

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static d(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final hp()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final hq()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final hr()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sm:Lcom/google/android/gms/common/api/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->Sh:Lcom/google/android/gms/internal/bw;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->Sm:Lcom/google/android/gms/common/api/j;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/j;->fs()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aV;->c(Lcom/google/android/gms/internal/aK;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hr()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aK;->d(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bB;->a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bB;->a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aV;->c(Lcom/google/android/gms/internal/aK;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hr()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aK;->d(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bB;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bB;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final connect()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/aV;->Ss:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aV;->Sq:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aV;->Sp:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/aV;->So:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/aV;->Ss:I

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->disconnect()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hp()V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/bB;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bB;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final ho()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->ho()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->ho()V

    return-void
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Si:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sj:Lcom/google/android/gms/internal/bB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bB;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/aV;->hq()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/aV;->Ss:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
