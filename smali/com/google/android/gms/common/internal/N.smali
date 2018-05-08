.class public abstract Lcom/google/android/gms/common/internal/N;
.super Lcom/google/android/gms/common/internal/u;

# interfaces
.implements Lcom/google/android/gms/common/api/j;
.implements Lcom/google/android/gms/common/internal/d;


# instance fields
.field private final GT:Landroid/accounts/Account;

.field private final zzaOg:Lcom/google/android/gms/common/internal/G;

.field private final zzaoj:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/e;->z(Landroid/content/Context;)Lcom/google/android/gms/common/internal/e;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/b;->fm()Lcom/google/android/gms/common/b;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/api/t;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lcom/google/android/gms/common/api/u;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/N;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V
    .locals 11

    move-object v9, p0

    move-object/from16 v10, p6

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/gms/common/internal/a;

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/internal/a;-><init>(Lcom/google/android/gms/common/api/t;)V

    move-object v6, v3

    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/b;-><init>(Lcom/google/android/gms/common/api/u;)V

    move-object v7, v0

    :goto_1
    iget-object v8, v10, Lcom/google/android/gms/common/internal/G;->IO:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/u;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/d;ILcom/google/android/gms/common/internal/w;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;)V

    iput-object v10, v9, Lcom/google/android/gms/common/internal/N;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v0, v10, Lcom/google/android/gms/common/internal/G;->GT:Landroid/accounts/Account;

    iput-object v0, v9, Lcom/google/android/gms/common/internal/N;->GT:Landroid/accounts/Account;

    iget-object v0, v10, Lcom/google/android/gms/common/internal/G;->Lu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object v0, v9, Lcom/google/android/gms/common/internal/N;->zzaoj:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final fR()[Lcom/google/android/gms/common/zzc;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method protected final fV()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/N;->zzaoj:Ljava/util/Set;

    return-object v0
.end method

.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/N;->GT:Landroid/accounts/Account;

    return-object v0
.end method
