.class Lcom/google/android/apps/nexuslauncher/qsb/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic AR:Lcom/google/android/apps/nexuslauncher/qsb/k;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/m;->AR:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/m;->AR:Lcom/google/android/apps/nexuslauncher/qsb/k;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/m;->AR:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/qsb/k;->b(Lcom/google/android/apps/nexuslauncher/qsb/k;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "pixel_2017_qsb_hint_text"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Lcom/google/android/apps/nexuslauncher/qsb/k;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/m;->AR:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->c(Lcom/google/android/apps/nexuslauncher/qsb/k;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    :cond_0
    return-void
.end method
