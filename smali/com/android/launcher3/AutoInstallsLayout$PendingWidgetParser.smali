.class public Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 6

    .line 477
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 484
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "spanX"

    const-string v4, "spanX"

    invoke-static {p1, v4}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "spanY"

    const-string v4, "spanY"

    invoke-static {p1, v4}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 490
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 492
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 493
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_2

    goto :goto_1

    .line 511
    :cond_2
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)J

    move-result-wide v0

    return-wide v0

    .line 494
    :cond_3
    :goto_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 495
    const-string v4, "extra"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 499
    const-string v4, "key"

    invoke-static {p1, v4}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    const-string v5, "value"

    invoke-static {p1, v5}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 501
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 502
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Widget extras must have a key and value"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Widgets can contain only extras"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_6
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)J
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v1, "appWidgetProvider"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object p1, p1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v0, "restored"

    .line 517
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 516
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object p1, p1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v0, "_id"

    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v1}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object p1, p1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v0, "intent"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object p1, p1, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object p2, p2, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {p1, p2, v0}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 526
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 527
    const-wide/16 p1, -0x1

    return-wide p1

    .line 529
    :cond_1
    return-wide p1
.end method
