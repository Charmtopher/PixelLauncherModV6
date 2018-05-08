.class Lcom/android/launcher3/LauncherModel$7;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$packageUser:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$7;->val$packageUser:Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 1

    .line 654
    iget-object p3, p2, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->val$packageUser:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p3, p1, v0}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 655
    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherModel$7;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    .line 656
    return-void
.end method
