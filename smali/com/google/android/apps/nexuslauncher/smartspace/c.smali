.class Lcom/google/android/apps/nexuslauncher/smartspace/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic Fo:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/c;->Fo:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/c;->Fo:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;)V

    .line 90
    return-void
.end method
