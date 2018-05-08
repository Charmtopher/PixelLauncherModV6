.class public Lcom/google/android/libraries/gsa/launcherclient/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public aeJ:Z

.field private final context:Landroid/content/Context;

.field private final flags:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->context:Landroid/content/Context;

    .line 19
    iput p2, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->flags:I

    .line 20
    return-void
.end method


# virtual methods
.method public final il()V
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->aeJ:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->aeJ:Z

    .line 33
    :cond_0
    return-void
.end method

.method public final im()Z
    .locals 3

    .line 43
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->aeJ:Z

    if-nez v0, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->context:Landroid/content/Context;

    .line 46
    invoke-static {v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->J(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->flags:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->aeJ:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "LauncherClient"

    const-string v2, "Unable to connect to overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->aeJ:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 26
    return-void
.end method
