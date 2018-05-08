.class Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper$1;
.super Lcom/android/launcher3/util/ViewOnDrawExecutor;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;


# direct methods
.method constructor <init>(Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper$1;->this$0:Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper;

    invoke-direct {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper$1;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/quickstep/ActivityControlHelper$LauncherActivityControllerHelper$1;->runAllTasks()V

    .line 141
    :cond_0
    return-void
.end method
