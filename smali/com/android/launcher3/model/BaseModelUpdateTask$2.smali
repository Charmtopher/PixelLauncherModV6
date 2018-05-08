.class Lcom/android/launcher3/model/BaseModelUpdateTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

.field final synthetic val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;->this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;->val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;->val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 115
    return-void
.end method
