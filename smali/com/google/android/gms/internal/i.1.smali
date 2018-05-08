.class public final Lcom/google/android/gms/internal/i;
.super Lcom/google/android/gms/common/internal/N;

# interfaces
.implements Lcom/google/android/gms/internal/e;


# instance fields
.field private Lx:Ljava/lang/Integer;

.field private final MZ:Landroid/os/Bundle;

.field private final Nh:Z

.field private final zzaOg:Lcom/google/android/gms/common/internal/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V
    .locals 10

    iget-object v0, p3, Lcom/google/android/gms/common/internal/G;->Lw:Lcom/google/android/gms/internal/f;

    iget-object v1, p3, Lcom/google/android/gms/common/internal/G;->Lx:Ljava/lang/Integer;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    iget-object v3, p3, Lcom/google/android/gms/common/internal/G;->GT:Landroid/accounts/Account;

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/f;->Nb:Z

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/f;->GU:Z

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    iget-object v2, v0, Lcom/google/android/gms/internal/f;->GX:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/f;->GW:Z

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.hostedDomain"

    iget-object v2, v0, Lcom/google/android/gms/internal/f;->GY:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/f;->Nc:Z

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/f;->Nd:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    iget-object v2, v0, Lcom/google/android/gms/internal/f;->Nd:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/f;->Ne:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    iget-object v0, v0, Lcom/google/android/gms/internal/f;->Ne:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/G;Landroid/os/Bundle;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/G;Landroid/os/Bundle;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/N;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/i;->Nh:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/i;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iput-object p5, p0, Lcom/google/android/gms/internal/i;->MZ:Landroid/os/Bundle;

    iget-object p1, p4, Lcom/google/android/gms/common/internal/G;->Lx:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/i;->Lx:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/adh;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/adh;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/adi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/adi;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/zzal;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/i;->fU()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/adh;

    iget-object v1, p0, Lcom/google/android/gms/internal/i;->Lx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/adh;->zza(Lcom/google/android/gms/common/internal/zzal;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p1, "SignInClientImpl"

    const-string p2, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/adf;)V
    .locals 4

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/i;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/G;->GT:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/internal/G;->GT:Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    const-string v2, "<<default account>>"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/c;->r(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/c;

    move-result-object v1

    const-string v2, "defaultGoogleSignInAccount"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/c;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/c;->u(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/internal/zzbp;

    iget-object v3, p0, Lcom/google/android/gms/internal/i;->Lx:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/internal/zzbp;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/i;->fU()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/adh;

    new-instance v1, Lcom/google/android/gms/internal/adk;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/adk;-><init>(Lcom/google/android/gms/common/internal/zzbp;)V

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/adh;->zza(Lcom/google/android/gms/internal/adk;Lcom/google/android/gms/internal/adf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/adm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/adm;-><init>()V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/adf;->zzb(Lcom/google/android/gms/internal/adm;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p1, "SignInClientImpl"

    const-string v1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {p1, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final connect()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/C;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/C;-><init>(Lcom/google/android/gms/common/internal/u;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/i;->a(Lcom/google/android/gms/common/internal/A;)V

    return-void
.end method

.method protected final fS()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/i;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/G;->IN:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/u;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/i;->MZ:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/i;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iget-object v2, v2, Lcom/google/android/gms/common/internal/G;->IN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/i;->MZ:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final fi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected final fj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final fp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/i;->Nh:Z

    return v0
.end method

.method public final gB()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/i;->fU()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/adh;

    iget-object v1, p0, Lcom/google/android/gms/internal/i;->Lx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/adh;->zzcX(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
