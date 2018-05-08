.class Lcom/android/launcher3/Launcher$9;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field final synthetic val$widgetInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$9;->val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$9;->val$widgetInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1587
    iget-object p1, p0, Lcom/android/launcher3/Launcher$9;->val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget-object v0, p0, Lcom/android/launcher3/Launcher$9;->val$widgetInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 p1, 0x0

    return-object p1
.end method
