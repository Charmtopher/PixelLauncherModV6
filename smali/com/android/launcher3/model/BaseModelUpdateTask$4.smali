.class Lcom/android/launcher3/model/BaseModelUpdateTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

.field final synthetic val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$4;->this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$4;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$4;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindWorkspaceComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 138
    return-void
.end method
