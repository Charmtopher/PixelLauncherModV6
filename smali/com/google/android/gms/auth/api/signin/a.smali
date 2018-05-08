.class public final Lcom/google/android/gms/auth/api/signin/a;
.super Ljava/lang/Object;


# instance fields
.field private GT:Landroid/accounts/Account;

.field private GU:Z

.field private GV:Z

.field private GW:Z

.field private GX:Ljava/lang/String;

.field private GY:Ljava/lang/String;

.field private Hb:Ljava/util/Map;

.field zzaoj:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->zzaoj:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->Hb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final fc()Lcom/google/android/gms/auth/api/signin/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->zzaoj:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->GO:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final fd()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 10

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/a;->GU:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->GT:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->zzaoj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/a;->fc()Lcom/google/android/gms/auth/api/signin/a;

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/a;->zzaoj:Ljava/util/Set;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/a;->GT:Landroid/accounts/Account;

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/a;->GU:Z

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/a;->GV:Z

    iget-boolean v6, p0, Lcom/google/android/gms/auth/api/signin/a;->GW:Z

    iget-object v7, p0, Lcom/google/android/gms/auth/api/signin/a;->GX:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/signin/a;->GY:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/auth/api/signin/a;->Hb:Ljava/util/Map;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
