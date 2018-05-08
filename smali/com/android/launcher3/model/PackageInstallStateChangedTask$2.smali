.class Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

.field final synthetic val$removed:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/ArrayList;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;->this$0:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;->val$removed:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;->val$removed:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppInfosRemoved(Ljava/util/ArrayList;)V

    .line 101
    return-void
.end method
