.class Lcom/android/launcher3/Launcher$7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 1103
    iput-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1107
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1110
    iget-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->access$200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1111
    iget-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherStateManager;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1113
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/launcher3/Launcher;->access$302(Lcom/android/launcher3/Launcher;Z)Z

    return-void

    .line 1114
    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1117
    iget-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/Launcher;->access$302(Lcom/android/launcher3/Launcher;Z)Z

    .line 1119
    :cond_2
    return-void
.end method
