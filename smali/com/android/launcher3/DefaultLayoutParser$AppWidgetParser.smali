.class public Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;
.super Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method protected final verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)J
    .locals 7

    .line 282
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 283
    :catch_0
    move-exception v3

    .line 284
    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 284
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 286
    new-instance v4, Landroid/content/ComponentName;

    aget-object v3, v3, v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_1
    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 292
    nop

    .line 295
    move-object p1, v4

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 296
    nop

    .line 298
    :try_start_2
    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 300
    invoke-virtual {v2, v3, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const-string p2, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to bind app widget id "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 303
    return-wide v0

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v4, "appWidgetId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v4, "appWidgetProvider"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v4, "_id"

    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v5}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-interface {v2, v4, v5}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 311
    :try_start_3
    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 312
    return-wide v4

    .line 323
    :catch_1
    move-exception p1

    goto :goto_1

    .line 316
    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 319
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    const-string p1, "appWidgetId"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 325
    :cond_2
    goto :goto_2

    .line 323
    :catch_2
    move-exception p1

    move-wide v4, v0

    .line 324
    :goto_1
    const-string p2, "DefaultLayoutParser"

    const-string v0, "Problem allocating appWidgetId"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    :goto_2
    return-wide v4

    .line 289
    :catch_3
    move-exception p1

    .line 290
    const-string p1, "DefaultLayoutParser"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find widget provider: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-wide v0
.end method
