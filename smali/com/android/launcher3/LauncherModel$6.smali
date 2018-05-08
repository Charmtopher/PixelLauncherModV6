.class Lcom/android/launcher3/LauncherModel$6;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$shortcutProvider:Lcom/android/launcher3/util/Provider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/Provider;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$6;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$6;->val$shortcutProvider:Lcom/android/launcher3/util/Provider;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 0

    .line 642
    iget-object p1, p0, Lcom/android/launcher3/LauncherModel$6;->val$shortcutProvider:Lcom/android/launcher3/util/Provider;

    invoke-virtual {p1}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 643
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 644
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object p1, p1, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/LauncherModel$6;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 646
    return-void
.end method
