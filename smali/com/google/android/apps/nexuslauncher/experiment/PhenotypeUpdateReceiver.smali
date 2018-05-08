.class public Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static e(Landroid/content/Context;)V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/common/api/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/s;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/google/android/gms/phenotype/c;->Hl:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/s;->fx()Lcom/google/android/gms/common/api/r;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/r;->connect()V

    .line 29
    new-instance v0, Lcom/google/android/apps/nexuslauncher/experiment/b;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/experiment/b;-><init>(Lcom/google/android/gms/common/api/r;)V

    .line 31
    const-string p0, ""

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v0, v1}, Lcom/google/android/gms/phenotype/j;->a(Ljava/lang/String;Lcom/google/android/gms/phenotype/k;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;->e(Landroid/content/Context;)V

    .line 24
    return-void
.end method
