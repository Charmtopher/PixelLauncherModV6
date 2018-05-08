.class Lcom/android/launcher3/Launcher$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$appWidgetId:I

.field final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$4;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$4;->val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$4;->val$layout:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 702
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget v1, p0, Lcom/android/launcher3/Launcher$4;->val$appWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher$4;->val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$4;->val$layout:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 703
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;J)V

    .line 704
    return-void
.end method
