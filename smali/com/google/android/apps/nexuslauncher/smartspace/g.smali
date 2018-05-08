.class Lcom/google/android/apps/nexuslauncher/smartspace/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->a(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->a(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->aC(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->FO:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->a(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->ag(Landroid/view/View;)V

    .line 79
    :cond_0
    return-void
.end method
