.class Lcom/android/launcher3/Workspace$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V
    .locals 0

    .line 3282
    iput-object p1, p0, Lcom/android/launcher3/Workspace$20;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$20;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 2

    .line 3285
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$20;->val$updates:Ljava/util/HashSet;

    .line 3286
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3287
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyPromiseState(Z)V

    goto :goto_0

    .line 3288
    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$20;->val$updates:Ljava/util/HashSet;

    .line 3290
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3291
    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 3294
    :cond_1
    :goto_0
    return v1
.end method
