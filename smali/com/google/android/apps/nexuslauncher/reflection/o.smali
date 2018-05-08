.class Lcom/google/android/apps/nexuslauncher/reflection/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/l;


# instance fields
.field final synthetic BO:Lcom/google/android/gms/common/api/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/r;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/o;->BO:Lcom/google/android/gms/common/api/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dV()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/o;->BO:Lcom/google/android/gms/common/api/r;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/r;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/o;->BO:Lcom/google/android/gms/common/api/r;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/r;->disconnect()V

    .line 61
    :cond_0
    return-void
.end method
