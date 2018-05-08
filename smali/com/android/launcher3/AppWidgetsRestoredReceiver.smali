.class public Lcom/android/launcher3/AppWidgetsRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static restoreAppWidgetIds(Landroid/content/Context;[I[I)V
    .locals 11

    .line 57
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 66
    const-string p0, "AWRestoredReceiver"

    const-string p1, "Skipping widget ID remap as DB already in use"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    array-length p0, p2

    :goto_0
    if-ge v2, p0, :cond_0

    aget p1, p2, v2

    .line 68
    const-string v1, "AWRestoredReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting widgetId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 74
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    .line 76
    move v10, v2

    :goto_1
    array-length v3, p1

    if-ge v10, v3, :cond_5

    .line 77
    const-string v3, "AWRestoredReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Widget state restore id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, p1, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p2, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    aget v3, p2, v10

    invoke-virtual {v9, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 81
    invoke-static {v3}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const/4 v3, 0x4

    goto :goto_2

    .line 85
    :cond_2
    const/4 v3, 0x2

    .line 88
    :goto_2
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    aget v4, p1, v10

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    .line 89
    new-instance v4, Lcom/android/launcher3/util/ContentWriter;

    new-instance v5, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    const-string v6, "appWidgetId=? and (restored & 1) = 1"

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v4, p0, v5}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    const-string v5, "appWidgetId"

    aget v6, p2, v10

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    const-string v5, "restored"

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    move-result v3

    .line 95
    if-nez v3, :cond_4

    .line 96
    sget-object v4, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "appWidgetId"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "appWidgetId=?"

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 100
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 102
    aget v4, p2, v10

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 106
    goto :goto_3

    .line 105
    :catchall_0
    move-exception p0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0

    .line 76
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 110
    :cond_5
    sget-object p0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/LauncherAppState;

    .line 111
    if-eqz p0, :cond_6

    .line 112
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 114
    :cond_6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 27
    const-string v0, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    const-string v0, "hostId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 29
    const-string v1, "AWRestoredReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Widget ID map received for host:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    const-string v0, "appWidgetOldIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 35
    const-string v0, "appWidgetIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 36
    array-length p2, v4

    array-length v0, v5

    if-ne p2, v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetsRestoredReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v6

    .line 38
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;-><init>(Lcom/android/launcher3/AppWidgetsRestoredReceiver;Landroid/content/Context;[I[ILandroid/content/BroadcastReceiver$PendingResult;)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 46
    return-void

    .line 47
    :cond_1
    const-string p1, "AWRestoredReceiver"

    const-string p2, "Invalid host restored received"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    return-void
.end method
