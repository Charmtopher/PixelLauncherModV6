.class Lcom/android/launcher3/Workspace$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    .line 1980
    iput-object p1, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$7;->val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$7;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1982
    iget-object v0, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/android/launcher3/Workspace$7;->val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$7;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {v0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 1985
    :cond_0
    return-void
.end method
