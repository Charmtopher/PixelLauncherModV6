.class Lcom/google/android/apps/nexuslauncher/qsb/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic AE:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->AE:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/g;->getResultCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->AE:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    const-string p2, "com.google.android.googlequicksearchbox.TEXT_ASSIST"

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->j(Ljava/lang/String;)V

    return-void

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->AE:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->xb:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->wX:Lcom/google/android/apps/nexuslauncher/qsb/i;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/i;->dJ()V

    .line 279
    return-void
.end method
