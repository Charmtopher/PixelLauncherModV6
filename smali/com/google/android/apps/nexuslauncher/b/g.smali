.class Lcom/google/android/apps/nexuslauncher/b/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic yB:Lcom/google/android/apps/nexuslauncher/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/b/f;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/g;->yB:Lcom/google/android/apps/nexuslauncher/b/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 90
    const-string p1, "time-zone"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/g;->yB:Lcom/google/android/apps/nexuslauncher/b/f;

    invoke-static {p2, p1}, Lcom/google/android/apps/nexuslauncher/b/f;->a(Lcom/google/android/apps/nexuslauncher/b/f;Ljava/lang/String;)V

    .line 93
    return-void
.end method
