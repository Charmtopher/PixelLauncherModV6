.class public final Lcom/google/android/gms/internal/aZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bQ;


# instance fields
.field private final IC:Lcom/google/android/gms/internal/bF;

.field private final Iz:Landroid/os/Looper;

.field private final KZ:Lcom/google/android/gms/common/d;

.field final SA:Ljava/util/concurrent/locks/Condition;

.field private final SB:Z

.field final SC:Z

.field private final SD:Ljava/util/Queue;

.field SE:Z

.field SF:Ljava/util/Map;

.field SG:Ljava/util/Map;

.field private SH:Lcom/google/android/gms/internal/bb;

.field SI:Lcom/google/android/gms/common/ConnectionResult;

.field final Sr:Ljava/util/concurrent/locks/Lock;

.field final Sw:Ljava/util/Map;

.field final Sx:Ljava/util/Map;

.field private final Sy:Ljava/util/Map;

.field final Sz:Lcom/google/android/gms/internal/bw;

.field private final zzaOg:Lcom/google/android/gms/common/internal/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bw;Z)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sx:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->SD:Ljava/util/Queue;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v9, p3

    iput-object v9, v0, Lcom/google/android/gms/internal/aZ;->Iz:Landroid/os/Looper;

    invoke-interface/range {p2 .. p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->SA:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->KZ:Lcom/google/android/gms/common/d;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sz:Lcom/google/android/gms/internal/bw;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sy:Ljava/util/Map;

    move-object/from16 v10, p6

    iput-object v10, v0, Lcom/google/android/gms/internal/aZ;->zzaOg:Lcom/google/android/gms/common/internal/G;

    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/google/android/gms/internal/aZ;->SB:Z

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v3

    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v1, p9

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/aT;

    iget-object v5, v4, Lcom/google/android/gms/internal/aT;->Iw:Lcom/google/android/gms/common/api/a;

    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/a;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/common/api/j;

    invoke-interface {v7}, Lcom/google/android/gms/common/api/j;->fq()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sy:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v17, v2

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    move/from16 v17, v2

    move/from16 v16, v3

    :goto_3
    const/16 v18, 0x1

    goto :goto_4

    :cond_3
    move/from16 v18, v1

    move/from16 v16, v3

    const/16 v17, 0x0

    :goto_4
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/aT;

    new-instance v5, Lcom/google/android/gms/internal/aY;

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v9

    move-object v13, v5

    move-object v5, v7

    move-object v15, v7

    move-object v7, v10

    move-object v9, v8

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/aY;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/internal/aT;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/f;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/h;

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/aZ;->Sx:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/h;

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move/from16 v3, v16

    move/from16 v2, v17

    move/from16 v1, v18

    move-object/from16 v9, p3

    goto/16 :goto_2

    :cond_5
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v0, Lcom/google/android/gms/internal/aZ;->SC:Z

    invoke-static {}, Lcom/google/android/gms/internal/bF;->hE()Lcom/google/android/gms/internal/bF;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/aZ;->IC:Lcom/google/android/gms/internal/bF;

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aY;

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SF:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SF:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aZ;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move v4, v1

    move v5, v4

    move-object v1, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/aY;

    iget-object v7, v6, Lcom/google/android/gms/common/api/p;->Iw:Lcom/google/android/gms/common/api/a;

    iget-object v6, v6, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    iget-object v8, p0, Lcom/google/android/gms/internal/aZ;->SF:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/android/gms/internal/aZ;->Sy:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/aZ;->KZ:Lcom/google/android/gms/common/d;

    iget v8, v6, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/d;->aF(I)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    iget v7, v6, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    iget-boolean v7, p0, Lcom/google/android/gms/internal/aZ;->SB:Z

    if-eqz v7, :cond_3

    if-eqz v1, :cond_2

    if-le v5, v3, :cond_0

    :cond_2
    move v5, v3

    move-object v1, v6

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-le v4, v3, :cond_0

    :cond_4
    move v4, v3

    move-object v2, v6

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    if-le v4, v5, :cond_6

    return-object v1

    :cond_6
    return-object v2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aZ;Lcom/google/android/gms/internal/aY;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sy:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/p;->Iw:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/aY;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/j;->fq()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/aZ;->KZ:Lcom/google/android/gms/common/d;

    iget p1, p2, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/d;->aF(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/aZ;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->zzaOg:Lcom/google/android/gms/common/internal/G;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/aZ;->Sz:Lcom/google/android/gms/internal/bw;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->Tw:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/G;->IJ:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/G;->Lv:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/aZ;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/H;

    iget-object v3, v3, Lcom/google/android/gms/common/internal/H;->zzaoj:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/aZ;->Sz:Lcom/google/android/gms/internal/bw;

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/aZ;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aK;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aZ;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/aZ;->Sz:Lcom/google/android/gms/internal/bw;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bw;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/aK;)Z
    .locals 7

    iget-object v0, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aZ;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/gms/internal/aZ;->IC:Lcom/google/android/gms/internal/bF;

    iget-object v4, p0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aY;

    iget-object v0, v0, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    iget-object v4, p0, Lcom/google/android/gms/internal/aZ;->Sz:Lcom/google/android/gms/internal/bw;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, v3, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bH;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v5

    goto :goto_2

    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/internal/bH;->Ug:Lcom/google/android/gms/internal/zzbdn;

    if-nez v6, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/bH;->Ug:Lcom/google/android/gms/internal/zzbdn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    :goto_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lcom/google/android/gms/internal/bF;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->fs()Landroid/content/Intent;

    move-result-object v0

    const/high16 v6, 0x8000000

    invoke-static {v3, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v2, v5, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/aK;->d(Lcom/google/android/gms/common/api/Status;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aZ;->SB:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aZ;->d(Lcom/google/android/gms/internal/aK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aZ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SD:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sz:Lcom/google/android/gms/internal/bw;

    iget-object v0, v0, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/aP;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aY;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/p;->a(ILcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aZ;->SB:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aZ;->d(Lcom/google/android/gms/internal/aK;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->Sz:Lcom/google/android/gms/internal/bw;

    iget-object v1, v1, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/aP;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aY;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/p;->a(ILcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final connect()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aZ;->SE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/aZ;->SE:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SF:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SH:Lcom/google/android/gms/internal/bb;

    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SI:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->IC:Lcom/google/android/gms/internal/bF;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bF;->hf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->IC:Lcom/google/android/gms/internal/bF;

    iget-object v2, p0, Lcom/google/android/gms/internal/aZ;->Sw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/aH;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/aH;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/p;

    iget-object v5, v1, Lcom/google/android/gms/internal/bF;->Sw:Ljava/util/Map;

    iget-object v4, v4, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/bH;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/bH;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, v3, Lcom/google/android/gms/internal/aH;->Rz:Lcom/google/android/gms/tasks/c;

    :goto_1
    iget-object v0, v0, Lcom/google/android/gms/tasks/c;->adX:Lcom/google/android/gms/tasks/k;

    goto :goto_2

    :cond_3
    iget-object v1, v3, Lcom/google/android/gms/internal/aH;->Rz:Lcom/google/android/gms/tasks/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/c;->y(Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/aH;->Rz:Lcom/google/android/gms/tasks/c;

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/cE;

    iget-object v2, p0, Lcom/google/android/gms/internal/aZ;->Iz:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cE;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/ba;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ba;-><init>(Lcom/google/android/gms/internal/aZ;B)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/b;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/aZ;->SE:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SF:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SG:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->SH:Lcom/google/android/gms/internal/bb;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SH:Lcom/google/android/gms/internal/bb;

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/aZ;->SI:Lcom/google/android/gms/common/ConnectionResult;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->SD:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->SD:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aK;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aK;->a(Lcom/google/android/gms/internal/cv;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aK;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SA:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ho()V
    .locals 0

    return-void
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SF:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aZ;->SI:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aZ;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
