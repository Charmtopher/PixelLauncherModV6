.class Lcom/google/android/apps/nexuslauncher/reflection/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/t;


# instance fields
.field final synthetic DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/g;->DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 229
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/g;->DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->a(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/g;->DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/f/-$$Lambda$qseUgxIcGdNFaDEOOS7BbjoFTps;

    invoke-direct {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/-$$Lambda$qseUgxIcGdNFaDEOOS7BbjoFTps;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .line 222
    return-void
.end method
