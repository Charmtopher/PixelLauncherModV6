.class Lcom/google/android/apps/nexuslauncher/b;
.super Lcom/android/launcher3/model/ModelPreload;
.source "SourceFile"


# instance fields
.field private final wN:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelPreload;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b;->wN:Landroid/content/BroadcastReceiver$PendingResult;

    .line 38
    return-void
.end method


# virtual methods
.method public final onComplete(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->wN:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    .line 43
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/b;->wN:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 44
    return-void
.end method
