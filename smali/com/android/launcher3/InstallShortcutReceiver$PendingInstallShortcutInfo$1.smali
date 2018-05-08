.class Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

.field final synthetic val$app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic val$si:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->this$0:Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$si:Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$si:Lcom/android/launcher3/ShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->this$0:Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v2, v2, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$si:Lcom/android/launcher3/ShortcutInfo;

    return-object v0
.end method
