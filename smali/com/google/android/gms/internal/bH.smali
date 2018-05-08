.class public final Lcom/google/android/gms/internal/bH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/api/u;
.implements Lcom/google/android/gms/internal/aU;


# instance fields
.field private final Iy:Lcom/google/android/gms/internal/aE;

.field final Su:Lcom/google/android/gms/common/api/j;

.field synthetic TZ:Lcom/google/android/gms/internal/bF;

.field Tq:Z

.field private final Ua:Ljava/util/Queue;

.field private final Ub:Lcom/google/android/gms/common/api/g;

.field final Uc:Lcom/google/android/gms/internal/bc;

.field final Ud:Ljava/util/Set;

.field final Ue:Ljava/util/Map;

.field final Uf:I

.field final Ug:Lcom/google/android/gms/internal/zzbdn;

.field private Uh:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bF;Lcom/google/android/gms/common/api/p;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->Ua:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->Ud:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->Ue:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->Uh:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/p;->a(Landroid/os/Looper;Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/api/j;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    instance-of v1, v1, Lcom/google/android/gms/common/internal/s;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->Ub:Lcom/google/android/gms/common/api/g;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    iput-object v1, p0, Lcom/google/android/gms/internal/bH;->Ub:Lcom/google/android/gms/common/api/g;

    :goto_0
    iget-object v1, p2, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    iput-object v1, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    new-instance v1, Lcom/google/android/gms/internal/bc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/bc;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bH;->Uc:Lcom/google/android/gms/internal/bc;

    iget v1, p2, Lcom/google/android/gms/common/api/p;->fp:I

    iput v1, p0, Lcom/google/android/gms/internal/bH;->Uf:I

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/bF;->b(Lcom/google/android/gms/internal/bF;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/p;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzbdn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/bH;->Ug:Lcom/google/android/gms/internal/zzbdn;

    return-void

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->Ug:Lcom/google/android/gms/internal/zzbdn;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ay;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Uc:Lcom/google/android/gms/internal/bc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->fp()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ay;->a(Lcom/google/android/gms/internal/bc;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ay;->a(Lcom/google/android/gms/internal/bH;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bH;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/j;->disconnect()V

    return-void
.end method

.method private final i(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ud:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aH;

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/aH;->a(Lcom/google/android/gms/internal/aE;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->Ud:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {p3}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bH;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {p2}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/bK;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/bK;-><init>(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ay;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bH;->b(Lcom/google/android/gms/internal/ay;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hO()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ua:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->Uh:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->Uh:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->Uh:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bH;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->connect()V

    return-void
.end method

.method public final connect()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->fq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->i(Lcom/google/android/gms/internal/bF;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->g(Lcom/google/android/gms/internal/bF;)Lcom/google/android/gms/common/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v2}, Lcom/google/android/gms/internal/bF;->b(Lcom/google/android/gms/internal/bF;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->t(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->i(Lcom/google/android/gms/internal/bF;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->i(Lcom/google/android/gms/internal/bF;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bH;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/bL;

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    iget-object v3, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/bL;-><init>(Lcom/google/android/gms/internal/bF;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/internal/aE;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Ug:Lcom/google/android/gms/internal/zzbdn;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {v2}, Lcom/google/android/gms/internal/e;->disconnect()V

    :cond_2
    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaQF:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/c;->r(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/c;

    move-result-object v2

    const-string v3, "defaultGoogleSignInAccount"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/api/signin/internal/c;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/api/signin/internal/c;->v(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->fb()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    :goto_0
    iput-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaoj:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/internal/G;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/google/android/gms/internal/zzbdn;->zzaoj:Ljava/util/Set;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/gms/internal/f;->Na:Lcom/google/android/gms/internal/f;

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/common/internal/G;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/f;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOg:Lcom/google/android/gms/common/internal/G;

    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOg:Lcom/google/android/gms/common/internal/G;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/internal/G;->Lx:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaMd:Lcom/google/android/gms/common/api/f;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbdn;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbdn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v6, v6, Lcom/google/android/gms/common/internal/G;->Lw:Lcom/google/android/gms/internal/f;

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/f;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/e;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbdn;->zzaQG:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {v1}, Lcom/google/android/gms/internal/e;->connect()V

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/internal/A;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ua:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ay;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ay;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->Ua:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final fp()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->fp()Z

    move-result v0

    return v0
.end method

.method final hI()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hL()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->Ib:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->i(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/tasks/c;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/c;-><init>()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bH;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->disconnect()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ua:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ua:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ay;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->b(Lcom/google/android/gms/internal/ay;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hO()V

    return-void
.end method

.method final hJ()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hL()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bH;->Tq:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Uc:Lcom/google/android/gms/internal/bc;

    sget-object v2, Lcom/google/android/gms/internal/cs;->UR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/bc;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v2}, Lcom/google/android/gms/internal/bF;->c(Lcom/google/android/gms/internal/bF;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    const/16 v3, 0xb

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v2}, Lcom/google/android/gms/internal/bF;->d(Lcom/google/android/gms/internal/bF;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;I)I

    return-void
.end method

.method public final hK()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/internal/bF;->TP:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bH;->f(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Uc:Lcom/google/android/gms/internal/bc;

    sget-object v1, Lcom/google/android/gms/internal/bF;->TP:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/bc;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bZ;

    new-instance v2, Lcom/google/android/gms/internal/aC;

    new-instance v3, Lcom/google/android/gms/tasks/c;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/c;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/aC;-><init>(Lcom/google/android/gms/internal/bZ;Lcom/google/android/gms/tasks/c;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/bH;->a(Lcom/google/android/gms/internal/ay;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->i(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->disconnect()V

    return-void
.end method

.method public final hL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->Uh:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final hM()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Uh:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method final hN()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bH;->Tq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bH;->Tq:Z

    :cond_0
    return-void
.end method

.method final hO()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v2}, Lcom/google/android/gms/internal/bF;->h(Lcom/google/android/gms/internal/bF;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Su:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hI()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {p1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/bI;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bI;-><init>(Lcom/google/android/gms/internal/bH;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ug:Lcom/google/android/gms/internal/zzbdn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ug:Lcom/google/android/gms/internal/zzbdn;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbdn;->zzaOL:Lcom/google/android/gms/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->disconnect()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hL()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bH;->i(Lcom/google/android/gms/common/ConnectionResult;)V

    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/bF;->hG()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bH;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->Ua:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/bH;->Uh:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/bF;->hH()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->e(Lcom/google/android/gms/internal/bF;)Lcom/google/android/gms/internal/bf;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->f(Lcom/google/android/gms/internal/bF;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->e(Lcom/google/android/gms/internal/bF;)Lcom/google/android/gms/internal/bf;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/bH;->Uf:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/bf;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    iget v1, p0, Lcom/google/android/gms/internal/bH;->Uf:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/bF;->c(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_6

    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bH;->Tq:Z

    :cond_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/bH;->Tq:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {p1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v1}, Lcom/google/android/gms/internal/bF;->c(Lcom/google/android/gms/internal/bF;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->Iy:Lcom/google/android/gms/internal/aE;

    iget-object v1, v1, Lcom/google/android/gms/internal/aE;->Iw:Lcom/google/android/gms/common/api/a;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available on this device."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bH;->f(Lcom/google/android/gms/common/api/Status;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {v0}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bH;->hJ()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bH;->TZ:Lcom/google/android/gms/internal/bF;

    invoke-static {p1}, Lcom/google/android/gms/internal/bF;->a(Lcom/google/android/gms/internal/bF;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/bJ;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bJ;-><init>(Lcom/google/android/gms/internal/bH;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
