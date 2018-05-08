.class Lcom/google/android/apps/nexuslauncher/qsb/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic AE:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->AE:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->AE:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    .line 58
    return-void
.end method
